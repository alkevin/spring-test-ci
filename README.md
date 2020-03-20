# spring-test-ci

test spring ci

## Badges

-------

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct.md)
-------

-------
>Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms.
-------

## HOW TO USE

* on root project run :
  
```bash
docker build -t spring-test-ci .
```

* then :

```bash
docker run -p 8081:8080 --name <IMAGE_NAME> spring-test-ci
```
