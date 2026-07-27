Feature: Búsqueda de plantillas en Canva

  Scenario: Búsqueda exitosa con resultados
    Given que el usuario se encuentra en la página principal de Canva
    And ha iniciado sesión en su cuenta
    When escribe "Presentación" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then el sistema muestra una lista de plantillas relacionadas con "Presentación"
    And los resultados son visibles para el usuario

  Scenario: Búsqueda sin resultados
    Given que el usuario se encuentra en la página principal de Canva
    When escribe "xyz123plantillaunica" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then el sistema informa que no se encontraron resultados
    And sugiere intentar con otro término de búsqueda

  Scenario: Búsqueda con filtros aplicados
    Given que el usuario se encuentra en la página principal de Canva
    And ha iniciado sesión en su cuenta
    When busca "Currículum"
    And aplica el filtro "Gratis"
    Then el sistema muestra únicamente plantillas gratuitas de currículum
    And los resultados cumplen con el filtro seleccionado