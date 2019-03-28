FROM beevelop/android-nodejs
ENV CORDOVA_VERSION 8.0.0
WORKDIR /app
COPY . .
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
RUN yes | $ANDROID_HOME/tools/bin/sdkmanager "build-tools;24.0.3"