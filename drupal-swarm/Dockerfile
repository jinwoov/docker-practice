# pulling the image from the drupal
FROM drupal:8.8.2

## running the update and installing the git. after that to delete any unneeded cache files
RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/list/*

## cd into the /var/www/html/themes
WORKDIR /var/www/html/themes

# cloning the bootstrap
RUN git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap

## changing the working directory to html
WORKDIR /var/www/html

