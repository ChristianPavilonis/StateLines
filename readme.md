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
4.a Configure your site
   ```
   sites:
       - map: state.lines
         to: /home/vagrant/sites/statelines
   ```
   `map` is your site domain you'll use this to access your site on your browser
   
   `to` is the same directory of what you set in step 3
   
4.b Configure Wordpress
   ```
   wordpress:
          - version: latest
            use_db: statelines
            prefix: wp_
            title: State Lines
            admin:
                - username: admin
                  password: secret
            theme: 
                - repo: https://github.com/roots/sage.git
                  name: sage
   ```
   Inside of your site you will configure wordpress
   
   You can specify your version, your table prefix, title, admin username and password
   
   `use_db` specifies what database that site will use, and later we'll set up our databases
   
   Under theme you can set the repo you want to clone and the name the theme folder.
   
5. Lastly you will specify your databases
   ```
   databases:
       - statelines
   ```
   Just name your database, you can ad as many as you want.
6. Now you can just run the command `vagrant up`