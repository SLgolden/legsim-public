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
   Populate the credentials.yml file using the '' template
   
   






   
