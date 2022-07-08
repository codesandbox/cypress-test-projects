FROM node

RUN apt-get update -y && apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

WORKDIR /app
USER node

RUN npx cypress@8.7.0 install
CMD bash
