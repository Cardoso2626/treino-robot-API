** Settings **
Library  RequestsLibrary
Library  String

*** Variables ***

${HOST}    https://dummyjson.com
#Rotas
${ADD_PRODUCT}    products/add    

*** Keywords ***
Adicionar novo produto
    [Arguments]    ${tittle}    ${description}    
    &{header}    Create Dictionary    Content-type=application/json
    &{body}    Create Dictionary      tittle=${tittle}    description=${description}
    POST  url=${HOST}/${ADD_PRODUCT}  headers=&{header}    json=&{body}
         

** Test Cases **
TC01: Adicionando produto
    Adicionar novo produto    iphone11    la Cobra de titanio 

    