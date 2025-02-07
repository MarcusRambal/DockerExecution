docker &

sleep 5

docker run --rm -v /app/DockerScripts:/ app -w /app ubuntu bas -c "ls -la && echo 'respositorio listo'
