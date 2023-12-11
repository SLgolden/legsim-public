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
   ```
9. Change directory to the project root
   ```
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
   Replace `your_container_name' with your desired container name
   Replace `your_password' with your desired password
5. 






   
