#!/bin/bash

# Add the aliases below to your .bashrc file 
# Change the version to the version under test 
# Save and close the file 
# Run the command source ~/.bashrc

# Robot Framework aliases for the dev environment
alias robdet_dev_latest="robot -d Results -v environment:dev -i 'environment: devANDlatest' Tests/"
alias robot_dev_system="robot -d Results -v environment:test -i 'environment: devANDtest level: system' -N \"v1.1.0 Dev Environment - System Test Report\" -r v1.1.0_DevEnvironment_SystemTestReport.html -l v1.1.0_DevEnvironment_SystemTestLog.html -o v1.1.0_DevEnvironment_SystemTestOutput.xml Tests/"
alias robot_dev_integration="robot -d Results -v environment:dev -i 'environment: devANDtest level: integration' -N \"v1.1.0 Dev Environment - Integration Test Report\" -r v1.1.0_DevEnvironment_IntegrationTestReport.html -l v1.1.0_DevEnvironment_IntegrationTestLog.html -o v1.1.0_DevEnvironment_IntegrationTestOutput.xml Tests/"

# Robot Framework aliases for the test environment
alias robot_test_latest="robot -d Results -v environment:test -i 'environment: testANDlatest' Tests/"
alias robot_test_system="robot -d Results -v environment:test -i 'environment: testANDtest level: system' -N \"v1.1.0 Test Environment - System Test Report\" -r v1.1.0_TestEnvironment_SystemTestReport.html -l v1.1.0_TestEnvironment_SystemTestLog.html -o v1.1.0_TestEnvironment_SystemTestOutput.xml Tests/"
alias robot_test_integration="robot -d Results -v environment:test -i 'environment: testANDtest level: integration' -N \"v1.1.0 Test Environment - Integration Test Report\" -r v1.1.0_TestEnvironment_IntegrationTestReport.html -l v1.1.0_TestEnvironment_IntegrationTestLog.html -o v1.1.0_TestEnvironment_IntegrationTestOutput.xml Tests/"

# Robot Framework aliases for the prod environment
alias robot_prod_latest="robot -d Results -v environment:prod -i 'environment: prodANDlatest' Tests/"
alias robot_prod_system="robot -d Results -v environment:prod -i 'environment: prodANDtest level: system' -N \"v1.1.0 Prod Environment - System Test Report\" -r v1.1.0_ProdEnvironment_SystemTestReport.html -l v1.1.0_ProdEnvironment_SystemTestLog.html -o v1.1.0_ProdEnvironment_SystemTestOutput.xml Tests/"
alias robot_prod_integration="robot -d Results -v environment:prod -i 'environment: prodANDtest level: integration' -N \"v1.1.0 Prod Environment - Integration Test Report\" -r v1.1.0_ProdEnvironment_IntegrationTestReport.html -l v1.1.0_ProdEnvironment_IntegrationTestLog.html -o v1.1.0_ProdEnvironment_IntegrationTestOutput.xml Tests/"



