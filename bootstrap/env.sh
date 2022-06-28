# set this to the PROJECT_ID
export GCP_PROJECT=argo-crossplane-gke
# set this to whatever you want the service account name to be
export SA=crossplane-svc-acct  
# don't change this     
export GCP_SVC_ACCT="$SA@$GCP_PROJECT.iam.gserviceaccount.com"  
# set this to the path where you want to store Crossplane's authentication key file.
# If you just use a filename (like here), it will be stored in your home directory
# Otherwise, you can specify a path and filename
export KEY_FILE="$SA-keyfile.json"         
# set this to the namespace in your **Crossplane Kubernetes Cluster** where will store
# the information for the Crossplane GCP provider to connect to GCP.
# This can be the namespace Crossplane is running in (typically crossplane-system)
# but it doesn't have to be.  For this tutorial, use it.
export PROVIDER_SECRET_NAMESPACE=crossplane-system
