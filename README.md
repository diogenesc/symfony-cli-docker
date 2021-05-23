
# Symfony CLI Docker

An image with Symfony CLI and Composer on top of PHP 8 Alpine


## Usage/Examples

See available commands
```bash
docker run --rm -it diogenesc/symfony-cli help
```

Start new project
```bash
docker run --rm -it -v $(pwd):/opt -u "$(id -u):$(id -g)" diogenesc/symfony-cli new demo-project
```