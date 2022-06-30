#/bin/sh

mkdir microservices front-end api-gateway

targetdirs=(
    'microservices'
    'front-end'
)

microservicesarray=(
    'git@gitlab.com:bukapp/microservices/carts.git::carts'
    'git@gitlab.com:bukapp/microservices/commands.git::commands'
    'git@gitlab.com:bukapp/microservices/deliveries.git::deliveries'
    'git@gitlab.com:bukapp/microservices/foods.git::foods'
    'git@gitlab.com:bukapp/microservices/logger.git::logger'
    'git@gitlab.com:bukapp/microservices/payments.git::payments'
    'git@gitlab.com:bukapp/microservices/restaurants.git::restaurants'
    'git@gitlab.com:bukapp/microservices/users.git::users'
)

frontendarray=(

)


git clone git@gitlab.com:bukapp/microservices/gateway.git ./api-gateway

for dir in "${targetdirs[@]}"; do
    if [ $dir = "microservices" ];
    then
        for repo in "${microservicesarray[@]}"; do
            SSH="${repo%%::*}"
            NAME="${repo##*::}"

            git clone $SSH $dir/$NAME
            cd $dir/$NAME
            npm install
            cd ../..
        done
    fi

    if [ $dir = "front-end"];
    then
        echo "WIP"
done

docker-compose up --build -d
