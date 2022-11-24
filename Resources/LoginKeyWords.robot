*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
ouvrir le navigateur
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window
    Sleep    2
saisir nom utlisateur
    [Arguments]    ${username}    
    Input Text    ${txt_loginUserName}    ${username}
saisir le mot de passe
    [Arguments]    ${pass}
    Input Password    ${txt_loginPassWord}    ${pass}
cliquer sur le bouton Login 
    Click Button    ${btn_login}
valider le succes du login
    Title Should Be    OrangeHRM
    
    
fermer les fenetres des navigateurs
    Close All Browsers

