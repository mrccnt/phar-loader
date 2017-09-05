#!/usr/bin/env bash

getphar () {
    pharf=$2
    [ -f ${pharf} ] && rm ${pharf}
    printf "%-25s %s" ${pharf}:
    wget -q -O ${pharf} $1
    chmod +x ${pharf}
    varg="--version"
    [ "$3" != "" ] && varg=$3
    ver=$(php $2 ${varg})
    str=$(echo ${ver} | sed ':a;N;$!ba;s/\n/ /g')
    echo ${str}
}

script=$(readlink -f "$0")
phardir=$(dirname "${script}")
cd ${phardir}/dist
find . -name "*.phar" -delete

printf "%-25s %s\n" PHP: $(php -r 'echo PHP_VERSION;')
getphar https://getcomposer.org/composer.phar composer.phar
getphar http://www.phing.info/get/phing-latest.phar phing.phar -version
getphar https://phar.phpunit.de/phpunit.phar phpunit.phar
getphar https://phar.phpunit.de/phpunit-skelgen.phar phpunit-skelgen.phar
getphar https://cloud.github.com/downloads/Behat/Behat/behat.phar behat.phar
getphar https://github.com/box-project/box2/releases/download/2.7.5/box-2.7.5.phar box.phar
getphar http://static.phpmd.org/php/latest/phpmd.phar phpmd.phar
getphar https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar phpcs.phar
getphar https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar phpcbf.phar
getphar https://phar.phpunit.de/phpcpd.phar phpcpd.phar
getphar https://phar.phpunit.de/phploc.phar phploc.phar
getphar http://static.pdepend.org/php/latest/pdepend.phar pdepend.phar
getphar http://apigen.org/apigen.phar apigen.phar
getphar http://phpdox.de/releases/phpdox.phar phpdox.phar

cd - >> /dev/null