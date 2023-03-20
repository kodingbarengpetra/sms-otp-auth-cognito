

.PHONY: generate-api

generate-api:
	echo "Generating backend API" && \
		cd backend && \
		oapi-codegen --package api -generate types,server,spec ../main.yml > api/api-server.gen.go && \
		echo "Done"
	echo "Generating web API" && \
		cd web && \
		echo "Done"

.PHONY: install
install:
	echo "Installing golang" && \
		cd backend && \
		go mod vendor && \
		echo "Done"
	echo "Installing node" && \
		cd web && \
		npm install && \
		echo "Done"
