Changelog
=========

0.7.2 (25-04-2014)
------------------
* ``nv off`` works in both cases: ``nv on <env-name>`` and
  ``nv on --same-shell <env-name>``
* added functions in common: ``nv_semver_get_(major|minor|patch|special)``
* added functions in common: ``nv_echo_err``
* added plugin for [php](http://www.php.net/)
* added plugin for prebuilt haskell
* improved shebangs (thanks to [Maciej Żok](https://github.com/macie))
* improved ``nv_get_plugin_version`` from ``common``: handles empty version
* improved command ``mk``: handles not existence plugins

0.7.1 (22-04-2014)
------------------
* improved ``ls-cache``/``rm-cache`` commands (added options for each section of
  the cache)
* ``julia`` plugin: fixed building
* added plugin for [scala](http://scala-lang.org/)

0.7.0 (21-04-2014)
------------------
* ``on``/``activate``/``use`` now works in a new shell by default
* ``on``/``activate``/``use``/``mk`` added option ``--same-shell``
* cache redesign: splited into sub-dirs {arc,src,build}
  * added migration script for the new cache
  * ``common``: added ``get_(build|arc|src)_path`` functions
  * fixed commands ``rm-cache``/``ls-cache``
  * fixed plugin: ``elixir``
  * fixed plugin: ``julia``
* added ``nv_get_system`` into ``common``
* ``mk`` added ``--force`` option
* ``mk`` added reset for ``plug_state``
* ``mk`` added clean ``src`` folder after build (for saving disk space)
* added ``plug_build`` function for usage in plugins
* added ``plug_build_env`` function for usage in plugins
* renamed plugin ``go`` into ``go-prebuilt``
* added plugin ``node-prebuild``
* added plugin ``rust-prebuilt``
* added plugin ``elixir-prebuilt``
* improved bash autocompletion for commands ``on``/``activate``/``use``/``do``

0.6.2 (14-04-2014)
------------------
* ``zsh`` init support:
  * ``mk`` command used ``unset -f`` for reset plugin's functions
  * added functions ``nv_is_zsh``/``nv_is_bash`` into common
  * basic autocompletion used for ``bash`` only
  * more universal implemetation of the ``nv_is_function``
  * more universal implemetation of the ``plug_list_versions`` in all plugins

0.6.1 (14-04-2014)
------------------
* ``nv_get_cpu_count``: added support for OSX
* ``mk`` command: added reset for ``plug_check_deps``
* fixed ``make uninstall`` & added it into README

0.6.0 (11-04-2014)
------------------
* added ``use`` command as synonym to ``activate``/``on``
* added functions for plugin: ``plug_unpack`` & ``plug_configure``
* fixed ``plug_install_default``: it works with any file ext, not only .tar.gz
* command ``mk``: improved logic of the creation of the environment
* added  function for plugin: ``plug_download``
* erlang-plugin: fixed sorting for ``ls-versions``
* added to all functions from ``nv_common`` module prefix ``nv_``
* added ``do`` command
* added option ``--on`` for ``mk`` command to active env after installation
* improved files downloading (``nv_download_file``):
  * used custom user-agent
  * used options for continue downloading if it was interrupted
* added option ``--no-meta`` for ``ls`` command
* improved environment's name autocompletion for ``rm``/``on``/``activate``/``use``
* added function ``plug_check_deps`` for checking dependencies before plugin
  building
* added plugin for [haskell](www.haskell.org)

0.5.2 (06-04-2014)
------------------
* added common function: ``nv_get_build_path``
* ``mk``: used ``nv_get_build_path``
* ``mk``: passed plugin version into ``plug_post_install_actions``
* node-plugin: all installed packages went into build dir, not environment

0.5.1 (04-04-2014)
------------------
* added ``plug_post_install_actions`` function for plugins
* removed ``plug_add_activate_script`` (used ``plug_post_install_actions``
  instead)
* python-plugin: added ``python`` symlink creation
* python-plugin: added ``pip`` installation
* erlang-plugin: added ``rebar`` installation
* fixed ``mk``: ``plug_install`` not reset to default state for each plugin

0.5.0 (28-03-2014)
------------------
* ``mk`` commands can store meta info about used plugins
* ``ls-envs`` can to read meta info
* improved autocomplete for ``mk``/``ls-versions``
* improved ``go`` plugin: added ``GOPATH`` into activation script
* added plugin for [python](https://www.python.org/)
* added ``plug_add_activate_script`` function for plugins
* added call for 'deactivate-' scripts during ``off``/``deactivate`` commands
* fixed ``go`` plugin: restore old values for ``GOROOT``/``GOPATH`` after
  deactivation of an environment
* fixed ``go`` plugin: improved activate-go content to be usabale after copy
* ``rm-envs`` output message if environment was successfully deleted
* ``ls-envs`` added environments sorting
* ``ls-envs`` renamed to ``ls`` (back)
* ``rm-envs`` renamed to ``rm`` (back)
* improved autocompletion for ``rm`` command

0.4.0 (19-03-2014)
------------------
* fixed ``on`` command if env's name is not entered
* ``activate``/``on`` commands: added env's name into prompt by default
* ``commands`` renamed to ``ls-commands``
* ``ls`` renamed to ``ls-envs``
* ``plugins`` renamed to ``ls-plugins``
* ``rm`` renamed to ``rm-envs``
* ``version`` renamed to ``ls-versions``
* added command ``ls-cache``
* added command ``rm-cache``
* added autocompletion
* added plugin for [go](http://golang.org/)

0.3.0 (22-02-2014)
------------------
* ``mk`` command accept empty environment name and generate it
  accordingly to plugins
* improved ``julia`` plugin (copied binaries not simlinks on them.
  importamt for ``cp`` command)
* added ``cp`` command for copy environments
* added ``mv`` command for renaming environments
* fixed error message if environment is not entered for ``on``/``activate``
* added option ``--prompt-enable`` for ``on``/``activate`` commands
* added plugin for [node.js](http://nodejs.org/)

0.2.1 (20-02-2014)
------------------
* fixed using ``download_file`` in ``mk`` command

0.2.0 (19-02-2014)
------------------

* ``plug_install`` is not mandatory function in the plugin file.
* added ``plug_url_for_download`` as replacement of the ``plug_install``
  in plugin body. Plugin's body now more easy to read/write.
* added tests for the most functions from ``nv_common``.
* fixed ``download_file`` from ``nv_common``: ``curl`` accounts redirects.
* standardized way to store archives in ``mk`` command.
* added plugin for [elixir](http://elixir-lang.org/).
* added plugin for [julia](http://julialang.org/).

0.1.0 (13-02-2014)
------------------

* Initial public release
