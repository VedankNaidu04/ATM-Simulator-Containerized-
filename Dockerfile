# Use an official OpenJDK image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy application code and dependencies
COPY ./Bank_ATM-Simulator-master /app

# Copy the SQL script for database setup
COPY ./Banksys.sql /docker-entrypoint-initdb.d/Banksys.sql

# Expose port if required
EXPOSE 8080

# Define the main class to execute
CMD ["java", "-cp", ".:mysql-connector-java-8.0.28.jar", "bank.management.system.main_Class"]
