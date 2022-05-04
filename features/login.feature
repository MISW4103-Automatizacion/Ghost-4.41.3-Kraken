Feature: Ingresar a la aplicación ghost

  @user1 @web
  Scenario: Como usuario quiero ingresar en caso de no existir el usuario, quiero registrarlo en ghost
    Given Ir a la aplicacion Ghost
      And I wait for 5 seconds
    When Escribo el Site title 'Mi blog de pruebas con kraken'
      And Escribo el Full name 'Pruebas E2E en kraken'
      And Escribo el Email address 'krakenTest@kraken.com.co'
      And Escribo el Password 'Kraken123456@'
      And Doy click on the button Create account & start publishing →
      And I wait for 5 seconds
    Then Deberia ver la palabra 'All done!' despues de crear el usuario
    When Doy click on the button Explore Ghost admin
      And Doy click en el boton del avatar inferior
      And Doy click en el menu Sign out
    When Escribo el email login 'krakenTest@kraken.com.co'
      And Escribo el password login 'Kraken123456@'
      And Doy clic en el boton Sing In
      And I wait for 2 seconds
    Then Deberia ver la palabra 'Dashboard' en el página principal
