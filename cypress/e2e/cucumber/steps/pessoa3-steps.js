/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Cypress.on("uncaught:exception", () => false);
Cypress.config("defaultCommandTimeout", 20000);

Given("que eu acesse a página inicial do Gov.br", () => {
    cy.visit("https://www.gov.br/pt-br");
    cy.title().should("eq", "GOV.BR");
});

When("eu selecionar {string}", (menu) => {
    cy.contains(new RegExp(menu, "i"), { timeout: 15000 })
        .scrollIntoView()
        .click({ force: true });
});

When("eu escolher {string}", (servico) => {
    cy.contains(new RegExp(servico, "i"), { timeout: 15000 })
        .scrollIntoView()
        .click({ force: true });
});

Then("devo visualizar o texto {string}", (resultado) => {
    cy.contains(new RegExp(resultado, "i"), { timeout: 15000 }).should("be.visible");
});