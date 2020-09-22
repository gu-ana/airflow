To initialize your containers, on CLI, execute `docker-compose up initdb` before `docker-compose up` in the directory as the mysql container takes longer to initialize
and it is preferable to make sure that mysql runs first as airflow depends on it for backend.

