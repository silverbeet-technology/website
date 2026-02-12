# website

This is the code for the [Silverbeet Technology](https://silverbeet.tech/) website, built with [Astro](https://astro.build) and the [Astro Base](https://astro.build/themes/details/astro-base/) theme. Viva Open Source!

## Installation

To build the Silverbeet site to base a project off of, install `npm` and `git` on your system and follow these steps

* Clone the repository

```shell
git clone https://github.com/silverbeet-technology/website.git
cd website
```

* Install dependencies

```shell
npm install
```

* Start the development server

```shell
npm run dev
```

* Open your browser Navigate to [localhost:4321](http://localhost:4321)

* More information on using this theme is available on their GitHub page: [jonnysmillie/astro-base](https://github.com/jonnysmillie/astro-base)

## Distrobox

I use [Distrobox](https://distrobox.it) extensively, basically it allows you to run a Linux environment as a container, and I use that as my development system to configure and build my websites, this way I can install required packages and not have to worry about poluting the host system. The only requrements are a container framework (Docker, Podman, etc), then installing Distrobox so it works together. After that you can try it out.

* First, edit the file `.dbx.ini` and edit it how you need, I run a minimal Alpine Linux image with the tools I need pre-installed.

```shell
vi .dbx.ini
```

* Then run it, the script calls that ini file as a configuration file and once the container is up and running it'll enter the environment

```shell
./dbx.sh
```

* Currently the only option I have in the script is 'remove' to remove the container if you need it cleaned up

```shell
./dbx.sh remove
```

## Icons

We use [tabler icons](https://tabler.io/icons), and you should too!

## Eratta

Once I had the site setup, before I could successfully build it I had to install another npm package:

```shell
npm install -D terser
```

### Thanks
