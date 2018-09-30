#Dockerfile : maven base image

FROM maven:latest

# Create app directory and use it as working directory
WORKDIR /usr/src/app

# Copy all from current directory to Working directory
COPY . . 

#ENTRYPOINT ["run.sh"]
#RUN apt-get update

CMD ["export" , "PATH=~/usr/src/app/lib/testng-6.9.8.jar:$PATH"]
CMD ["export" , "PATH=~/usr/src/app/lib/jcommander-1.48.jar:$PATH"]
CMD ["export" , "PATH=~/usr/src/app/lib/*:$PATH"]

RUN mvn clean install

EXPOSE 3000

CMD ["sh", "./run.sh"]
