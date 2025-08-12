# Deploying a Node Js Application on AWS EC2

### Testing the project on local machine.

1. Clone this project
```
git clone https://github.com/probitygh/Deploy-node-js-app-on-aws-ec2.git


```
2. Setup the following environment variables - `(.env)` file
```
DOMAIN=http://localhost:3000
PORT=3000
STATIC_DIR="./client"

PUBLISHABLE_KEY=""
SECRET_KEY=""
```
3. Initialise and start the project
```
npm install
npm start
```

Visit: http://localhost:3000

![](img/Project%20working%20on%20localhost.png)


### Set up an AWS EC2 instance

1. Create an IAM user & login to your AWS Console
    - Access Type - Password
    - Permissions - Admin Access
2. Create an EC2 instance
    - Select an OS image - Ubuntu
    - Create a new key pair & download `.ppk` file
    - Instance type - t2.micro
3.Connect to the instance using Putty SSH terminal


### Configuring Ubuntu on remote VM

1. Update the outdated packages and dependencies
```
sudo apt update
```
3. Install Git - [Guide by DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-git-on-ubuntu-22-04) 
4. Configure Node.js and `npm` - [Guide by DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04)

### Deploying the project on AWS

1. Clone this project in the remote VM
```
git clone https://github.com/probitygh/Deploy-node-js-app-on-aws-ec2.git

```
2. Setup the following environment variables - `(.env)` file using vim editor `vim  .env` press `i` to enter `insert mode` and `:x or :wq` to exit and save.
```
DOMAIN=http://localhost:3000
PORT=3000
STATIC_DIR="./client"

PUBLISHABLE_KEY=""
SECRET_KEY=""
```
> For this project, we'll have to set up an [Elastic IP Address](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) for our EC2 & that would be our `DOMAIN`

3. Initialise and start the project
```
npm install
npm run start
```

> NOTE - We will have to edit the **inbound rules** in the security group of our EC2, in order to allow traffic from our particular port.

![](img/In%20bound%20port%203000.png)

### Project is deployed on AWS 🎉

![](img/Project%20on%20AWS%20server.png)
