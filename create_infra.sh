#!/usr/bin/env bash

UUID="$(uuidgen)"

aws cloudformation create-stack --stack-name capstoneudacity$UUID --template-body capstone_infra.yml \
--parameters capstone_infra_parameter.json --region=eu-west-1

