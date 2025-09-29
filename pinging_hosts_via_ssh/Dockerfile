FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install OpenSSH Server
RUN apt-get update && apt-get install -y openssh-server

# Create the SSH directory and set permissions
RUN mkdir /var/run/sshd \
    && mkdir -p /root/.ssh \
    && chmod 700 /root/.ssh

# Set root password (change to a secure password)
RUN echo 'root:Docker@123' | chpasswd

# Permit root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Disable password authentication if you want to use keys, or keep enabled for password login
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]

