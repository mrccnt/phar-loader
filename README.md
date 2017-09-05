# Phar Loader

This script downloads a collection of typical PHP dev tools. Useful in Jenkins build processes if you depend on those
binaries. Otherwise you could use composers `global` command to install everything in your composers home `~/.composer`.

##  Components

* [Composer](https://getcomposer.org)
* [Phing](https://www.phing.info)
* [PHPUnit](https://phpunit.de)
* [PHPUnit-Skelgen](https://github.com/sebastianbergmann/phpunit-skeleton-generator)
* [Behat](http://behat.org)
* [Box](http://box-project.github.io/box2)
* [PHPMD](https://phpmd.org)
* [Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer)
* [PHPCPD](https://github.com/sebastianbergmann/phpcpd)
* [PHPLOC](https://github.com/sebastianbergmann/phploc)
* [PDepend](https://pdepend.org)
* [ApiGen](http://apigen.org/)
* [PHPDOX](http://phpdox.de/)

## Usage

Oh well... A shell...

    $ ./get.sh
    
    PHP:                      7.0.22-0ubuntu0.16.04.1
    composer.phar:            Composer version 1.6-dev (d9885d5b3bd1b28a6d8c679df848540e565ee818) 2017-08-21 07:16:59
    phing.phar:               Phing 2.16.0
    phpunit.phar:             PHPUnit 6.3.0 by Sebastian Bergmann and contributors.
    phpunit-skelgen.phar:     phpunit-skelgen 2.0.1 by Sebastian Bergmann.
    behat.phar:               Behat version 2.4.0
    box.phar:                 Box version 2.7.5 build 8ce371cdc1f0005e087e9ca5c265b52b5f560fd4
    phpmd.phar:               PHPMD 2.6.0
    phpcs.phar:               PHP_CodeSniffer version 3.0.2 (stable) by Squiz (http://www.squiz.net)
    phpcbf.phar:              PHP_CodeSniffer version 3.0.2 (stable) by Squiz (http://www.squiz.net)
    phpcpd.phar:              phpcpd 3.0.0 by Sebastian Bergmann.
    phploc.phar:              phploc 4.0.0 by Sebastian Bergmann.
    pdepend.phar:             PDepend 2.5.0
    apigen.phar:              ApiGen version 4.1.0
    phpdox.phar:              phpDox 0.10.1 - Copyright (C) 2010 - 2017 by Arne Blankerts and Contributors
