*** Settings ***
Library           SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login_BES
    Open Browser    https://10.59.10.198:12900/oc/bes/sm/login/login.html?redirectUrl=%2Fbes%2Fsm%2Fportal%2Fhome.html%3Ftimestamp%3D1574705871378&logoutReason=NoLogin    chrome
    Maximize Browser Window
    Click Button    id=details-button
    Click Link    id=proceed-link
    Sleep    2s
    Input Text    id=ipt_name    23467
    Input Password    //*[@id="div_pwd"]/input    Abc1234%
    Click Button    //*[@id="loginBtn"]

Seleccionando Operaciones Integradas_Vista 360
    Sleep    1s
    Mouse over    //div[@id="tip_footdiv"]
    Sleep    1s
    Click Element    //div[@class="foot_close"]
    Sleep    1s
    Click Element    //div[@class="fl leftHead"]/span[@class="categoryH"]
    Mouse Over    //div[@class="menuBox menuWap"]/ul[@id="top_menus"]/li[@title="Operaciones Integradas"]
    Click Element    //ul[@class="subMenu"]/li[@title="Operación de Perfiles"]/a[@title="Vista de 360 Grados"]

Capturando Criterios de Busqueda
    Sleep    2s
    Select Frame    //iframe[@innerid=\"6013120160524101_AnonymousUser\"]
    Input Text    //input[@id='inputfirstNamenewTest']    ANGEL
    Input Text    //div[11]//div[1]//div[1]//div[1]//div[1]//div[1]//div[1]//div[1]//input[1]    SIVA911204HDFLRN08
    Input Text    //input[@id='inputemailnewTest']    marina.casiano.cleofas@huawei.com
    Click Button    //*[@id="btn_custquerynewTest"]
    Sleep    2s

Seleccionando Cliente
    Click Element    //div[contains(text(),'marina.casiano.cleofas@huawei.com')]
    Click Element    //td[@class="ng-scope"]/div[@class="hlds-truncate"]/button[@ng-if="Display($Rowdata, $MetaBtn)"]

Cerrando FingerPrint
    Sleep    2s
    Select Window    AbeWeb
    Click Element    //div[@class="finger-top-bar-container"]/div[@class="icon-close-img-container"]/img
    Click Button    //button[@class="btn-outline-rounded finger-btn finger-btn-orange"]

Vista 360_1ra_Busqueda
    Sleep    2s
    Select Window    Página de portal BES
    Select Frame    //iframe[@innerid="6013101040001_6511000000102005"]
    Sleep    2s
    Click Element    //div[@title="ANGEL GUADALUPE"]
    Unselect Frame

Finalizando 1ra Busqueda
    Sleep    2s
    Select Window    Página de portal BES
    Click Element    //div[@class="frame_nav ng-scope"]
    Mouse Over    //span[contains(text(),'Vista de 360 Grados')]
    Click Element    //div[@class='tab_close']

Segunda Busqueda
    #    Click Element    //div[@class="fl leftHead"]/span[@class="categoryH"]
    #    Mouse Over    //div[@class="menuBox menuWap"]/ul[@id="top_menus"]/li[@title="Operaciones Integradas"]
    #    Click Element    //ul[@class="subMenu"]/li[@title="Operación de Perfiles"]/a[@title="Vista de 360 Grados"]

Segunda Busqueda_Capturando Datos de Cliente
    #    Sleep    2s
    #    Select Frame    //iframe[@innerid=\"6013120160524101_AnonymousUser\"]
    #    Input Text    //input[@id='inputfirstNamenewTest']    RUBEN
    #    Input Text    //div[11]//div[1]//div[1]//div[1]//div[1]//div[1]//div[1]//div[1]//input[1]    BOSR730226HDFLLB01
    #    Input Text    //input[@id='inputemailnewTest']    lubing9@huawei.com
    #    Click Button    //*[@id="btn_custquerynewTest"]
    #    Sleep    2s

Segunda Busqueda_Seleccionando Cliente
    #    Click Element    //td[@class="ng-scope"]/div[@class="hlds-truncate"]/button[@ng-if="Display($Rowdata, $MetaBtn)"]

Segunda Busqueda_Vista 360
    #    Sleep    2s
    #    Select Window    AbeWeb
    #    Click Button    //button[@class="btn-outline-rounded finger-btn finger-btn-orange"]
    #    Sleep    3s
    #    Select Window    Página de portal BES

Cerrar Sesión
    #Sleep    2s
    #    Click Element    //div[@id="userInfoDiv"]
    #    Click Element    //li[@class="personal-info-lastLi font0"]/div[@class="acc-exit ng-binding"]
    #    Click Element    //span[@class="uee-button uee-ui-ele uee-msgbox-ok"]
    #    Close Window
