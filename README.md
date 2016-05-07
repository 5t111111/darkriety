# darkriety

[![Circle CI](https://circleci.com/gh/5t111111/darkriety.svg?style=svg)](https://circleci.com/gh/5t111111/darkriety)

When you gaze into darkriety, darkriety gazes into you.

## 3 Minutes Docker Deployment

1. Create a directory to persist Redis data  
   ```
   $ mkdir -p /var/docker_volumes/darkriety/redis_data
   ```

2. Create `secrets.env` for Slack integration information in project root directory  
   ```
   SLACK_USERNAME=darkriety
   SLACK_PASSWORD=xxxxxxxxxxxxxxxx
   SLACK_TEAM=xxxxxxxxxx
   SLACK_ROOM=general,random
   ```
