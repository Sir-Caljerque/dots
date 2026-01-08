#!/usr/bin/env bash

remove_dirs() {
	# Remove everything that is going to be installed on the machine
	tmpdir=$(mktemp --directory --tmpdir=~/.local/share/Trash/files/)
	mv -v ~/.config/{hypr,nvim,yazi,starship,kitty,fuzzel} "$ZDOTDIR" ~/Certs "$tmpdir"
	echo "Your file backups are in a temporary dir: $tmpdir"
}

configs() {
	for app in ./*; do
		if [ -d "$app" ]; then
			stow -v --"$1" --dotfiles --target="$HOME" "$(basename "$app")"
		fi
	done

	cat <<EOF | sudo tee /etc/zsh/zshenv >/dev/null
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
EOF
}

install_pkgs() (
	#    if [[ ! -d /opt/paru ]]; then
	#        sudo git clone https://aur.archlinux.org/paru.git /opt
	#        sudo chown -R "$USER:$USER" /opt/PKGBUILD
	#        makepkg -si
	#    fi

	sudo pacman -Syu --noconfirm \
		bat bat-extras \
		dunst \
		entr \
		eza \
		fd \
		ffmpegthumbnailer \
		firewalld \
		fuzzel \
		fzf \
		grim \
		hypr{land,paper,idle,lock} \
		kitty \
		man-db man-pages \
		neovim \
		noto-fonts-{emoji,cjk} \
		pipewire pipewire-{pulse,jack,alsa} \
		ripgrep \
		signal-desktop \
		slurp \
		stow \
		trash-cli \
		watchexec \
		waybar \
		wl-clipboard \
		yazi \
		zoxide \
		zsh
)

# Find a way to make the config files. E.g. Get the default monitor and set default
# workspaces and resolutions in hypr/hypr*
# Would also need to check how many monitors you have and set workspaces accordingly

main() {
	echo "Do you want to install packages? (y/n)"
	read -r install_pkgs_choice
	if [[ $install_pkgs_choice =~ ^[Yy]$ ]]; then
		install_pkgs
	fi

	# echo "Do you want to remove existing directories before stowing? (y/n)"
	# read -r remove_dirs_choice
	# if [[ $remove_dirs_choice =~ ^[Yy]$ ]]; then
	# remove_dirs
	# fi

	echo "Do you want to stow or restow the dotfiles? (stow/restow)"
	read -r action
	if [[ $action == "stow" || $action == "restow" ]]; then
		echo "sudo pass pls (editing zshenv in /etc/zsh/zshenv)"
		sudo -v
		configs "$action"
	else
		echo "Invalid option. Exiting."
		exit 1
	fi
}

main
