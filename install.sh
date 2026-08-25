#!/usr/bin/env bash
set -euo pipefail

# ── 0. AUR helper (yay) ──────────────────────────────────────────────
# Several of these (quickshell itself, niri if it's not in extra yet,
# material symbols) only exist in the AUR. Bootstrap yay if it's missing.
if ! command -v yay &>/dev/null; then
  echo "==> yay not found, building it"
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  (cd /tmp/yay && makepkg -si --noconfirm)
  rm -rf /tmp/yay
fi

# ── 1. Official repo packages ────────────────────────────────────────
PACMAN_PKGS=(
  # core / session
  niri sddm fish neovim alacritty firefox git wget vim
  networkmanager pipewire pipewire-pulse wireplumber upower

  # brightness / audio
  brightnessctl pamixer

  # media / notifications
  playerctl libnotify

  # screenshots
  grim slurp swappy

  # wallpaper / clipboard
  swaybg wl-clipboard

  # fonts
  inter-font

  # qt6 modules quickshell/QML lean on
  qt6-svg qt6-imageformats qt6-multimedia qt6-5compat

  # launcher / calculator
  fuzzel libqalculate

  # calendar sync (optional — comment out if you don't want it)
  khal vdirsyncer
)

echo "==> Installing official packages"
sudo pacman -S --needed --noconfirm "${PACMAN_PKGS[@]}"

# ── 2. AUR packages ───────────────────────────────────────────────────
AUR_PKGS=(
  quickshell-git
  polkit-gnome
  ttf-material-symbols-variable-git
  cliphist
)

echo "==> Installing AUR packages"
yay -S --needed --noconfirm "${AUR_PKGS[@]}"

# ── 3. Services that need enabling ───────────────────────────────────
sudo systemctl enable --now NetworkManager
sudo systemctl enable sddm

echo "==> Done. Reboot, log into niri, and check that Home Manager's"
echo "    old assumptions (usergroups, polkit agent autostart) got"
echo "    replicated in your niri config — Arch won't do any of that for you."
