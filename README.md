# PW Auto Login

A simple batch script to automate login for **Perfect World**.  
This script allows you to pre-configure your account credentials, server, and character name to streamline the login process.

---

## ⚙️ Features
- Automatically launches the game executable.
- Auto-fills **username** and **password**.
- Optional **server selection**.
- Optional **character selection**.
- Provides clear success and error messages.

---

## 📋 Requirements
- Windows operating system.
- The script must be placed in the **same folder** as the game executable (`.exe`).
- Proper configuration of the variables inside the script.

---

## 🔧 Configuration
Open the script in a text editor and set the following variables:


- set executable=Game.exe        :: Replace with the name of the game executable
  
Example for 64-bit version: set executable=elementclient_64.exe
- set user=YourLogin             :: Replace with your login username
- set password=YourPassword      :: Replace with your password
- set nickname=YourCharacter     :: (Optional) Replace with your character name
- set server=ServerName          :: (Optional) Replace with your server name
⚠️ Important: Do not include the full path for the executable, only the file name with extension.

---

## ▶️ Usage
- Place the script in the same folder as the game executable.

- Configure the variables as described above.

- Double-click the script to run it.

- The game will start with auto login enabled.


## ✅ Success Message
If everything is configured correctly, you will see: Perfect World with auto login started successfully!


## ❌ Error Handling
If the script fails, you may see:

- ERROR: Failed to start Game.exe!
- Possible causes.

## 📌 Notes
- This script does not display your login or password on screen.

- Editing below the warning line in the script may cause bugs.

- Use at your own risk; credentials are stored in plain text.

## 👨‍💻 Author
# Diogo Santos Pombo  \Õ/
