Ru My Zsh is an open source, community-driven framework for managing your [zsh](https://www.zsh.org/) configuration.

Sounds boring. Let's try again.

Once installed, your terminal shell will become the talk of the town _or your money back!_ With each keystroke in your command prompt, you'll take advantage of the hundreds of powerful plugins and beautiful themes. Strangers will come up to you in cafés and ask you, _"that is amazing! are you some sort of genius?"_

Finally, you'll begin to get the sort of attention that you have always felt you deserved. ...or maybe you'll use the time that you're saving to start flossing more often. 😬

<details>
<summary>Table of Contents</summary>

- [Getting Started](#getting-started)
  - [Operating System Compatibility](#operating-system-compatibility)
  - [Prerequisites](#prerequisites)
  - [Basic Installation](#basic-installation)
    - [Manual Inspection](#manual-inspection)
- [Using Ru My Zsh](#using-ru-my-zsh)
  - [Plugins](#plugins)
    - [Enabling Plugins](#enabling-plugins)
    - [Using Plugins](#using-plugins)
  - [Themes](#themes)
    - [Selecting A Theme](#selecting-a-theme)
  - [FAQ](#faq)
- [Advanced Topics](#advanced-topics)
  - [Advanced Installation](#advanced-installation)
    - [Custom Directory](#custom-directory)
    - [Unattended Install](#unattended-install)
    - [Installing From A Forked Repository](#installing-from-a-forked-repository)
    - [Manual Installation](#manual-installation)
  - [Installation Problems](#installation-problems)
  - [Custom Plugins And Themes](#custom-plugins-and-themes)
  - [Enable GNU ls In macOS And freeBSD Systems](#enable-gnu-ls-in-macos-and-freebsd-systems)
  - [Skip Aliases](#skip-aliases)
  - [Disable async git prompt](#disable-async-git-prompt)
- [Getting Updates](#getting-updates)
  - [Updates Verbosity](#updates-verbosity)
  - [Manual Updates](#manual-updates)
- [Uninstalling Ru My Zsh](#uninstalling-ru-my-zsh)
- [How Do I Contribute To Ru My Zsh?](#how-do-i-contribute-to-ru-my-zsh)
  - [Do Not Send Us Themes](#do-not-send-us-themes)
- [Contributors](#contributors)
- [Follow Us](#follow-us)
- [Merchandise](#merchandise)
- [License](#license)
- [About Planet Argon](#about-planet-argon)

</details>

## Getting Started

### Operating System Compatibility

| O/S            | Status  |
| :------------- | :-----: |
| Android        |   ✅    |
| freeBSD        |   ✅    |
| LCARS          |   🛸    |
| Linux          |   ✅    |
| macOS          |   ✅    |
| OS/2 Warp      |   ❌    |
| Windows (WSL2) |   ✅    |


### Prerequisites

- [Zsh](https://www.zsh.org) should be installed (v4.3.9 or more recent is fine but we prefer 5.0.8 and newer). If not pre-installed (run `zsh --version` to confirm), check the following wiki instructions here: [Installing ZSH](https://github.com/lightair/rumyzsh/wiki/Installing-ZSH)
- `curl` or `wget` should be installed
- `git` should be installed (recommended v2.4.11 or higher)

### Basic Installation

Ru My Zsh is installed by running one of the following commands in your terminal. You can install this via the command-line with either `curl`, `wget` or another similar tool.

| Method    | Command                                                                                           |
| :-------- | :------------------------------------------------------------------------------------------------ |
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/lightair/rumyzsh/master/tools/install.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/lightair/rumyzsh/master/tools/install.sh)"`   |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/lightair/rumyzsh/master/tools/install.sh)"` |

Alternatively, the installer is also mirrored outside GitHub. Using this URL instead may be required if you're in a country like India or China, that blocks `raw.githubusercontent.com`:

| Method    | Command                                                                                           |
| :-------- | :------------------------------------------------------------------------------------------------ |
| **curl**  | `sh -c "$(curl -fsSL https://install.softroot.ru/)"`                                                 |
| **wget**  | `sh -c "$(wget -O- https://install.softroot.ru/)"`                                                   |
| **fetch** | `sh -c "$(fetch -o - https://install.softroot.ru/)"`                                                 |

_Note that any previous `.zshrc` will be renamed to `.zshrc.pre-ru-my-zsh`. After installation, you can move the configuration you want to preserve into the new `.zshrc`._

#### Manual Inspection

It's a good idea to inspect the install script from projects you don't yet know. You can do
that by downloading the install script first, looking through it so everything looks normal,
then running it:

```sh
wget https://raw.githubusercontent.com/lightair/rumyzsh/master/tools/install.sh
sh install.sh
```

If the above URL times out or otherwise fails, you may have to substitute the URL for `https://install.softroot.ru/` to be able to get the script.

## Using Ru My Zsh

### Plugins

Ru My Zsh comes with a shitload of plugins for you to take advantage of. You can take a look in the [plugins](https://github.com/lightair/rumyzsh/tree/master/plugins) directory and/or the [wiki](https://github.com/lightair/rumyzsh/wiki/Plugins) to see what's currently available.

#### Enabling Plugins

Once you spot a plugin (or several) that you'd like to use with Ru My Zsh, you'll need to enable them in the `.zshrc` file. You'll find the zshrc file in your `$HOME` directory. Open it with your favorite text editor and you'll see a spot to list all the plugins you want to load.

```sh
vi ~/.zshrc
```

For example, this might begin to look like this:

```sh
plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)
```

_Note that the plugins are separated by whitespace (spaces, tabs, new lines...). **Do not** use commas between them or it will break._

#### Using Plugins

Each built-in plugin includes a **README**, documenting it. This README should show the aliases (if the plugin adds any) and extra goodies that are included in that particular plugin.

### Themes

We'll admit it. Early in the Ru My Zsh world, we may have gotten a bit too theme happy. We have over one hundred and fifty themes now bundled. Most of them have [screenshots](https://github.com/lightair/rumyzsh/wiki/Themes) on the wiki (We are working on updating this!). Check them out!

#### Selecting A Theme

_Robby's theme is the default one. It's not the fanciest one. It's not the simplest one. It's just the right one (for him)._

Once you find a theme that you'd like to use, you will need to edit the `~/.zshrc` file. You'll see an environment variable (all caps) in there that looks like:

```sh
ZSH_THEME="robbyrussell"
```

To use a different theme, simply change the value to match the name of your desired theme. For example:

```sh
ZSH_THEME="agnoster" # (this is one of the fancy ones)
# see https://github.com/lightair/rumyzsh/wiki/Themes#agnoster
```

_Note: many themes require installing a [Powerline Font](https://github.com/powerline/fonts) or a [Nerd Font](https://github.com/ryanoasis/nerd-fonts) in order to render properly. Without them, these themes will render [weird prompt symbols](https://github.com/lightair/rumyzsh/wiki/FAQ#i-have-a-weird-character-in-my-prompt)_

Open up a new terminal window and your prompt should look something like this:

![Agnoster theme](https://cloud.githubusercontent.com/assets/2618447/6316862/70f58fb6-ba03-11e4-82c9-c083bf9a6574.png)

In case you did not find a suitable theme for your needs, please have a look at the wiki for [more of them](https://github.com/lightair/rumyzsh/wiki/External-themes).

If you're feeling feisty, you can let the computer select one randomly for you each time you open a new terminal window.

```sh
ZSH_THEME="random" # (...please let it be pie... please be some pie..)
```

And if you want to pick random theme from a list of your favorite themes:

```sh
ZSH_THEME_RANDOM_CANDIDATES=(
  "robbyrussell"
  "agnoster"
)
```

If you only know which themes you don't like, you can add them similarly to an ignored list:

```sh
ZSH_THEME_RANDOM_IGNORED=(pygmalion tjkirch_mod)
```

### FAQ

If you have some more questions or issues, you might find a solution in our [FAQ](https://github.com/lightair/rumyzsh/wiki/FAQ).

## Advanced Topics

If you're the type that likes to get their hands dirty, these sections might resonate.

### Advanced Installation

Some users may want to manually install Ru My Zsh, or change the default path or other settings that
the installer accepts (these settings are also documented at the top of the install script).

#### Custom Directory

The default location is `~/.ru-my-zsh` (hidden in your home directory, you can access it with `cd ~/.ru-my-zsh`)

If you'd like to change the install directory with the `ZSH` environment variable, either by running
`export ZSH=/your/path` before installing, or by setting it before the end of the install pipeline
like this:

```sh
ZSH="$HOME/.dotfiles/ru-my-zsh" sh install.sh
```

#### Unattended Install

If you're running the Ru My Zsh install script as part of an automated install, you can pass the `--unattended`
flag to the `install.sh` script. This will have the effect of not trying to change
the default shell, and it also won't run `zsh` when the installation has finished.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/lightair/rumyzsh/master/tools/install.sh)" "" --unattended
```

If you're in China, India, or another country that blocks `raw.githubusercontent.com`, you may have to substitute the URL for `https://install.softroot.ru` for it to install.

#### Installing From A Forked Repository

The install script also accepts these variables to allow installation of a different repository:

- `REPO` (default: `lightair/rumyzsh`): this takes the form of `owner/repository`. If you set
  this variable, the installer will look for a repository at `https://github.com/{owner}/{repository}`.

- `REMOTE` (default: `https://github.com/${REPO}.git`): this is the full URL of the git repository
  clone. You can use this setting if you want to install from a fork that is not on GitHub (GitLab,
  Bitbucket...) or if you want to clone with SSH instead of HTTPS (`git@github.com:user/project.git`).

  _NOTE: it's incompatible with setting the `REPO` variable. This setting will take precedence._

- `BRANCH` (default: `master`): you can use this setting if you want to change the default branch to be
  checked out when cloning the repository. This might be useful for testing a Pull Request, or if you
  want to use a branch other than `master`.

For example:

```sh
REPO=apjanke/ru-my-zsh BRANCH=edge sh install.sh
```

#### Manual Installation

##### 1. Clone The Repository <!-- omit in toc -->

```sh
git clone https://github.com/lightair/rumyzsh.git ~/.ru-my-zsh
```

##### 2. _Optionally_, Backup Your Existing `~/.zshrc` File <!-- omit in toc -->

```sh
cp ~/.zshrc ~/.zshrc.orig
```

##### 3. Create A New Zsh Configuration File <!-- omit in toc -->

You can create a new zsh config file by copying the template that we have included for you.

```sh
cp ~/.ru-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

##### 4. Change Your Default Shell <!-- omit in toc -->

```sh
chsh -s $(which zsh)
```

You must log out from your user session and log back in to see this change.

##### 5. Initialize Your New Zsh Configuration <!-- omit in toc -->

Once you open up a new terminal window, it should load zsh with Ru My Zsh's configuration.

### Installation Problems

If you have any hiccups installing, here are a few common fixes.

- You _might_ need to modify your `PATH` in `~/.zshrc` if you're not able to find some commands after switching to `ru-my-zsh`.
- If you installed manually or changed the install location, check the `ZSH` environment variable in `~/.zshrc`.

### Custom Plugins And Themes

If you want to override any of the default behaviors, just add a new file (ending in `.zsh`) in the `custom/` directory.

If you have many functions that go well together, you can put them as a `XYZ.plugin.zsh` file in the `custom/plugins/` directory and then enable this plugin.

If you would like to override the functionality of a plugin distributed with Ru My Zsh, create a plugin of the same name in the `custom/plugins/` directory and it will be loaded instead of the one in `plugins/`.

### Enable GNU ls In macOS And freeBSD Systems

<a name="enable-gnu-ls"></a>

The default behaviour in Ru My Zsh is to use BSD `ls` in macOS and freeBSD systems. If GNU `ls` is installed
(as `gls` command), you can choose to use it instead. To do it, you can use zstyle-based config before
sourcing `ru-my-zsh.sh`:

```zsh
zstyle ':omz:lib:theme-and-appearance' gnu-ls yes
```

_Note: this is not compatible with `DISABLE_LS_COLORS=true`_

### Skip Aliases

<a name="remove-directories-aliases"></a>

If you want to skip default Ru My Zsh aliases (those defined in `lib/*` files) or plugin aliases,
you can use the settings below in your `~/.zshrc` file, **before Ru My Zsh is loaded**. Note that
there are many different ways to skip aliases, depending on your needs.

```sh
# Skip all aliases, in lib files and enabled plugins
zstyle ':omz:*' aliases no

# Skip all aliases in lib files
zstyle ':omz:lib:*' aliases no
# Skip only aliases defined in the directories.zsh lib file
zstyle ':omz:lib:directories' aliases no

# Skip all plugin aliases
zstyle ':omz:plugins:*' aliases no
# Skip only the aliases from the git plugin
zstyle ':omz:plugins:git' aliases no
```

You can combine these in other ways taking into account that more specific scopes takes precedence:

```sh
# Skip all plugin aliases, except for the git plugin
zstyle ':omz:plugins:*' aliases no
zstyle ':omz:plugins:git' aliases yes
```

A previous version of this feature was using the setting below, which has been removed:

```sh
zstyle ':omz:directories' aliases no
```

Instead, you can now use the following:

```sh
zstyle ':omz:lib:directories' aliases no
```

### Disable async git prompt

Async prompt functions are an experimental feature (included on April 3, 2024) that allows Ru My Zsh to render prompt information
asyncronously. This can improve prompt rendering performance, but it might not work well with some setups. We hope that's not an
issue, but if you're seeing problems with this new feature, you can turn it off by setting the following in your .zshrc file,
before Ru My Zsh is sourced:

```sh
zstyle ':omz:alpha:lib:git' async-prompt no
```

#### Notice <!-- omit in toc -->

> This feature is currently in a testing phase and it may be subject to change in the future.
> It is also not currently compatible with plugin managers such as zpm or zinit, which don't
> source the init script (`ru-my-zsh.sh`) where this feature is implemented in.

> It is also not currently aware of "aliases" that are defined as functions. Example of such
> are `gccd`, `ggf`, or `ggl` functions from the git plugin.

## Getting Updates

By default, you will be prompted to check for updates every 2 weeks. You can choose other update modes by adding a line to your `~/.zshrc` file, **before Ru My Zsh is loaded**:

1. Automatic update without confirmation prompt:

   ```sh
   zstyle ':omz:update' mode auto
   ```

2. Just offer a reminder every few days, if there are updates available:

   ```sh
   zstyle ':omz:update' mode reminder
   ```

3. To disable automatic updates entirely:

   ```sh
   zstyle ':omz:update' mode disabled
   ```

NOTE: you can control how often Ru My Zsh checks for updates with the following setting:

```sh
# This will check for updates every 7 days
zstyle ':omz:update' frequency 7
# This will check for updates every time you open the terminal (not recommended)
zstyle ':omz:update' frequency 0
```

### Updates Verbosity

You can also limit the update verbosity with the following settings:

```sh
zstyle ':omz:update' verbose default # default update prompt

zstyle ':omz:update' verbose minimal # only few lines

zstyle ':omz:update' verbose silent # only errors
```

### Manual Updates

If you'd like to update at any point in time (maybe someone just released a new plugin and you don't want to wait a week?) you just need to run:

```sh
omz update
```

Magic! 🎉

## Uninstalling Ru My Zsh

Ru My Zsh isn't for everyone. We'll miss you, but we want to make this an easy breakup.

If you want to uninstall `ru-my-zsh`, just run `uninstall_ru_my_zsh` from the command-line. It will remove itself and revert your previous `bash` or `zsh` configuration.

## How Do I Contribute To Ru My Zsh?

Before you participate in our delightful community, please read the [code of conduct](CODE_OF_CONDUCT.md).

I'm far from being a [Zsh](https://www.zsh.org/) expert and suspect there are many ways to improve – if you have ideas on how to make the configuration easier to maintain (and faster), don't hesitate to fork and send pull requests!

We also need people to test out pull requests. So take a look through [the open issues](https://github.com/lightair/rumyzsh/issues) and help where you can.

See [Contributing](CONTRIBUTING.md) for more details.

### Do Not Send Us Themes

We have (more than) enough themes for the time being. Please add your theme to the [external themes](https://github.com/lightair/rumyzsh/wiki/External-themes) wiki page.

## Contributors

Ru My Zsh has a vibrant community of happy users and delightful contributors. Without all the time and help from our contributors, it wouldn't be so awesome.

Thank you so much!

<a href="https://github.com/lightair/rumyzsh/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=lightair/rumyzsh" width="100%"/>
</a>


## License

Ru My Zsh is released under the [MIT license](LICENSE.txt).
