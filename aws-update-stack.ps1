$stack = $args[0]
$template = $args[1]
$params = $args[2]

aws cloudformation update-stack --stack-name $stack --region us-west-2 --template-body file://$template --parameters file://$params --capabilities CAPABILITY_IAM