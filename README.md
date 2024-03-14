<br><br>

<div align="center">

<h3>
    Google Cloud Platform + Infrastructure as Code
</h3>

<br>

<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183911547-990692bc-8411-4878-99a0-43506cdb69cf.png" />
</span>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183345121-36788a6e-5462-424a-be67-af1ebeda79a2.png" />
</span>
</div>

</div>


<br>

### This is a project to generate a Infrastructure in Google Cloud Platform. This works with many modules made with Terraform to set all configuration.

<br>

## Requirements

- Google Cloud Platform account
- Create a project
- Create a Service Account - and get the credentials JSON
- Create on google-cloud-storage (optional)
  - bucket to storage .tfstate
  - set backend name in providers.tf
 
<br>

## How to run

### To init

`terraform init -upgrade`

### To run 

`terraform apply --auto-approve`

### To destroy

`terraform destroy --auto-approve`

### To connect on cluster

`gcloud container clusters get-credentials <CLUSTER_NAME> --region us-central1 --project <PROJECT_NAME>`

### To format code

`terraform fmt -recursive`

### To validate code

`terraform validate`

<br>

## Inputs

  - project_id
    - The Project Id
  - credentials
    - JSON file with credentials
  - zone
  - region

## Outputs

  - db_info
    - public_ip_address
    - database
    - user
    - password
    - sensitive = true
  - cluster_info
    - cluster_ca_certificate
    - cluster_auth
    - cluster_endpoint
    - sensitive = true

<br><br>

<h1 align="center">Orderly db</h1>

<p align="center">
  <a href="#-license">
    <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=ed2945&labelColor=000000">
  </a>
</p>

## 💻 Project


Orderly is a cutting-edge web system designed to streamline operations for restaurant and food businesses (RMS). It draws from the principles of **Domain-Driven Design (DDD)** and **Architectural Concepts** to ensure scalability, maintainability, and a robust integration capability.

## ✨ Technologies

This project was built using the following technologies and architectural concepts:

- [Terraform](https://www.terraform.io/)
- [PostgreSQL](https://www.postgresql.org/)

<br>

<div align="center">
  <h2>Entity Relationship Diagram - Database</h2>
</div>

#### Why postgresql

1. **Data Integrity**: PostgreSQL supports data integrity features such as foreign keys, atomic transactions, and multi-version concurrency control (MVCC), which are essential for maintaining consistent relationships among tables, such as the relations between orders, customers, order-items, products, and payments.
2. **Extensibility and Type Compatibility**: It can be extended with custom data types, functions, and operators, which can be useful for customizing the behavior of table operations, such as those for the products table, for example.
3. **Performance and Reliability**:  PostgreSQL is known for its high reliability and performance with large volumes of data and complex transactions, which is crucial for order and payment management systems.
4. **Advanced Features**: It provides advanced features like subselects, nested transactions (savepoints), and a sophisticated system of concurrency control, all important for complex operations involving multiple tables and updates.
5. **Support for SQL and NoSQL**: In addition to supporting full SQL, PostgreSQL also has support for JSON and other NoSQL operations, allowing for flexibility in data handling, which can be useful for managing semi-structured data in fields like the description of products.
6. **Security**: It offers a robust access control system, with support for various authentication techniques, which is critical for protecting sensitive customer and transaction information.
7. **Open Source**: It is open source, meaning there are no licensing costs, and it has an active community contributing to its continuous maintenance and improvement.

<div align="center">
  <img src="./assets/er-diagram.png" alt="ER Diagram" />
</div>

<br>

<br> 

## 📝 License

This project is licensed under the MIT License. For more information, please refer to the [LICENSE](LICENSE.md) file.
