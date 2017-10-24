myAppSettings
=============
This repository dedicated to settings configuration of programs I use for daily bases.

The settings are divided by program names and can be used for Windows, Linux or Mac OS platforms.<br>
Look at the comments below.

Codes description
-----------------

### myAppSettings folder

* `Emacs4general`: These settings are tested by [Cygwin][cygwin] on Windows 7 platform in command line mode (CLI).<br>
   ***General*** means that is was created for general purposes.<br>
   **Note :** The actual settings files are located in `~/.emacs.d/settings` and separated by sense.<br>
   The main config file is `.emacs` located in the home directory.

* `Emacs4python`: These settings are tested by [Cygwin][cygwin] on Windows 7 platform in command line mode (CLI).
   They are specific for [Python][python] programming and used for own entertainment.
   GNU [Emacs][emacs] is old enough editor with strong power.
   Because of Emacs is using the [Lisp][lisp] programming language, the settings may look complicated.<br>
   ***Requires :*** Any Linux/UNIX based platform, [Emacs][emacs], [Auto Complete][autocomplete], [Python Mode][pythonmode] plugin.<br>
   **Note :** The actual settings files are located in `~/.emacs.d/settings` and separated by sense.<br>
   The main config file is `.emacs` located in the home directory.<br>
   The plugins version **MUST** be changed according your real version in your setting files.<br>
   The settings are RAW, so may work incorrectly. Any tips are **WELCOME**.

* `HandmadeHero`: These settings are from [HandmadeHero][handmadehero] project by Casey Muratori.<br>
   Casey using the Emacs for programming. So, these settings are very convenient for his style of programming.<br>
   ***Requires :*** [Emacs][emacsdl].

* `Docker`: [Docker][docker] is a software technology providing containers, promoted by the company [Docker][docker], Inc. Docker provides an additional layer of abstraction and automation of operating-system-level virtualization on Windows and [Linux][linux]. Docker uses the resource isolation features of the Linux kernel such as *cgroups* and kernel *namespaces*, and a union-capable file system such as *OverlayFS* and others to allow independent "containers" to run within a single Linux instance, avoiding the overhead of starting and maintaining virtual machines (VMs). The sub-folders here are divided by image names and combine Docker files for custom image creation and additional scripts.<br>
   `Nginx`: Custom image creation for [Nginx][nginx] WEB server.<br>
   ***Requires :*** [Linux][linux] and [Docker][docker] installed.

* `All Applications`:<br>
   ***Requires :*** Windows, [Linux][linux] or Mac OS platform<br>
   ***Important:*** There is nothing to important yet.

* `To be continued...`

### License

These code may be COPYRIGHT PROTECTED by ©2017 DimiG

[cygwin]:http://www.cygwin.com
[python]:http://www.python.org
[emacs]:http://www.gnu.org/software/emacs
[lisp]:https://en.wikipedia.org/wiki/Lisp_%28programming_language%29
[autocomplete]:http://www.emacswiki.org/emacs/AutoComplete
[pythonmode]:https://launchpad.net/python-mode
[handmadehero]:https://handmadehero.org
[emacsdl]:http://mirror.tochlab.net/pub/gnu/emacs/windows/
[docker]:https://www.docker.com
[linux]:https://en.wikipedia.org/wiki/Linux
[nginx]:https://en.wikipedia.org/wiki/Nginx
