FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install --no-install-recommends curl -y
RUN curl -sLk  https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update &&  apt-get install --no-install-recommends openssh-client git yarn nodejs libpng12-dev openssh-client -y && rm -rf /usr/lib/python3.5 && rm -rf /usr/lib/python2.7 && rm -rf /usr/lib/locale && rm -rf /var/lib/apt/lists
RUN npm install -g lerna
