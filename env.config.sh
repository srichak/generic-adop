#!/bin/bash


# LDAP

export LDAP_SERVER="ldap:389"
export LDAP_DOMAIN="ldap.example.com"
export LDAP_FULL_DOMAIN="dc=ldap,dc=example,dc=com"
export LDAP_USER_BASE_DN="ou=people"
export LDAP_GROUP_BASE_DN="ou=groups"
export LDAP_USER_SEARCH="uid={0}"
export LDAP_ADMIN="cn=admin"
export LDAP_ACCOUNTPATTERN='(cn=${username})'
export LDAP_ACCOUNTFULLNAME='${cn}'
export LDAP_GROUPPATTERN='(cn=${groupname})'
export LDAP_GROUPMEMBERPATTERN='(uniqueMember=${dn})'
export LDAP_MANAGER_DN="cn=admin,dc=ldap,dc=example,dc=com"
export LDAP_GROUP_NAME_ADMIN="administrators"

# Gerrit MySQL

#export GERRIT_MYSQL_USER="gerrit"
#export GERRIT_MYSQL_PASSWORD="gerrit"
#export GERRIT_MYSQL_DATABASE="gerrit"

# Gerrit

#export GERRIT_USER_NAME="Gerrit Code Review"
#export GERRIT_USER_EMAIL="gerrit@adop"

# Gitlab

export GITLAB_ROOT_PASSWORD=${PASSWORD_GITLAB}
export GITLAB_DB_PORT=5432
export GITLAB_DB_USER=git
export GITLAB_DB_NAME=gitlabhq_production
export GITLAB_DB_ENDPOINT=endpoint
export GITLAB_PWD=password
# Gerrit and Jenkins
#export GERRIT_JENKINS_USERNAME="jenkins"

# Sonar MySQL

export SONAR_MYSQL_USER="sonar"
export SONAR_MYSQL_PASSWORD="sonar"
export SONAR_MYSQL_DATABASE="sonar"

# Jenkins

export SONAR_ACCOUNT_LOGIN="jenkins"
export SONAR_DB_LOGIN=${SONAR_MYSQL_USER}
export SONAR_DB_PASSWORD=${SONAR_MYSQL_PASSWORD}
export CARTRIDGE_SOURCES="https://raw.githubusercontent.com/Accenture/adop-cartridges/master/cartridges.yml"

# Jenkins Slave
export SLAVE_EXECUTORS=1

# Jenkins Certificate Path
####
# "//" to cater for both Windows and Unix path
####
export DOCKER_CLIENT_CERT_PATH="//root/.docker/"

# SSL Settings
export PROTO="http"
