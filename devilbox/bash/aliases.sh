# general
alias l='ls -a'
alias ll='ls -al'
alias www='cd /shared/httpd'
alias cls='clear'

# command composer 1 and 2
# alias c1='/usr/local/bin/composer-1'
alias c1='composer-1'
alias c2='composer-2'

# commands magento
alias m2='bin/magento'
alias m2-c-c='m2 cache:clean'
alias m2-c-f='m2 cache:flush'
alias m2-s-u='m2 setup:upgrade'
alias m2-i-r='m2 indexer:reindex'
alias m2-s-d='m2 setup:static-content:deploy pt_BR -f'
alias m2-m-s='m2 module:status'
alias m2-m-e='m2 module:enable'
alias m2-m-d='m2 module:disable'
alias m2-create-user-admin='m2 admin:user:create --admin-user="mateus" --admin-password="senha123@" --admin-email="mateus@email.com.br" --admin-firstname="Mateus" --admin-lastname="Teste"'
alias m2-admin-url='m2 info:adminuri'

# permissions instalation magento
alias m2-permissions='sudo chmod 777 -R var && sudo chmod 777 -R generated &&
sudo chmod 777 -R app/etc && sudo chmod 777 -R pub/media && sudo chmod 777 -R pub/static && sudo rm -rf var/cache'

# magento cloud
alias cloud='magento-cloud'
alias cloud-install='curl -sS https://accounts.magento.cloud/cli/installer | php && export PATH=$PATH:$HOME/.magento-cloud/bin && echo "    $(tput setaf 7)Seu token é: { 1234 } $(tput sgr 0)" && magento-cloud auth:api-token-login'
alias cloud-ssh='magento-cloud ssh -e'
alias cloud-medias='magento-cloud mount:download'

# n98
alias n98='n98-magerun2.phar'
alias n98-list='n98-magerun2.phar list'
alias n98-mage-info='n98 sys:info'
alias n98-create-customer='n98 customer:create mateus@email.com.br @senha10 Mateus Santin base taxvat 227.286.020-69'
alias n98-db-dump='n98 db:dump mage_${pwd | cut -d "/" -f4}_$(date +"%d-%m-%Y") --compression="gzip"'
alias n98-db-import='n98 db:import'
alias n98-urlbase='n98 db:query "select * from core_config_data where path like \"%base%url%\";"'
alias n98-set-urlbase='n98 db:query "update core_config_data set value = \"http://${pwd | cut -d "/" -f4}.test/\" where path = \"web/unsecure/base_url\";update core_config_data set value = \"https://${pwd | cut -d "/" -f4}.test/\" where path = \"web/secure/base_url\";update core_config_data set value = \"http://${pwd | cut -d "/" -f4}.test/\" where path = \"web/unsecure/base_link_url\";update core_config_data set value = \"https://${pwd | cut -d "/" -f4}.test/\" where path = \"web/secure/base_link_url\";" && n98-urlbase'

# mage2tv
alias mage2tv='~/.composer/vendor/bin/cache-clean.js --watch'

# wordpress
alias wp-new='git clone https://github.com/WordPress/WordPress site'
