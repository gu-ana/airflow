FROM apache/airflow:1.10.10-2-python3.7

ENV AIRFLOW_HOME=/opt/airflow/
RUN pip install --user 'apache-airflow[oracle, mysql, crypto]' \
    mysql-connector-python oci cx_oracle pathlib datetime
COPY --chown=airflow:airflow ./fernet.py fernet.py
COPY --chown=airflow:airflow ./airflow.cfg /opt/airflow/airflow.cfg
RUN chmod u+w /opt/airflow/airflow.cfg

# RUN chmod +x airflow.sh
# COPY ./my.conf /etc/mysql/conf.d/mysql.cnf
# CMD ./airflow.sh