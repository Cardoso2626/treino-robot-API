** Settings **
Library  RequestsLibrary


*** Variables ***
${HOST}    https://dummyjson.com
${GET_ALL_PRODUCTS}    products

*** Keywords ***
Pegar todos os produtos

    &{headers}    Create Dictionary    Content-type=application/json
    GET    url=${HOST}/${GET_ALL_PRODUCTS}  headers=&{headers}

** Test Cases **
tC01 - Realizar busca de todos os produtos
    Pegar todos os produtos