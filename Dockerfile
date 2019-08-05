# https://oliversi.com/2019/01/07/python-docker-selenium-chrome/
FROM python:3
RUN apt-get update && apt-get install -y unzip

# Install google-chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add && \
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable && \
    apt-get install fonts-ipafont-gothic fonts-ipafont-mincho

# Install selenium
RUN pip install selenium

# Install ChromeDriver
ADD https://chromedriver.storage.googleapis.com/76.0.3809.68/chromedriver_linux64.zip /opt/chrome/
RUN cd /opt/chrome/ && \
    unzip chromedriver_linux64.zip
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/chrome
