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
<p align="right">
  <a href="#-license">
    <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=ed2945&labelColor=000000">
  </a>
</p>

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


<div align="center">
<h1>Databases</h1>

<br>
<span>
<img width="150" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" />
</span>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/182884894-d3fa6ee0-f2b4-4960-9961-64740f533f2a.png" />
</span>
</div>


<br>
<br>



#### Why PostgreSQL

1. **Data Integrity**: PostgreSQL supports data integrity features such as foreign keys, atomic transactions, and multi-version concurrency control (MVCC), which are essential for maintaining consistent relationships among tables, such as the relations between orders, customers, order-items, products, and payments.
2. **Extensibility and Type Compatibility**: It can be extended with custom data types, functions, and operators, which can be useful for customizing the behavior of table operations, such as those for the products table, for example.
3. **Performance and Reliability**:  PostgreSQL is known for its high reliability and performance with large volumes of data and complex transactions, which is crucial for order and payment management systems.
4. **Advanced Features**: It provides advanced features like subselects, nested transactions (savepoints), and a sophisticated system of concurrency control, all important for complex operations involving multiple tables and updates.
5. **Support for SQL and NoSQL**: In addition to supporting full SQL, PostgreSQL also has support for JSON and other NoSQL operations, allowing for flexibility in data handling, which can be useful for managing semi-structured data in fields like the description of products.
6. **Security**: It offers a robust access control system, with support for various authentication techniques, which is critical for protecting sensitive customer and transaction information.
7. **Open Source**: It is open source, meaning there are no licensing costs, and it has an active community contributing to its continuous maintenance and improvement.

<br><br>

#### Why Redis

A escolha de utilizar Redis como a tecnologia subjacente para persistir dados de trabalho na arquitetura de filas é fundamentada em diversos benefícios que oferece ao sistema. Abaixo estão alguns pontos-chave que justificam essa decisão:

- **Desempenho e Confiabilidade**: Redis é conhecido por sua alta performance e confiabilidade. Sua estrutura de armazenamento em memória permite acesso rápido aos dados, tornando-o ideal para operações de fila que exigem baixa latência e alto throughput. Além disso, sua natureza persistente garante que os dados de trabalho sejam preservados mesmo em casos de falhas de sistema, garantindo assim a confiabilidade do sistema como um todo.

- **Escalabilidade e Distribuição**: Redis suporta uma arquitetura distribuída, o que é essencial para sistemas que precisam lidar com grandes volumes de trabalho e distribuí-los de forma eficiente entre vários nós. Ao utilizar Redis como backend para as filas, podemos facilmente escalar horizontalmente, adicionando mais nós conforme necessário, sem comprometer o desempenho ou a disponibilidade do sistema.

- **Independência de Plataforma**: A escolha do Redis oferece independência de plataforma para a arquitetura de fila. Isso significa que podemos ter diferentes partes do sistema, como produtores, consumidores e ouvintes de fila, sendo executados em diferentes plataformas Node.js em diferentes nós da rede. Isso proporciona flexibilidade na arquitetura do sistema e facilita a integração com outras partes do ecossistema de aplicativos.

- **Integração com Bull**: Bull é uma implementação de sistema de filas baseada em Node.js que é popular e bem suportada pela comunidade. Ao escolher Redis como backend para Bull, aproveitamos a compatibilidade e a integração perfeita entre essas duas tecnologias. Isso simplifica o desenvolvimento, a manutenção e o suporte do sistema de filas, permitindo-nos focar mais na lógica de negócios do que na infraestrutura subjacente.

- **A integração com o NestJS**: através do pacote @nestjs/bull representa um ponto crucial na escolha da tecnologia Redis para suportar nossa arquitetura de filas. Esse pacote oferece uma camada de abstração amigável ao Nest sobre o Bull, simplificando ainda mais o processo de integração das filas em nosso aplicativo NestJS. Com essa integração, podemos aproveitar os recursos poderosos do Bull, como alta performance e confiabilidade, enquanto nos beneficiamos da estrutura organizada e modular do NestJS. Isso nos permite desenvolver e manter nosso sistema de filas de forma mais eficiente, garantindo uma integração harmoniosa com o restante da nossa aplicação.
  
Em resumo, a escolha do Redis como tecnologia para suportar a arquitetura de filas oferece benefícios significativos em termos de desempenho, confiabilidade, escalabilidade e integração, tornando-o uma escolha sólida e justificável para nosso sistema.

<br><br>

<div align="center">
  <h2>Entity Relationship Diagram - Database</h2>
  <img src="./assets/er-diagram.png" alt="ER Diagram" />
</div>

<br>

<br> 

