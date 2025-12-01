/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

const BASE_URL = "https://www.gov.br/pt-br";

Cypress.on("uncaught:exception", () => false);

Given("que eu acesse o site do Gov.br", () => {
    cy.visit(BASE_URL);
});

When("eu clicar no botão {string}", (botao) => {
    cy.contains("a", botao, { timeout: 10000 })
        .scrollIntoView()
        .click({ force: true });
});

Then("devo visualizar o texto {string}", (texto) => {
    cy.contains(texto, { timeout: 10000 }).should("be.visible");
});