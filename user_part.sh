#!/bin/bash

### We set up the user used to access to the vogsphere

mkdir -p ~/.ssh &&
cat >> ~/.ssh/config << EOF
Host vgs vgs.42.us.org vgse vgse.42.us.org vogsphere vogsphere.42.us.org vogsphere-exam vogsphere-exam.42.us.org
	User vogsphere
EOF

echo "user part finished, welcome in the freedom !"
