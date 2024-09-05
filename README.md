# DevOps trial with React App

## build-test.yaml
Build and deploy to github pages
## deploy-production.yaml
Build the latest docker image and push it to docker hub. Then login to AWS EC2 instance and restart the container
## pipeline-pre-prod.yaml
Build and update the docker image in docker hub, Then update the ecs service in pre-prod environment
## pipeline-prod.yaml
Manually triggered, describe your changes and then correspinding pull request will be created and changes are pushed to docker hub and EC2 instance in prod environment
## roll-back-pre-prod.yaml
Rollback the changes in pre-prod environment
## roll-back-production.yaml 
Rollback the changes in prod environment
