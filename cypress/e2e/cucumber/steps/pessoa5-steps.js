/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Cypress.on("uncaught:exception", () => false);
Cypress.config("defaultCommandTimeout", 20000);

Given("que eu acesse a página inicial do Gov.br", () => {
    cy.visit("https://www.gov.br/pt-br");
    cy.title().should((titulo) => {
        expect(titulo.toLowerCase()).to.include("gov.br");
    });
});

When("eu selecionar {string}", (menu) => {
    cy.contains("a", menu, { matchCase: false, timeout: 15000 })
        .scrollIntoView()
        .click({ force: true });
});

When("eu escolher {string}", (servico) => {
    cy.contains("a", servico, { matchCase: false, timeout: 15000 })
        .scrollIntoView()
        .click({ force: true });
});

Then("devo visualizar o texto {string}", (resultado) => {
    cy.contains(resultado, { timeout: 15000 }).should("be.visible");
});