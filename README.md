# Starter Postgress Express React Infrastructure

This Terraform configuration deploys resources to host

- an AWS CloudFront distribution and S3 bucket to host a single page application and
- an API Gateway that fills the frontend with (mocked) example data

that fills the single page application with static data.
The latter supports the operations

- `POST /auth/login` - user login
- `OPTIONS /auth/login` - CORS preflight request for the above
- `GET /api/posts` - get posts
- `OPTIONS /api/posts` - CORS preflight request for the above

The mocked API instance is configured to work with [adrach/starter-postgres-express-react](https://github.com/adrach/starter-postgres-express-react). Only some parts of its API operations are being simulated.

It has been developed to mock the deployment of an infrastructure similar to the one illustrated below, whereas the entire backend is replaced by the API Gateway.

![AWS Infrastructure Diagram](/img/aws.png)
