1. Create elastic beanstalk app with multi docker configration.  
2. Create security group with in bound mapping of tcp and port range 5432-6379 for postgres and elastic cache  
3. Create postgres db in rds use the above security group id created  
4. Create elastic cache with redis and use the above security group created 
5. Edit the elastic beanstalk environment configuration and also add the security group with keeping existing  
6. Edit elasticbeanstalk configuration>>configuration>software and add environment variables for below ones
- REDIS_HOST=url without port
- REDIS_PORT=redis port
- PGUSER=username of postgres
- PGHOST=full url without port for postgres
- PGDATABASE=dbname for postgres
- PGPASSWORD=postgres_password
- PGPORT=Port of Db postgres
