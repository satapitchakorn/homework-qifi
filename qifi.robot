*** Settings ***
Library          SeleniumLibrary
Test Teardown    Close All Browsers

***Test Cases***
Generate WiFi QR Code
    เปิดเบราว์เซอร์ และเข้า https://qifi.org/
    กรอก SSID
    กรอก Password
    กดปุ่มสร้าง QR Code
    Check QR Code


***Keywords***
เปิดเบราว์เซอร์ และเข้า https://qifi.org/
    Open Browser    https://qifi.org/    gc
กรอก SSID
    Input Text    ssid    robotframework
กรอก Password
    Input Password    key    password
กดปุ่มสร้าง QR Code
    Press Keys    None    RETURN
Check QR Code
    Wait Until Element Is Visible    //*[@id="qrcode"]
