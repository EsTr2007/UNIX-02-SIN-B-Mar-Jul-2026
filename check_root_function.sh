#!/bin/bash
# This function checks if the current user ID equals zero.
#Defines a function named check_if_root.
check_if_root(){
#Checks if the EUID variable is equal to 0.
#EUID=0 means the user is root.
if [[ "${EUID}" -eq "0" ]]; then
#Returns 0, which in Bash means "success" or a true condition.
 return 0
#Executes if EUID is not 0.
 else
# Returns 1, which in Bash means "failure" or a false condition.
 return 1
#Ends the if statement.
 fi
#Ends the function definition
}
#Runs the function and evaluates its return code.
#If it returns 0, the then block is executed.
if check_if_root; then
#Displays a message indicating that the user is root.
 echo "User is root!"
#Executes when the function returns a value other than 0.
else
#Displays a message indicating that the user is not root
 echo "User is not root!"
#Ends the second if statement.
fi

#Invokes the low-level system utility to provision a brand-new user account named 'newuser'.
#Impacts system databases: Directly injects new cryptographic and identity metadata records 
#into critical system configuration files, specifically '/etc/passwd' and '/etc/shadow'.
#This registers a valid unprivileged local identity within the current OS architecture.
useradd newuser
#Executes the 'substitute user' binary to transition the active session into the 'newuser' scope.
#Note: By omitting the login shell dash ('-'), this command performs a non-login context shift, 
#meaning it inherits the current working directory and parts of the previous shell's environment.
#Impacts privilege evaluation: Successfully switches the Effective User ID ('${EUID}'), allowing 
#the operator to run and audit execution flows under a safe, unprivileged test account.
su newuser