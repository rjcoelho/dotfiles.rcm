# return if requirements are not found.
if [ ! -x "$(command -v aws)" ]; then
    return 1
fi

# see http://blog.ryanparman.com/2014/01/29/easily-ssh-into-amazon-ec2-instances-using-the-name-tag/
function ip_from_instance() {
    echo $(aws ec2 describe-instances --profile $2 \
        --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" \
        --query='Reservations[0].Instances[0].PublicIpAddress' | tr -d '"')
}
# usage: ssh-aws nametag key.pem profile
function ssh-aws() {
    ssh -i ~/.ssh/$2 ec2-user@$(ip_from_instance $1 $3)
}
