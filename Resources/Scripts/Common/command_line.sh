#!/bin/bash

# Run individual file
robot Tests/Alpha/Tests.Alpha.AddContact.robot 

# Run all .robot files in Tests/ folder, including subfolders
robot Tests/ 

# Save results in specific directory, 'Results' in this example
robot -d Results/ Tests/Alpha/Tests.Alpha.AddContact.robot 

# Only include tests with the tag, 'test level: integration', in this example
robot -i 'test level: integration' Tests/Bravo/

# Exclude tests with the tag, 'Manual', in this example
robot -e 'Manual' Tests/Bravo/

# Set a variable at runtime, '${environment} = test', in this example
robot -v environment:test Tests/Bravo/

