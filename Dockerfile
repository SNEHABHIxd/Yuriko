FROM python:latest


WORKDIR /Yuriko
RUN chmod 777 /Yuriko

# Installing Requirements
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt

# If u want to use /update feature, uncomment the following and edit
#RUN git config --global user.email "your_email"
#RUN git config --global user.name "git_username"

# Copying All Source
COPY . .

# Starting Bot
CMD ["python3", "-m", "Yuriko"]
