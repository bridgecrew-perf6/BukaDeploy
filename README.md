# LocalDeployment

Docker compose stack for development local deployment purpose

## Usage

This project should be clone at the root of others Buka's projects such as the following structure (you must respect the exact naming of directories):

```bash
├── docker-compose.yml
├── front-end
│   ├── customersapp # https://gitlab.com/bukapp/front-end/customersapp
│   ├── delivererapp # https://gitlab.com/bukapp/front-end/delivererapp
│   ├── ownerapp # https://gitlab.com/bukapp/front-end/ownerapp
│   └── staffapp # https://gitlab.com/bukapp/front-end/staffapp
├── microservices
│   ├── carts # https://gitlab.com/bukapp/microservices/carts
│   ├── commands # https://gitlab.com/bukapp/microservices/commands
│   ├── deliveries # https://gitlab.com/bukapp/microservices/deliveries
│   ├── foods # https://gitlab.com/bukapp/microservices/foods
│   ├── logger # https://gitlab.com/bukapp/microservices/logger
│   ├── payments # https://gitlab.com/bukapp/microservices/payments
│   ├── restaurants # https://gitlab.com/bukapp/microservices/restaurants
│   └── users # https://gitlab.com/bukapp/microservices/users
└── README.md
```



To run the dev stack, use the following command :

```bash
docker-compose up --build -d
```

