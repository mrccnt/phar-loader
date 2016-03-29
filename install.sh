#!/usr/bin/env bash

installphar () {
    tfile="phar.temp"
    [ -f ${tfile} ] && rm ${tfile}
    wget -q -O ${tfile} $1
    chmod +x ${tfile}
    [ -f /usr/local/bin/$2 ] && sudo rm /usr/local/bin/$2
    sudo mv ${tfile} /usr/local/bin/$2
    varg="--version"
    [ "$3" != "" ] && varg=$3
    ver=$($2 ${varg})
    echo $(trim "${ver}")
}

trim () {
    echo ">> $1" | sed ':a;N;$!ba;s/\n/ /g'
}

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install wget curl

echo
echo
echo "PHP Component Installer version 0.1.1"
echo

if [ $(which php) = "" ]; then
    echo "PHP is not installed..."
    echo
    exit 1
else
    echo "Installing for PHP $(php -r 'echo PHP_VERSION;')"
    echo
fi

# Default Phar Installations
#
installphar https://getcomposer.org/composer.phar composer
installphar http://www.phing.info/get/phing-latest.phar phing -version
installphar https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar phpcs
installphar https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar phpcbf
installphar https://phar.phpunit.de/phpcpd.phar phpcpd
installphar https://phar.phpunit.de/phploc.phar phploc
installphar https://phar.phpunit.de/phpunit-skelgen.phar phpunit-skelgen
installphar http://static.phpmd.org/php/latest/phpmd.phar phpmd
installphar http://phpdox.de/releases/phpdox.phar phpdox

# Special Handling for Box
#
# Box brings its own installer and verifies dependencies
#
curl -qLSs https://box-project.github.io/box2/installer.php | php >> /dev/null
[ -f /usr/local/bin/box ] && sudo rm /usr/local/bin/box
sudo mv box.phar /usr/local/bin/box
echo $(trim "$(box --version)")

# Special Handling for PhpUnit
#
# Depending on your PHP version you need a special version of PhpUnit
#
punittag=$(php -r "echo version_compare(PHP_VERSION,'5.6.0')>=0?'':'-old';")
installphar https://phar.phpunit.de/phpunit${punittag}.phar phpunit

# Special Handling for PhpDoc
#
# PhpDoc is not compatible to PHP 7
#
phpdoctag=$(php -r "echo version_compare(PHP_VERSION,'7.0.0')>=0?'':'install';")
if [ "${phpdoctag}" != "install" ]; then
    trim "PhpDoc does not support PHP 7"
else
    installphar http://phpdoc.org/phpDocumentor.phar phpdoc
fi

echo