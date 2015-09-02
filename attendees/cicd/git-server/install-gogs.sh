#!/bin/bash -eu

function installGogs(){
  local DOCKER_HOST_IP=$1
  local GOGS_HTTP_PORT=$2
  printf "\e[1;33m########################################\e[m\n"
  printf "\e[1;33m# Install Gogs Server on: %s\e[m\n" "${DOCKER_HOST_IP}"
  printf "\e[1;33m########################################\e[m\n"

  curl 'http://'${DOCKER_HOST_IP}':'${GOGS_HTTP_PORT}'/install' \
  -H 'Origin: null' -H 'Accept-Encoding: gzip, deflate' \
  -H 'Accept-Language: fr-FR,fr;q=0.8,en-US;q=0.6,en;q=0.4' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' \
  -H 'Cache-Control: max-age=0' \
  -H 'Connection: keep-alive' \
  --data 'db_type=MySQL&db_host=mysql%3A3306&db_user=mysql&db_passwd=mysql&db_name=gogs&ssl_mode=disable&db_path=data%2Fgogs.db&app_name=Gogs%3A+Go+Git+Service&repo_root_path=%2Fhome%2Fgit%2Fgogs-repositories&run_user=git&domain='${DOCKER_HOST_IP}'&ssh_port=22&http_port='${GOGS_HTTP_PORT}'&app_url=http%3A%2F%2F'${DOCKER_HOST_IP}'%3A3000%2F&smtp_host=&smtp_from=&smtp_email=&smtp_passwd=&admin_name=&admin_passwd=&admin_confirm_passwd=&admin_email=' --compressed

  printf "Configuration OK."
  printf "\e[1;33m# Go to http://%s:%s/user/sign_up\e[m\n" "${DOCKER_HOST_IP}" "${GOGS_HTTP_PORT}"

}

installGogs $1 $2
open http://$1:$2/user/sign_up
