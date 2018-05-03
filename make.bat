@echo off

if "%1" == "clean" (
    for /d %%i in (work\build\*) do rmdir /q /s %%i
    del /q /s work\build\*
    goto end
)

docker-compose run --rm sphinx sphinx-build -N -b html -d build/doctrees source build/html -D html_enable_livereload=1

:end
