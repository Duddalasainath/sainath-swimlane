# Swimlane DevOps Practical

This is a demo application to use for working on the Swimlane DevOps hiring practical project.

### Install

Required environment variables:
- `MONGODB_URL` - Full MongoDB connection URI to connect to

### Testing Locally
```sh
git clone git://github.com/swimlane/devops-practical.git
npm install
cp .env.example .env
npm start
```

Then visit [http://localhost:3000/](http://localhost:3000/)


############################################################################

# 1. build image
docker build -t swimlane-app:local .


I used the kind cluster hence i dont have aws eks account.

# 2. create kind cluster
kind create cluster --name kind


# 3. load image into kind
kind load docker-image swimlane-app:local --name kind


# 4. install helm chart
helm install swimlane ./chart -n swimlane --create-namespace


# 5. port-forward to localhost
kubectl port-forward svc/swimlane-service 3000:3000 -n swimlane
# open http://localhost:3000

