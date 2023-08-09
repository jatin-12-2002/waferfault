# Use the official Python image as the base
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy only the requirements file first to leverage Docker's layer caching
COPY requirements.txt .

# Upgrade pip and install the project dependencies
RUN pip install --upgrade pip==23.2.1 --verbose
RUN pip install -r requirements.txt --verbose

# Copy the rest of the application files
COPY . .

# Set the entrypoint and default command
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
