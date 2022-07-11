# Using `docker-compose` (Recommended)

1. Install Docker

	- [Docker Install documentation](https://docs.docker.com/install/)
	- [Docker-Compose Install documentation](https://docs.docker.com/compose/install/)

2. Create a new folder on your local machine and copy docker-compose\docker-compose.yml

3. Review the docker-compose.yml contents

4. Bring up your stack by running

	```bash
	docker-compose up -d
	```

5. Add your wallet
    ```bash
	docker-compose exec keys-add.sh
	```

6. Start the validator
	```bash
	docker-compose exec create-validator.sh
	```

# Cheat Sheet:

## Start

```bash
docker-compose up -d
```

# Stop

```bash
docker-compose down
```

# View Logs

```bash
docker-compose logs -f
```

# Upgrade

```bash
docker-compose down
docker-compose pull
docker-compose up -d
```