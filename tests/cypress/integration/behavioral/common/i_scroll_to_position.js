import { Then } from "cypress-cucumber-preprocessor/steps";

Then(`I scroll to position {string}`, (position) => {
  cy.scrollTo(position);
});
