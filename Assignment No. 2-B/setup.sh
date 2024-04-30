#!/bin/bash

# Step 1: Create Node.js Application
echo "Step 1: Creating Node.js Application..."
mkdir node-hello-world
cd node-hello-world
echo "console.log('hello world');" > app.js
echo "Node.js application created successfully."

# Step 2: Install Docker
echo "Step 2: Installing Docker..."
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker $USER
echo "Docker installed successfully."

# Step 3: Create Dockerfile
echo "Step 3: Creating Dockerfile..."
cat <<EOF > Dockerfile
FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]
EOF
echo "Dockerfile created successfully."

# Step 4: Build Docker Image
echo "Step 4: Building Docker image..."
docker build -t node-hello-world .
echo "Docker image built successfully."

# Step 5: Run Docker Container
echo "Step 5: Running Docker container..."
docker run -p 3000:3000 -d node-hello-world
echo "Docker container running. Visit http://localhost:3000 to see the output."

# Step 6: Cleanup
# echo "Step 6: Cleaning up..."
# cd ..
# rm -rf node-hello-world
# echo "Cleanup completed."

## save this script as setup.sh and follow the previous instructions to make it executable and run it