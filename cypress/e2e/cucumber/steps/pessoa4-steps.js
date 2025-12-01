/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Cypress.on("uncaught:exception", () => false);

Given("que eu acesse a página Energia, Minerais e Combustíveis", () => {
    cy.visit("https://www.gov.br/pt-br/categorias/energia-minerais-e-combustiveis");
});

When("eu selecionar {string}", (subcategoria) => {
    cy.contains("a", subcategoria, { timeout: 10000 })
        .scrollIntoView()
        .click({ force: true });
});

When("eu escolher {string}", (pagina) => {
    cy.contains("a", pagina, { timeout: 20000 })
        .scrollIntoView()
        .click({ force: true });
});

Then("devo visualizar o texto {string}", (texto) => {
    cy.get("body", { timeout: 10000 }).should("contain.text", texto);
});