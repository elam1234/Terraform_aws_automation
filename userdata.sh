#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Create log directory
mkdir /var/log/myapp

# Configure Apache to log to the custom log file
sed -i 's/ErrorLog .*/ErrorLog \/var\/log\/myapp\/error.log\nCustomLog \/var\/log\/myapp\/access.log combined/' /etc/apache2/apache2.conf

# Restart Apache
systemctl restart apache2

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Successfully implemented the terraform automation project in aws</p>
  
</body>
</html>
EOF

# Upload logs to S3 bucket
aws s3 sync /var/log/myapp/ s3://elams3-storge-for-app-log/logs/
