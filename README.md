# website

This is the code for the [Silverbeet Technology](https://silverbeet.tech/) website, built with [Astro](https://astro.build) and the [Astro Base](https://astro.build/themes/details/astro-base/) theme. Viva Open Source!

## Installation

To build the Silverbeet site to base a project off of, install the following required packages on your system

- git
- make
- npm

* Check-out the code by cloning the repository

```shell
git clone https://github.com/silverbeet-technology/website.git
cd website/base
```

- Install the Astro npm packages and dependencies, using my Makefile

```shell
make install
```

- Start the development server

```shell
make dev
```

- Open your browser Navigate to [localhost:4321](http://localhost:4321) to view the current site

- Once you make changes in your code editor and save anything, it'll auto refresh the site in your browser showing you the changes almost immediately

- More information on using this theme is available on their GitHub page: [jonnysmillie/astro-base](https://github.com/jonnysmillie/astro-base)

## Distrobox

I do all of my work in Linux, if you do too you may want to try my method of using [Distrobox](https://distrobox.it) to create a self-contained, secure, development environment.

I use Distrobox pretty extensively, it's a great tool that allows you to run a Linux environment in a container, I use it as my development environment, this way I can install required packages and not have to worry about polluting the host system.

The only requirements are a container framework ([Docker](https://www.docker.com/), [Podman](https://podman.io/), etc), and Distrobox so it works together. After that you can try it out.

- Install the required packages

```shell
docker (or Podman)
distrobox
```

- Edit or review the file `.dbx.ini`, the defaults will work fine. I run a minimal Linux image with the tools I need pre-installed, there are a few options in the file you may find useful.

```shell
vi .dbx.ini
```

- Then run the script which calls that file and once the container is up and running it'll enter the environment

```shell
./dbx.sh
```

- Follow the prompts and once it drops you into the new environment, change into the `base` directory

```shell
cd base
```

- Then follow the steps above in the Installation section to install the Astro requirements and start the server. When you're done simply type `exit` to leave the environment

```shell
exit
```

- If you want to enter the environment again just run the script again, if the container is still there, it'll configure everything and drop you in as it did before

```shell
./dbx.sh
```

- Currently the only option I have in the script is `remove` to remove the container if you need it cleaned up

```shell
./dbx.sh remove
```

## Icons

We use [tabler icons](https://tabler.io/icons), and you should too!

## License

[MIT License](https://github.com/silverbeet-technology/website/blob/main/LICENSE)

### Thanks
