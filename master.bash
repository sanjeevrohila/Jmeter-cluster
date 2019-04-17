sudo kubectl create namespace jmeter
sudo kubectl create -n jmeter -f jmeter_slaves_deploy.yaml
kubectl create -n jmeter -f jmeter_slaves_svc.yaml
kubectl create -n jmeter -f jmeter_master_deploy.yaml
