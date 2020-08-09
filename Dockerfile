FROM ubuntu:18.04


RUN apt update && apt install wget xvfb chromium-browser libgtk2.0-0 -y \
    && wget https://www.otohits.net/app/linux/latest --no-check-certificate \
    && tar -xzf latest \
    && rm latest \
    && echo "/login:81d88b20-6058-40ab-9cfa-439ca16d1b14" > otohits.ini \
    && echo "/nosandbox" >> otohits.ini

    
RUN Xvfb :51 & export DISPLAY=:51 && timeout 51m ./otohits-app

CMD ["ls"]
