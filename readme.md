## Introduction

StateLines is a fork of [laravel/homestead](https://github.com/laravel/homestead) for creating many and rapidly setting up WordPress sites for development.

Requirements
------------
- [Vagrant](http://vagrantup.com/)
- A virtual machine provider like [virtualbox](http://virtualbox.org)

Quick start Guide
-----------------
1. Clone this repo

   `git clone https://github.com/TissyTheSavior/StateLines.git StateLines`

   `cd StateLines`
2. Run the init script
   
   Mac/Linux:`bash init.sh`
   
   Windows:`init.bat`
3. Open your State.yaml file
   Configure your synced folders
   ```
   folders:
       - map: ~/code
         to: /home/vagrant/sites/statelines
   ```
   The synced folders sync a folder from your machine to your virtual machine.
   
   `map` is where your project code will be
4. Configure your site
   ```
   sites:
       - map: state.lines
         to: /home/vagrant/sites/statelines
   ```
   `map` is your site domain you'll use this to access your site on your browser
   
   `to` is the same directory of what you set in step 3
   
5. Lastly you will specify your databases
   ```
   databases:
       - statelines
   ```
   Just name your database, you can ad as many as you want.
6. Now you can just run the command `vagrant up`

Notes:
 - if you make changes to State.yaml like adding a site run `vagrant reload --provision`