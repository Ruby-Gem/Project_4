[![Ruby-Gem](https://circleci.com/gh/Ruby-Gem/Project_4.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

# Deployment of the Boston House House Price model on Kubernetes for microservices
using Kubernetes to deploy a machine learning model as a microservice. Through an API call, this container provides housing price predictions.

# Dependencies
List of software dependencies are:
* Docker
* Hadolint
* Python 3.7
* Kubernetes(minikube)
* onlineyamltools.com/edit-yaml

# Build Instructions
## 1. Repo Clone
<pre>
git clone https://github.com/Ruby-Gem/Project_4.git
</pre>
## 2. Establish Enviroment
<pre>
python3 -m venv ~/.devops
source ~/.devops/bin/activate
</pre>
## 3. Set up dependencies
### Docker
For linux users, choose and follow the steps in this <a href="https://runnable.com/docker/install-docker-on-linux">link</a> according to your linux distribution.
Using yum package manager.
<pre>
sudo yum update -y
sudo yum install docker-engine -y
</pre>

### Kubernetes(minikube)
<pre>
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo chmod +x minikube
sudo mv minikube /usr/local/bin/
</pre>

## 4. Install Packages
<pre>
make install
</pre>

## 5. Lint Code
<pre>
make lint
</pre>

## 6. Run Docker
<pre>
./run_docker.sh
</pre>

## 7. Make a Prediction
<pre>
./make_prediction.sh
</pre>

# Glossary
<h3>.circleci</h3>: Contains configuration file for CI/CD.<br>
<h3>make_prediction.sh</h3>: Sends post request aiming to trigger an inference on the flask app api<br>
<h3>run_docker.sh</h3>: Builds a docker container for the flask app<br>
<h3>run_kubernetes.sh</h3>: Builds a microservice on kubernetes cluster<br>
