#vm instance
project_id           = "upheld-setting-436613-s1"
instance_name        = "dev-instance"
machine_type         = "e2-medium"
region               = "asia-east1"
zone                 = "asia-east1-a"
image                = "debian-cloud/debian-11"
network              = "default"

#gke
cluster_name         = "dev-cluster"
node_count           = 2
disk_size            = 25
