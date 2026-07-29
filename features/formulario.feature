Feature: Registro de usuario en Canva

  Scenario Outline: Registro de usuario con diferentes datos
    Given que el usuario se encuentra en la página de registro de Canva
    When selecciona la opción "Usar mi correo"
    And ingresa el correo "<correo>"
    And hace clic en el botón "Continuar"
    Then el sistema muestra "<resultado>"

    Examples:
      | correo                  | resultado                                              |
      |                         | un mensaje indicando que el correo es obligatorio      |
      | usuariocorreo.com       | un mensaje indicando que el correo no es válido        |
      | usuario@email.com       | el sistema continúa con el proceso de registro         |
      