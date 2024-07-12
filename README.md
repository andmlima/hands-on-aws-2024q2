# hands-on-aws-2024q2
## provisionar EKS cluster e Node
terraform apply
Validar k8s
  aws eks update-kubeconfig --region us-east-1 --name ciablue-eks
  kubectl get no
## adicionar Metrics Server ao k8s
cd k8s\k8s-infra-metrics-server									: kubeconfig já deve estar atualizado com o k8s atual.
  terraform apply 																	: deploy metrics-servers-k8s.tf
  kubectl top no
## anexar a politica do EBS CSI "AmazonEBSCSIDriverPolicy" no grupo do Nodes para AWS EBS CSI driver funcionar.	

## deploy aplicação 
 cd k8s\app
  kubectl apply -f pvc.yaml
  kubectl describe pvc wordpress-pvc
  kubectl apply -f hpa.yaml
  kubectl describe hpa
  kubectl apply -f deployment.yaml
  kubectl get hpa						: aguardar 5 minutos uso cpu
  kubectl get all
