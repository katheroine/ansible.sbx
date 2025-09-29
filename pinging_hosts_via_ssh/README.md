# Example: Pinging hosts via SSH

This example needs the environment prepared with use of **Docker**.
To make it works the package `sshpass` must be installed on the host.

1. Run `prepare.sh` to create all needed Dcoker containers and the network they will be connected to.
2. Check first container set-up by running command `ssh root@192.0.2.50` and then provide the following password `Docker@123` to log into the container via SSH.
3. Run the Ansible command: `ansible myhosts -m ping -i inventory.ini` and check if the result is similar as in the `expected_result.txt` file.
4. To remove all previously prepared Docker image, network and containers, you can use the `clean.sh` script.

This example is based on the [Ansible Documentation](https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html).
 
