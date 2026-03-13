** Settings **
Library  RequestsLibrary
Library  String

*** Variables ***

${HOST}    https://dummyjson.com
#Rotas
${GET_ALL_PRODUCTS}    products
${GET_PRODUCT_ID}    products/id-produto
${GET_SEARCh_PRODUCT}    products/search?q=phone

*** Keywords ***
Pegar todos os produtos
    &{headers}    Create Dictionary    Content-type=application/json
    GET    url=${HOST}/${GET_ALL_PRODUCTS}  headers=&{headers}
Pegar produto por ID ${ID}
    &{headers}    Create Dictionary    Content-type=application/json

    ${GET_PRODUCT_ID}=  Replace String  ${GET_PRODUCT_ID}  id-produto  ${ID}
    GET    url=${HOST}/${GET_PRODUCT_ID}  headers=&{headers}

Pegar produto por pesquisa ${SEARCH}
    &{headers}    Create Dictionary    Content-type=application/json

    ${GET_SEARCh_PRODUCT}=  Replace String  ${GET_SEARCh_PRODUCT}  phone  ${SEARCH}
    GET    url=${HOST}/${GET_SEARCh_PRODUCT}  headers=&{headers}
** Test Cases **
tC01 - Realizar busca de todos os produtos
    Pegar todos os produtos
TC02 - Realizar busca de um único produto
    Pegar produto por ID 195
TC03 - Realizar pesquisa de produto
    Pegar produto por pesquisa car
    