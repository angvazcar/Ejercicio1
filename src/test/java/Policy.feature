Feature: Plan de pruebas Ejercicio1 politica de privacidad

  Background:
    * url "url/login/page"
      Given el usuario esta en la pagina de login url
    * request {"username": "#(username)", "password": "#(password)", "checkbox":"#(checkbox)", "message": "#(message)"}

    Scenario Outline: Login con diferentes combinaciones de password, username y politica de privacidad

      And the user introduces a "<username>"
      And introduces a password "<password>"
      And "<checkbox>" the policy
      When the user clicks on the login button
      Then  the system displays "<message>"
Examples :
  | username  | password  | checkbox | message                                        |
  | test      | Adr23!    | yes      | "Successfully logged"                          |
  | test      | Adr23!    | no       | "You must check the policy"                    |
  | test      | incorrect | yes      | "Wrong password"                               |
  | incorrect | Adr23!    | yes      | "Wrong username"                               |
  | test      | incorrect | no       | "Wrong password and policy check not selected" |
  | incorrect | Adr23!    | no       | "Wrong username and policy check not selected" |

  Scenario : persistencia del checkbox de política de privacidad

    And the user has already logged in
    When the user closes the session and reopens the login page
    Then the policy checkbox is not checked by default
