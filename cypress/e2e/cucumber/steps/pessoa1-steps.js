/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

const url = "https://www.gov.br/pt-br";

Cypress.on("uncaught:exception", () => false);

Given("que eu acesse o site do Gov.br", () => {
  cy.visit(url);
});

When("eu abrir a seção {string}", (secao) => {
  cy.contains(secao).click({ force: true });
});

When("selecionar {string}", (submenu) => {
  cy.contains(submenu).click({ force: true });
});

Then("devo visualizar o texto {string}", (texto) => {
  cy.contains(texto, { timeout: 10000 }).should("exist");
});