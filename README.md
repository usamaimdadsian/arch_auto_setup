docker-compose up -d

docker-compose exec ansible_test bash

docker-compose down

ansible-playbook main.yml
