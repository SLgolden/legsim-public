# legsim
## Quick start
### Setting up your local development enviornment 

1. Download and install Docker Desktop: https://docs.docker.com/desktop/install/windows-install/
2. Install Ruby
   ```
   sudo apt install ruby-full
   ```
   Check that Ruby is installed
   ```
   ruby -v
   ```
3. Install Rails
   ```
   sudo apt install rails
   ```
4. Install Bundler
  ```
  gem install bundler
  ```
5. Download and Install Node.js: https://nodejs.org/en
6. Install Yarn: https://yarnpkg.com/getting-started/install
7. Clone the Project to your local machine
   ```
   git clone https://github.com/SLgolden/legsim-public.git
   ```
9. Change directory to the project root
   ```
   cd legsim-public
   ```
### Running the project locally 

1. Install gems
   ```
   bundle install
   ```
2. Alter PATH enviornment variable
  ```
  export PATH="/Ruby31-x64/bin/bundle"
  export PATH="/Ruby31-x64/bin/ruby"
  ```
3. Create a MySQL Docker Image
   ```
   docker pull mysql
   ```
4. Create a MySQL Docker Container
   ```
   docker run --name your_container_name -e MYSQL_ROOT_PASSWORD=your_password -d mysql
   ```
   Replace "your_container_name" with your desired container name  
   Replace "your_password" with your desired password
5. Comment out lines 25 and 26 in config/application.rb
   ```
   user_name:            Rails.application.credentials.gmail[:user_name],
   password:             Rails.application.credentials.gmail[:password],
   ```
6. Create the master.key file  
   Generate a key:
   ```
   rails secret   
   ```
   Copy the key.   
   Generate the file:
   ```
   echo "your_generated_key" > config/master.key
   ```
   Replace "your_generated_key" with your generated key.
7. Create and populate the credentials.yml file:
   ```
   EDITOR=vim rails credentials:edit
   ```
   Populate the credentials.yml file using the template at 'config/credentials.yml.example'
8. In the 'config/database.yml' file, for the 'development' and 'test' databaseses, make the following changes 
  - set the username field for the development database to 'root'
  - set the password field for the development database to the password you created in step 4
  - set the database fields for both databases to the database name you created in step 4
  - create a new field 'host', with value '127.0.0.1'
  - create a new field 'port', with value '3306'
    The final code should look something like this:
    ```
   development:
  <<: *default
  username: root
  database: your_database_name
  password: your_database_password
  host: 127.0.0.1
  port: 3306
  #socket: /tmp/mysql.sock
  # adapter: mysql2
  # database: legsim
  # useranme: foo
  # password:

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: your_database_name
  host: 127.0.0.1
  port: 3306
    ```
9. Create the databases
   ```
   rake db:create
   ```
10. Migrate the databases
   ```
   rake db:migrate
   ```
   
   






   
