@echo off
docker-compose run --rm sphinx sphinx-build -b html -d build/doctrees source build/html -D html_enable_livereload=1
