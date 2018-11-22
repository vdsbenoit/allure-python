*** Settings ***
Library     ../run_robot_library.py
Library     ../test_allure_library.py


*** Test Case ***
Use Library Keyword With Allure Step
    ${allure_report}    Run Robot With Allure   examples/status/status.rst
    ${test_case}    Should Has Test Case   ${allure_report}   Test Case With Failed Step With Message
    Should Has Status    ${test_case}    failed
    Should Has Status Detail With Message    ${test_case}    Failed Details
    ${step}    Should Has Step    ${test_case}   BuiltIn.Fail
    Should Has Status    ${step}    failed
    Should Has Status Detail With Message    ${step}    Failed Details