# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY . .

# Compile the Java program
RUN javac -d ourclasses -sourcepath .\src src\ru\gb\javacore\sample\Main.java -encoding utf-8

# Generate Javadoc documentation
RUN javadoc -d doc src/HelloWorld.java

# Run the compiled Java program
CMD ["java", "-cp", ".\\ourclasses", "ru.gb.jcore.sample.Main"]
