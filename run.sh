#!/bin/bash

source .env

docker build . -t knowledge-work/chat-gpt-in-slack
docker run -e SLACK_APP_TOKEN=$SLACK_APP_TOKEN -e SLACK_BOT_TOKEN=$SLACK_BOT_TOKEN -e OPENAI_API_KEY=$OPENAI_API_KEY -e OPENAI_TIMEOUT_SECONDS=$OPENAI_TIMEOUT_SECONDS -it --rm knowledge-work/chat-gpt-in-slack
