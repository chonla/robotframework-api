release:
	IMAGE=chonla/robotframework-api; \
	VERSION=$$(grep ^robotframework== ./requirements.txt | cut -c17-); \
	docker build --rm -t "$${IMAGE}:$${VERSION}" -t "$${IMAGE}:latest" .; \
	docker push "$${IMAGE}:$${VERSION}"; \
	docker push "$${IMAGE}:latest"