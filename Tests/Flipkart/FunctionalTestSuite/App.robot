*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_url}  https://www.google.com/
${search_data}  flipkart
${search_product}  iphone 13pro 128gb
${email_id}  muheeshas@gmail.com
${text_anonymous}  *********
${title_tag}  APPLE iPhone 13 Pro ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
*** Test Cases ***
Google Search Test
    [Documentation]  This test is to open google
    [Tags]  google
    Open Browser  ${google_url}  chrome
    Maximize Browser Window
    Search Flipkart
    Submit Form
    Click Element  class:LC20lb

Flipkart Search Test
    [Documentation]  This test is to open flipkart
    [Tags]  Shopping App
    sleep  1s
    Click Button  class:_2KpZ6l
    Search Product
    sleep  1s
    Click Button  class:L0Z3Pu           #upto search iphone
    sleep  1s
    Scroll Element into view  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  1s
    Click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s

But Laptop Test
    [Documentation]  This test is to buy a Iphone
    [Tags]  Shopping App
    Switch Window  title: ${title_tag}
    Click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  1s
    Enter Email
    sleep  2s
    Click Button  class:_20xBvF
    sleep  1s
    Enter Anonymn
    sleep  1s
    Click Button  class:_3AWRsL
    sleep  1s
    Click Button  class:_2KpZ6l
    sleep  2s

*** Keywords ***
Search Flipkart
    Input Text  name:q  ${search_data}

Search Product
    Input Text  name:q  ${search_product}

Enter Email
    Input Text  class:_2IX_2-  ${email_id}

Enter Anonymn
    Input Text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[2]/input  ${text_anonymous}
