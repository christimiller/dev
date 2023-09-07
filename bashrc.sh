# Shortcuts
alias gp='grep -rn --color=auto'
alias gpi='grep -rni --color=auto'
alias gus='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

alias tarfolder='tar -zcvf'
alias untarfolder='tar -zxvf'

# Delete all running containers or images.
# NOTE: This will break Kubernetes if enabled within Docker Desktop on Mac.
alias dockerrm='docker rm $(docker ps -aq)'
alias dockerrmi='docker rmi $(docker images -q)'

# Terraform shortcuts for tabbing.
tfinit() {
    terraform init
}

tfplan() {
    terraform plan
}

tfapply() {
echo "Before using this command, configure e.g.: terraform apply -var account=ADDME -var project=ADDME -var region=ADDME --var bucket=ADDME"

}

tfrefresh() {
    terraform refresh
}

tfdestroy() {
    terraform destroy
}
