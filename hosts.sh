cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.20  management
10.0.15.21  loadbalancer
10.0.15.31  web1
10.0.15.32  web2

ansible_connection=ssh 
ansible_ssh_user=vagrant 
ansible_ssh_pass=vagrant

EOL