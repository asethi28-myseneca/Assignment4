 #initialize Swarm:
#SSH into the manager VM and run the following command to initialize the Docker Swarm:
docker swarm init --advertise-addr <MANAGER_VM_IP>
#This will give you a token that you'll use to join the worker nodes to the swarm.

#Join Worker Nodes:
#SSH into the other two VMs (worker1 and worker2) and use the token
 #obtained from the previous step to join them to the swarm. 
 #Run the command provided by the docker swarm init output on both worker VMs.
docker stack deploy -c docker-compose.yml assignments
#Deploy Stack:
#On the manager VM, run the following command to deploy the stack:
docker node ls
#Verify Deployment:
#You can use the following commands to check the status of your Swarm and services:

    #To see the list of nodes in the swarm:
docker service ls

