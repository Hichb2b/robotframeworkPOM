*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeyWords.robot
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navigateur}    gc
${userNAme}    Admin
${password}    admin123
*** Test Cases ***
LoginTest
    ouvrir le navigateur    ${url}    ${navigateur} 
    saisir nom utlisateur    ${userNAme}
    saisir le mot de passe    ${password}
    cliquer sur le bouton Login
    valider le succes du login
    fermer les fenetres des navigateurs    