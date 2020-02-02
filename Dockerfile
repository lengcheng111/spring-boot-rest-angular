#
# Hosts the Angular UI
#

# GET the Nginx from the official repo with Alpine lighweight linux engine
FROM nginx:1.11.5-alpine

EXPOSE 80
RUN apk add --update curl &&  \
    rm -rf /var/cache/apk/* && \
    rm /etc/nginx/conf.d/default.conf

#
# Add the latest commit ref and fetch the latest tar file
# Extract, move, cleanup & create a build version.txt file
#
#COPY .git/refs/heads/master /commit_hash.txt

COPY .git/refs/remotes/origin/develop /commit_hash.txt


RUN mkdir -p /var/www \
    && cd /var/www \
    && ( \
      commit_hash=$( cat /commit_hash.txt | cut -c -8); \

      mkdir webapp; \

      date > webapp/version.txt; \
      echo $commit_hash >> webapp/version.txt; \
    )

WORKDIR .

COPY dist /var/www/webapp

COPY deployment/nginx.conf /etc/nginx/nginx.conf
COPY deployment/webapp.conf /etc/nginx/sites-enabled/webapp.conf