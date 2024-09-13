# This tool is no longer useful as Steam now has a built in account changer with a GUI which you can learn about [here](https://www.youtube.com/watch?v=WmkP8dxm9eM).


# Steam Account Changer

A windows tool to change between steam accounts quickly by modifying the registry

## Description:

This tool was created to change the currently logged in steam account within the windows registry

The script will promp for a keypress (By default 4 keys for 4 accounts) and it will enroll the appropriate account into the registry

&nbsp;

## Getting Started

### Dependencies

* Windows

### Installing

* You can simply download `AccountChanger.bat` or clone this repository to obtain a copy
* Modify the `AccountOne`, `AccountTwo`, `AccountThree`, `AccountFour` strings
  * You will need to modify it in the first section as well as each label
  i.e. Modifying label 1
  ```
   :1
   set username="insert account name here"
   Goto end
  ```

### Executing program

* Can double click the `.bat` file in your file explorer and allow windows to run the file

OR

* Enter the directory the file is located via Command prompt and enter

```
AccountChanger.bat
```

THEN

* Press the key which corresponds to the account you would like to select 

&nbsp;

## Example output:

```
Select your account
1) "Accountone"
2) "AccountTwo"
3) "AccountThree"
4) "AccountFour"

Press [1, 2, 3, U]: 1

"accountOne" selected
The operation completed successfully.
The operation completed successfully.
```

## Notes

* This script will close itself 4 seconds after selection
* Steam will require you to login if you don't check the `Remember my password` box

&nbsp;

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
