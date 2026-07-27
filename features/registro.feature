Feature: Registro de usuarios en Canva

  Scenario: Registro exitoso con datos válidos
    Given que el usuario se encuentra en la página de registro de Canva
    When ingresa un nombre válido
    And ingres un correo electrónico no registrado
    And ingresa una contraseña válida
    And hace clic en el botón "Registrarse"
    Then el sistema crea la cuenta correctamente
    And el usuario es redirigido a la página principal de Canva

  Scenario: Registro fallido con correo electrónico ya existente
    Given que el usuario se encuentra en la página de registro de Canva
    When ingresa un nombre válido
    And ingresa un correo electrónico ya registrado
    And ingresa una contraseña válida
    And hace clic en el botón "Registrarse"
    Then el sistema muestra un mensaje indicando que el correo ya está registrado
    And la cuenta no es creada

  Scenario: Registro fallido con campos vacíos
    Given que el usuario se encuentra en la página de registro de Canva
    When deja vacíos los campos obligatorios
    And hace clic en el botón "Registrarse"
    Then el sistema muestra mensajes de validación indicando que los campos son obligatorios
    And la cuenta no es creada