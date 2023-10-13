|-- group_vars
|   `-- all
|-- hosts
|-- roles
|   |-- common
|   |   `-- tasks
|   |       `-- main.yml
|   |-- create_db_mysql
|   |   `-- tasks
|   |       `-- main.yml
|   |-- execute_mysql
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       |-- data.sql.j2
|   |       `-- schema.sql.j2
|   `-- install_mysql
|       |-- defaults
|       |   `-- main.yml
|       |-- tasks
|       |   `-- main.yml
|       `-- templates
|           `-- mariadb.cnf.j2
`-- site.yml
