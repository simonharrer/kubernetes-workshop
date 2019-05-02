# Kubernetes Workshop Schedule

    08:00 Orga
    08:15 1,5h Part 1
    09:45 Break
    10:15 Cluster Setup
    10:30 1,5h Part 2
    12:00 Lunch Break
    13:00 1,25h Part 3
    14:15 Short Break
    14:30 Cluster Teardown
    14:45 0.75h Part 4
    15:30 Feedback
    16:00 Doors Closing

## Orga

Orga stuff. Greetings. Describing the agenda.

## Part 1 (1.5h)

### Step 1 (1.25h)

Work through https://kubernetes.io/docs/tutorials/kubernetes-basics/ in pairs in the browser.

During the work through: Write one-sentence definitions for the following concepts: cluster, node, pod, container, volume, deployment, service

### Step 2 (0.25h)

Recapitulate concepts together in the plenum

## Cluster Setup

Creating a new cluster with terraform. Describing what terraform does while the cluster is being created.

## Part 2 (1.5h)

### Step 1 (0.25h)

```bash
# Connect to Google Cloud Platform with account "kubernetesworkshop2019@gmail.com" (password see whiteboard)
$ gcloud init

# get k8s credentials
$ gcloud container clusters get-credentials kubernetes-workshop --region=europe-west3 --project=dsg-sem-m-sose-2019

# set the namespace of your pair
$ kubectl config set-context $(kubectl config current-context) --namespace=groupX
```

Separate namespaces are necessary so that every pair can work in their own isolated space within the same cluster.
Make sure you have set your namespace.
You can check that via `kubectl config view` that it is set.

### Step 2 (1h)

- Follow https://cloud.google.com/kubernetes-engine/docs/tutorials/guestbook (and use the cluster provided)
- Consult the kubernetes documentation for anything new in the .yaml files
- Note: use `type: LoadBalancer` in step 3! (Already set correctly in the guestbook/*.yaml files in this repository)

Create two visualizations while you follow the tutorial above:

- Visualize the application itself with its components
- Visualize the deployments, pods, volumes, services, nodes, etc. your application uses; get the necessary information through kubectl calls

### Step 3 (0.25h)

- Scale the application by changing the replica set amount
- Delete pods to see the self-healing mechanisms

## Part 3 (1.25h)

This part also acts as a buffer if the time is not sufficient for the previous parts.

- Follow https://cloud.google.com/kubernetes-engine/docs/tutorials/persistent-disk (and use the cluster provided)
- Consult the kubernetes documentation for anything new in the .yaml files
- Note: I set the volume size to 20Gi (because of QUOTA reasons)
- Note: you cannot scale because the volumes can only be attached to a single pod!

Create two visualizations while you follow the tutorial above:

- Visualize the application itself with its components
- Visualize the deployments, pods, volumes, services, nodes, etc. your application uses; get the necessary information through kubectl calls

## Cluster Teardown

Have a look at the workloads still in the cluster in the web view. Teardown the Kubernetes cluster through terraform.

## Part 4 (0.75h)

- "Kubernetes in the Real World in an Ecommerce Project" at the whiteboard

## Feedback

- What did you like?
- What would you do differently next time?
