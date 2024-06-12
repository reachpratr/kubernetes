FROM ubuntu:20.04

# Copy the health check script into the container
COPY health_check.sh /usr/local/bin/

# Verify the script file is present in the container
RUN ls -l /usr/local/bin/health_check.sh

# Make the script executable
RUN chmod +x /usr/local/bin/health_check.sh

# Verify the script file has executable permissions
RUN ls -l /usr/local/bin/health_check.sh

# Define the command to run the health check script
CMD ["sh" , "/usr/local/bin/health_check.sh"]

