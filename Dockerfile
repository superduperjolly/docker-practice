# Base from Python 3.6.0
FROM python:3.6.0-slim

# Install necessary packages
RUN pip install pipenv==2018.11.26
COPY Pipfile Pipfile.lock ./
RUN pipenv install --system

# Maintain workdir as 
WORKDIR /docker-practice 

# Copy the program files
COPY . /docker-practice

# Expose a port to the host
EXPOSE 5000

# Make the image run Python whatever happens
ENTRYPOINT ["python"]

# The default command to run 
CMD ["app.py"]
