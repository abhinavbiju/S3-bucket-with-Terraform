# Launch S3 Buckets with Terraform
<img src= "https://imgur.com/yDC0XEP.png" width="100%" alt="Terminal view">

### I am learning how to use Terraform to automate the deployment of an AWS S3 bucket.

### What is Terraform?
- It is a tool for managing our IT resources using code. You use Terraform to process a configuration file you have prepared that details the desired state of your infrastructure. Terraform then creates/updates to set up that desired state.
- Terraform is one of the most popular tools used for infrastructure as code (IaC), which is a way to manage your IT infrastructure. Instead of manually managing resources using the console or text commands in CLI, IaC automates with code.
- Terraform uses configuration files to to define and manage infrastructure. These files describe the desired state of your infrastructure, and Terraform figures out how to achieve that state. 
- Main.tf is where you write down what you want your infrastructure to look like, using Terraform's language. Think of it as the blueprint for building your cloud resources.

## Key Tools and Concepts
- Install and configure Terraform.
- Configure AWS credentials in my terminal
- Create and manage S3 buckets with Terraform
- Upload files to S3 using Terraform

## Downloading Terraform
- Head to the official Terraform Download Page: https://developer.hashicorp.com/terraform/downloads
- Terraform Website for S3 documentation: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

## Setup your PATH
- PATH is a shortlist of folders that your computer searches through when you run a command in the terminal.
- Windows 11: Right-click on the Start button, select System. Scroll down and on the right side under Related settings, click on Advanced system settings.
- In the System Properties window, select the Advanced tab and select Environment Variables.
- Scroll down in the System Variables section until you find the variable PATH
- Select Edit.
- In the Edit Environment Variable dialog, select New and enter the directory path: c:\terraform
- Be sure to include a semicolon at the end of the previous path, i.e. c:\path;c:\terraform
- Launch a new terminal session for the settings to take effect.

## Verify Terraform Installation
```bash
terraform version
```
## Setup Terraform Project
- Create a project directory
- On your desktop, create a new directory named nextwork_terraform. You can do this by running this PowerShell command:
```bash
New-Item -Path "$env:USERPROFILE\Desktop\nextwork_terraform" -ItemType Directory
```
- Next, navigate your terminal to the nextwork_terraform folder:
```bash
Set-Location "$env:USERPROFILE\Desktop\nextwork_terraform"
```
- Let's double check that you're at the right folder.
```bash
Get-Location
```
- Create main.tf
```bash
New-Item -Path "main.tf" -ItemType File
```

## Define main.tf
- Add Terraform code to main.tf
- Open main.tf and enter the code into it (check for file to copy and paste)
- Customize main.tf if needed (optional)

## Run your Terraform Configuration
- To initalize Terraform, run this command
```bash
terraform init
```
<img src= "https://imgur.com/AusjHvV.png" width="100%" alt="Terminal view">

## Plan your Terraform Configuration
```bash
terraform plan
```
<img src= "https://imgur.com/zNPmwcX.png" width="100%" alt="Terminal view">

## Launch an S3 Bucket with Terraform
- Run the command for Terraform configuration
```bash
terraform apply
```
- Type yes and press ENTER to apply changes

## Verify S3 Bucket Creation
- Log in to the AWS Management Console as your IAM Admin user.
- Head to the S3 console.
- You should see your newly created S3 bucket in the console!
<img src= "https://imgur.com/z0Rnjw1.png" width="100%" alt="Terminal view">

## Upload an S3 object with Terraform
- Add a New Image file
- Make sure your downloaded/chosen image has the title image.png.
= Move your image into your nextwork_terraform folder.
- Save the main.tf file.
= In your terminal, run the following commands:
```bash
terraform plan
terraform apply
```
- Type yes and press Enter in your keyboard to confirm.
<img src= "https://imgur.com/jylCqjL.png" width="100%" alt="Terminal view">

- Head back to your AWS Management Console and S3 console.
- Click into your bucket's page.

<img src= "https://imgur.com/bueCC1x.png" width="100%" alt="Terminal view">

# That's a Wrap!
Congrats! You've just learned how to:
- 🛠️ Install and configure Terraform.
- 🔑 Configure your AWS credentials in the terminal.
- 🪣 Create and manage S3 buckets with Terraform.
- 💎 Upload files to S3 with Terraform.
