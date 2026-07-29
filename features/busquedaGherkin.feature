 
 Feature: Búsqueda de plantilla en canva 
 
 Scenario Outline: Búsqueda de plantillas con diferentes criterios
    Given que el usuario se encuentra en la página principal de Canva
    When escribe "<busqueda>" en la barra de búsqueda
    And hace clic en el botón de búsqueda
    Then el sistema muestra "<resultado>"

    Examples:
        |busqueda       | resultado 
        |Presentación   | una lista de plantillas realcionadas con "Presentación"   |
        |Currículum     | una lista de plantillas relacionadas con "Currículum      |
        |               | una lista de plantillas relacionadas con "Invitación"     |
        |*-+            | un mensaje indicando que no se encontraron resultados     |

Scenario Outline: Búsqueda de plantillas con filtros
    Given que el usuario se encuentra en la página principal de Canva
    And ha iniciado sesión en su cuenta
    When busca "<busqueda>"
    And aplica el filtro "<filtro>" con el valor "<valor>"
    Then el sistema muestra únicamente plantillas que cumplen con el filtro "<valor>"

Examples:
      | busqueda     | filtro | valor        |
      | Presentación | Idioma | Español      |
      | Presentación | Idioma | Inglés       |
      | Presentación | Estilo | Minimalista  |
      | Presentación | Estilo | Creativo     |