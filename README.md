# Information about this script

This Bash script reads user information from a file (`user.txt`) and performs basic validation checks on names, email addresses, and IDs. It includes functions to determine whether an ID is even or odd and validates email addresses using a regular expression.

## To use the script  

1- Create a file named 'script.sh' to create the script in it
```
touch script.sh
```

2- Ensure the script has execute permissions:
   ```bash
   chmod +x script.sh

   ```



3- Create a file named 'user.txt' with lines containing three fields separated by commas: name, email, and ID.
```
touch user.txt

```
4- Run the script
```
./script.sh

```


#### 5- When you run the script

<img src="https://github.com/Adhaammohammed/Scripting-task/assets/147430078/c1d011d7-86a8-41a8-9039-de9ba7808efd.png" width="500">


### 6- Functions

ID_check Function:

- Determines if the given ID is even or odd.
- Returns "Even" for even IDs and "Odd" for odd IDs.

Mail_check Function:

- Validates email addresses using a regular expression.
- Returns 0 for a successful match (valid email) and 1 for failure (invalid email).

### 7- Main Loop

 Checks for the presence of a name, email, and ID.
 
 Prints relevant information based on conditions:
- If there's no email, it prints "No email" and continues to the next iteration.
- If there's no ID, it prints "No ID" and continues to the next iteration.
- If there's no name, it prints "No name" and continues to the next iteration.
- If the email is valid, it prints the ID status (even or odd).
- If the email is invalid, it prints "Invalid email."
