telepresence --new-deployment telepresence-k8s --docker-run -e PROFILES=discovery --rm -v$(pwd):/build -v $HOME/.m2/repository:/m2 -p 8080:8080 maven:3.5.3-jdk-8-slim mvn -Dmaven.repo.local=/m2 -f /build spring-boot:run