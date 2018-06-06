FROM macielbombonato/docker-builder-android:latest

LABEL maintainer "Maciel Escudero Bombonato <maciel.bombonato@gmail.com>"

WORKDIR /

USER root

# ---------------------------------------------------------------
# Install buck

RUN wget --no-check-certificate https://github.com/facebook/buck/releases/download/v2018.03.26.01/buck_2018.03.26_all.deb -O buck_2018.03.26_all.deb \
 && dpkg -i buck_2018.03.26_all.deb \
 && buck --version \
 && rm -rf /buck-out \
 && rm /buck_2018.03.26_all.deb 

# Cleaning
RUN apt-get clean --yes

# Create directory to host the application
WORKDIR /opt/app

CMD ["sdkmanager --version", "sdkmanager --list"]
