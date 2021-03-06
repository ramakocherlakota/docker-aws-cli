docker run \
       --rm \
       --name $1 \
       -e AWS_REGION=${AWS_REGION} \
       -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
       -e AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN} \
       -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
       -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
       -it -v ${PWD}:/work \
       -w /work \
       aws-cli \
       /bin/bash
