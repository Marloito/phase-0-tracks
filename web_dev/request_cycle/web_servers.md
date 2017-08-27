# Linux OS Design Philosophies
* Assumes the user is computer literate and knows what they are doing. The system will do anything you tell it to. 
* Each program does 1 thing well.
* Small is beautiful.

# VPS (Virtual Private Server)
* A service sold online that allows you to run a virtual machine with it's own OS (of your choosing).
* Advantages include cost effeciency, easy set-up and deployment, remote access, and easy removal/destruction. 

# Don't use ROOT
* SECURITY
* All apps will have root privilegies and viruses can destroy everything
* Bugs can crash your whole system
* Able to do everything without double-checking (easy to make BIG mistakes)