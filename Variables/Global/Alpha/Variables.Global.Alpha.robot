*** Settings ***
Documentation          These variables are for the demo application Thinking Tester.


*** Variables ***
${APP_URL_DEV}                                  localhost:3000
${APP_URL_TEST}                                 https://thinking-tester-contact-list.herokuapp.com/
${APP_URL_PROD}                                 https://thinking-tester-contact-list.herokuapp.com/
&{APP_URLS}
...    dev=${APP_URL_DEV}
...    test=${APP_URL_TEST}
...    prod=${APP_URL_PROD}
${APP_URL} =  ${APP_URLS.${environment}}

