# simple-react-app - Containerized sample react app automatically deployed to AWS EB

> ## Launch locally using Terraform
>
> *This method uses Terraform to execute the provided main.tf file in order to launch the application.*

Within the root of the project file directory, run:

### `terraform init`

This initializes the project & gathers dependencies.

### (optional) - `terraform plan`

Will output all of the resources that Terraform will build if `terraform apply` is run.

### `terraform apply --auto-approve`

Tells Terraform to actually build all of the defined resources.
The `--auto-approve` flag eliminates the need to confirm the build.  Without it, you will first be prompted to continue after a plan is output to STDOUT for review, and thus you are given a chance to cancel the deployment if you choose.

**Once you are finished, run `terraform destroy --auto-approve` to delete/remove everything created by Terraform.**

---

> ## Launch locally using Docker Compose
>
> *This method uses the provided docker-compose yaml file (which uses the provided Dockerfile) to launch the application.*

Within the root of the project file directory, run:

### `docker-compose up`

You should now be able to navigate to http://localhost:8080/ and see the app up & running.

**Once you are finished, run `docker-compose down` to stop the container.**

---

*This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).*
