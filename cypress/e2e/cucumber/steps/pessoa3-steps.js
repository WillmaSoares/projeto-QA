/// <reference types="cypress" />
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Cypress.on("uncaught:exception", () => false);

Given("que eu acesse a página Finanças, Impostos e Gestão Pública", () => {
    cy.visit(
        "https://www.gov.br/pt-br/categorias/financas-impostos-e-gestao-publica"
    );
});

When("eu selecionar {string}", (subcategoria) => {
    cy.contains(subcategoria, { timeout: 10000 })
        .scrollIntoView()
        .click({ force: true });
});

When("eu escolher {string}", (perfil) => {
    cy.contains(perfil, { timeout: 10000 })
        .scrollIntoView()
        .click({ force: true });
});

Then("devo visualizar o texto {string}", (texto) => {
    cy.contains(texto, { timeout: 10000 }).should("be.visible");
});

Then("devo visualizar o serviço {string}", (servico) => {
    cy.contains("a.titulo", servico, { timeout: 10000 }).should("be.visible");
});

