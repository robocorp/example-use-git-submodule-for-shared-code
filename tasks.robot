*** Settings ***
Documentation     Use shared code from a Git submodule.
Library           shared/libraries/MyLibrary.py
Resource          shared/keywords/keywords.robot
Variables         shared/variables/variables.py

*** Tasks ***
Use shared code from a Git submodule
    Example Python Keyword    # shared/libraries/MyLibrary.py
    Example keyword    # shared/keywords/keywords.robot
    Log    ${TODAY}    # shared/variables/variables.py
