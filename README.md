# jekyll-php
A jekyll module that allows jekyll to output clean url php files


## Installation

Take the `_plugins` and `_includes` folders and paste them over your Jekyll site - you now have support for including PHP files with clean urls!

### No really, what else?

Well, if you want you can set a `php_path` in your `_config.yml` that will be prefixed to all your includes, but that's really it.

Include a PHP file of your choice like so:

    {% include php file="file.php" %}

This repository is a bear minimum implementation that echoes `$_SERVER['REMOTE_ADDR']`
