# Crete a local repository
sudo docker run -d -p 5000:5000 --restart=always --name registry registry:2


# Creating the base image 
sudo docker build --no-cache --tag="jmeter-base:latest" -f Dockerfile-base .
sudo docker tag jmeter-base:latest localhost:5000/jmeter-base:latest
sudo docker push localhost:5000/jmeter-base:latest

# creating the master image
sudo docker build --no-cache --tag="jmeter-master:latest" -f Dockerfile-master .
sudo docker tag jmeter-master:latest localhost:5000/jmeter-master:latest
sudo docker push localhost:5000/jmeter-master:latest


# creating the slave image
sudo docker build --no-cache --tag="jmeter-slave:latest" -f Dockerfile-slave .
sudo docker tag jmeter-slave:latest localhost:5000/jmeter-slave:latest
sudo docker push localhost:5000/jmeter-slave:latest
