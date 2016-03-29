# PHP Components

This installs a collection of PHAR development tools. Works pretty well using ubuntu. I guess some things need to be adjusted to make it work on other distros.

##  Components

* [Box](http://box-project.github.io/box2) - Building and managing PHARs
* [Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer) - Detect coding standard violations
* [Composer](https://getcomposer.org) - Dependency Manager
* [Phing](https://www.phing.info) - Build System
* [PHPCPD](https://github.com/sebastianbergmann/phpcpd) - Copy/Paste Detector
* [PHPLOC](https://github.com/sebastianbergmann/phploc) - Measure project size/structure
* [PHPUnit](https://phpunit.de) - PHPUnit Testing Framework
* [PHPUnit-Skelgen](https://github.com/sebastianbergmann/phpunit-skeleton-generator) - PHPUnit Skeleton Generator
* [PHPMD](https://phpmd.org) - Mess Detector
* [PHPDOC](https://www.phpdoc.org/) - Documentor
* [PHPDOX](http://phpdox.de/) - Documentor

The installer script picks the correct component version for you installer PHP version.

## Installation

Execute as default user and enter password when asked.

Example:

    $ ./install.sh 
    
    [sudo] Password for your-username: 
    
    PHP Component Installer version 0.1.1
    
    Installing for PHP 7.0.4-5ubuntu2
    
    >> Composer version 1.0-dev (e8b1a5f35772e39ca21ab855a278bd84a0a534b2) 2016-03-29 07:53:57
    >> Phing 2.14.0
    >> PHP_CodeSniffer version 2.5.1 (stable) by Squiz (http://www.squiz.net)
    >> PHP_CodeSniffer version 2.5.1 (stable) by Squiz (http://www.squiz.net)
    >> phpcpd 2.0.2 by Sebastian Bergmann.
    >> phploc 3.0.0 by Sebastian Bergmann.
    >> phpunit-skelgen 2.0.1 by Sebastian Bergmann.
    >> PHPMD 2.4.2
    >> phpDox 0.8.1.1 - Copyright (C) 2010 - 2016 by Arne Blankerts
    >> Box version 2.7.2 build 039526133da45294f4815e707f4caf86fd425a16
    >> PHPUnit 5.2.12 by Sebastian Bergmann and contributors.
    >> PhpDoc does not support PHP 7

