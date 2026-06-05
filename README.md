# Configuration Files

Personal dotfiles and config templates. The setup scripts in
[`davidianstyle/bin`](https://github.com/davidianstyle/bin) clone this repo and
copy the base templates into place (e.g. `.zshrc` → `~/.zshrc`).

## Naming convention

* **Base templates** (no suffix) are the canonical, machine-agnostic versions
  that get copied directly into `$HOME`. macOS uses `.zshrc`; Linux hosts use
  `.zshrc.linux` (Oh My Zsh + apt tooling). Version managers are unified under
  [asdf](https://asdf-vm.com/) (see `.tool-versions`).
* **Host/environment overlays** (`.<base>.<env>`) are kept for reference and
  for environments that differ meaningfully from the base — they are *not*
  collapsible into the template:
  * `.bashrc.athena` — athenahealth dev box (Perforce/Perl aliases)
  * `.bashrc.takeoff` — Takeoff dev box (jenv/pyenv/gcloud/docker)
  * `.bashrc.godaddy`, `.bashrc.aws` — hosting / EC2 boxes
  * `.bashrc.openstack`, `.bashrc.raspberrypi` — Linux hosts
  * `.emacs.takeoff` — Takeoff Emacs config

## Shell

* `.zshrc` — primary macOS shell (Powerlevel10k, asdf, fzf, Android SDK)
* `.zshrc.linux` — Linux shell (Oh My Zsh + Powerlevel10k, asdf, exa/bat/rg/fd)
* `.bashrc`, `.bash_profile`, `.bash_aliases` — bash base
* `.p10k.zsh` — Powerlevel10k prompt theme
* `.tool-versions` — asdf-managed runtime versions

## Editors & terminal

* `.emacs` — Emacs config
* `.tmux.conf` — tmux config

## Tooling & misc

* `.curlrc` — curl defaults
* `.aws/config` — AWS SSO profile
* `Brewfile` — Homebrew bundle
* `dchang_key.pub` — public SSH key

## Web server (legacy)

* `.htaccess`, `httpd.conf`, `ssl.conf`
