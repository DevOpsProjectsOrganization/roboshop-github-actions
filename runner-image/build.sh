git pull
# sudo docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 533567530972.dkr.ecr.us-east-1.amazonaws.com/runner:latest
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533567530972.dkr.ecr.us-east-1.amazonaws.com
docker build -t 533567530972.dkr.ecr.us-east-1.amazonaws.com/runner:latest .
docker push 533567530972.dkr.ecr.us-east-1.amazonaws.com/runner:latest
