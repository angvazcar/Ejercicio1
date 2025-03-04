Feature: Plan de pruebas Ejercicio1 diseño e idiomas
Background:
  * Given the login page

  Scenario: El checkbox aparece en la página, como se esperaba en el diseño

    When the user reviews the format
    Then the policy check has the expected format
    And is located in the login page as it was defined in the design
    And contains a link to the policy data

  Scenario: El checkbox cambia con la selección del idioma

    When the user changes the page language
    Then the checkbox description is updated according to the language selected