# UserRegistrationClient

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 8.0.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Build backend
```sh 
  $ docker build -t register-service .
  $ docker run  --name register-service -d -p 9090:8080 register-service
```
## Build postgres server
```sh
  $ docker run --name postgresql -itd --restart always \
    --publish 5433:5432 \
    --volume /srv/docker/postgresql:/var/lib/postgresql \
    --env 'DB_USER=postgres' \
    --env 'DB_PASS=123456' \
```
## Build client
```sh
  $ docker build -t client-v2:prod --build-arg configuration="" .
  $ docker run --name register-ui -d -p 4200:4200
```

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
