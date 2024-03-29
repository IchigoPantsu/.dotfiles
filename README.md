# dotfiles
for manjaro sway edition

---

## setup

### update 
```
sudo pacman -syy
sudo pacman -syu
```


###install nvim python3 prvider
```
python3 -m pip install --user --upgrade pynvim
```
> [Nvim documentation: provider](https://neovim.io/doc/user/provider.html)

###coc
```
:CocInstall coc-ccls
:CocInstall coc-cmake
```


### install japanese font 
```
sudo pacman -S adobe-source-han-sans-jp-fonts
sudo -S nerd-font-complete
```

### sendanywhere
```
sudo pacman -S base-devel
yay -S sendanywhere
```

### install japanese fcitx 
```
sudo pacman -S fcitx5-im fcitx5-mozc fcitx5-qt fcitx5-gtk fcitx5-lua
```

```
## append below to .profile 

export GLYPH_DESKTOP="󰄶 "
export GLYPH_COMMAND="󰆍 "

# fcitx(japanese)  
export LC_CTYPE=ja_JP.utf-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

```


#### ref
> [How To Setup Japanese Language Environment In Arch Linux](https://ostechnix.com/setup-japanese-language-environment-arch-linux/)
> [ArchLinuxで日本語入力環境を整える - Qiita](https://qiita.com/k_almajiro/items/1c569513cbe705321902)

### fcitx configuration

###
```
sudo pacman -S ntp
sudo timedatectl list-timezones | grep -i tokyo
sudo timedatectl set-timezone Asia/Tokyo
sudo timedatectl set-ntp true                                                                                                       

```
#### ref
> [日時の設定 - Arch Linuxの最小限インストール直後の作業(2) - Qiita](https://qiita.com/j8takagi/items/cc63ee5e9cfcb20fd244)

### exfat
```
sudo pacman -S exfat-utils ntfs-3g
#mount
sudo fdisk -l
sudo mount -t /dev/... /mnt/data/
```
#### ref
> [ArchLinuxの個人的な推奨事項 - Qiita](https://qiita.com/kob-u/items/7cf29ac669efac36fbde)


### qmk firmware(ergo dox)
```
sudo pacman -S qmk 
yay -S teensy-loader-cli
git clone --recursive https://github.com/IchigoPantsu/qmk_firmware -b master 
qmk compile -kb ergodox_ez -km my_ergodox_ez
qmk flash -kb ergodox_ez -km my_ergodox_ez
```

#### ref
> [Overview](https://docs.qmk.fm/#/cli)
> [Workaround for recent -Werror=array-bounds AVR issues by zvecr · Pull Request #17136 · qmk/qmk_firmware · GitHub](https://github.com/qmk/qmk_firmware/pull/17136)

### ssh(Github)
> [GitHubでssh接続する手順公開鍵・秘密鍵の生成から- Qiita](https://qiita.com/shizuma/items/2b2f873a0034839e47ce)


### for zathura
```
yay -S girara-git
```

### enable japanese in zathura-pdf
```
sudo pacman -S poppler-data
```
> [Arch Linuxで日本語pdfを閲覧したり、辞書を表示する | 3log](https://3100.github.io/log/2016/01/01/viewing-pdf-on-arch/)
### zsh-vi-mode
```
yay -S zsh-vi-mode
```
---

### dual-function-key
```
yay -S interception-dual-function-keys
```
#### mag1 profile
```

#/etc/interception/dual-function-keys/gpd_pocket3.yaml
TIMING:
  TAP_MILLISEC: 200
  DOUBLE_TAP_MILLISEC: 0
  SYNTHETIC_KEYS_PAUSE_MILLISEC: 0

MAPPINGS:
  - KEY: KEY_CAPSLOCK
    TAP: KEY_TAB
    HOLD: KEY_LEFTCTRL
 
  - KEY: KEY_SPACE
    TAP: KEY_SPACE
    HOLD: KEY_F13

  - KEY: KEY_LEFTALT
    TAP: KEY_LEFTMETA
    HOLD: KEY_LEFTMETA

  - KEY: KEY_RIGHTSHIFT
    TAP: KEY_SEMICOLON
    HOLD: KEY_RIGHTSHIFT

  - KEY: KEY_TAB
    TAP: KEY_GRAVE
    HOLD: KEY_GRAVE

  - KEY: KEY_DELETE
    TAP: KEY_MINUS
    HOLD: KEY_MINUS
 
#/etc/interception/dual-function-keys/thinkpad_trackpoint_keyboard_ii.yaml
TIMING:
  TAP_MILLISEC: 200
  DOUBLE_TAP_MILLISEC: 0
  SYNTHETIC_KEYS_PAUSE_MILLISEC: 0

MAPPINGS:
  - KEY: KEY_CAPSLOCK
    TAP: KEY_TAB
    HOLD: KEY_LEFTCTRL
 
  - KEY: KEY_SPACE
    TAP: KEY_SPACE
    HOLD: KEY_F13

  - KEY: KEY_LEFTALT
    TAP: KEY_LEFTMETA
    HOLD: KEY_LEFTMETA

#/etc/interception/udevmon.yaml
- JOB: "intercept -g $DEVNODE | dual-function-keys -c /etc/interception/dual-function-keys/mag1.yaml | uinput -d $DEVNODE"
  DEVICE:
    #NAME: "AT Translated Set 2 keyboard"
    NAME: "HAILUCK CO.,LTD USB KEYBOARD"
    EVENTS:
      EV_KEY: [KEY_CAPSLOCK,KEY_ESC,KEY_LEFTCTRL,KEY_LEFTALT]

- JOB: "intercept -g $DEVNODE | dual-function-keys -c /etc/interception/dual-function-keys/thinkpad_trackpoint_keyboard_ii.yaml | uinput -d $DEVNODE"
  DEVICE:
    #NAME: "AT Translated Set 2 keyboard"
    NAME: "Lenovo TrackPoint Keyboard II"
    EVENTS:
      EV_KEY: [KEY_CAPSLOCK,KEY_ESC,KEY_LEFTCTRL,KEY_LEFTALT,KEY_RIGHTALT]

```

> [Remap Caps Lock to Escape and Control](https://www.dannyguo.com/blog/remap-caps-lock-to-escape-and-control/)

```
sudo systemctl enable udevmon
```

### input-remapper
```
yay -S input-remapper-git
sudo systemctl enable key-mapper
```

### tex
```
sudo pacman -S texlive-langjapanese texlive-bibtexextra texlive-latexextra biber
```

> [LaTeXでスライドが作れるBeamerでBibTeXを使う - Qiita](https://qiita.com/spica314/items/42c7290bb3939bf95530)

### others
```
python3 -m pip install --user --upgrade pynvim

"sudo pacman -S nautilus
sudo pacman -S kitty
sudo pacman -S qutebrowser
sudo pacman -S swappy
sudo pacman -S x265
sudo pacman -S neovim-remote
sudo pacman -S screenfetch
sudo pacman -S wdisplays
sudo pacman -S steam
sudo pacman -S krita
sudo pacman -S blender
sudo pacman -S nodejs npm

"rust
sudo pacman -S rustup
rustup default stable

sudo pacman -S clang
sudo pacman -S lldb
sudo pacman -S ccls
sudo pacman -S cmake
"sudo pacman -S assimp
sudo pacman -S shaderc
sudo pacman -S vulkan-devel
yay -S mercurial
yay -S wps-office

sudo pacman -U wps-office-11.1.0.10161-1-x86_64.pkg.tar.zst
yay -S celluloid-git
yay -S pcloud-drive
```

### coc-ccls issue
```
cd ~/.config/coc/extensions/node_modules/coc-ccls
ln -s node_modules/ws/lib lib
```

> https://github.com/neoclide/coc.nvim/issues/2088

### Vimium Option
```
# Insert your preferred key mappings here.
unmap J
map J scrollPageDown
unmap K
map K scrollPageUp
unmap h
map h previousTab
unmap l
map l nextTab
unmap d
map dd removeTab
unmap X
map u restoreTab
```

### gpd pocket
> [GPD Pocket 3 - ArchWiki](https://wiki.archlinux.org/title/GPD_Pocket_3)

#### bluetooth
```
sudo systemctl restart bluetooth
bt-adapter -i

#[Linux PCにBluetooth機器を接続する - Qiita](https://qiita.com/shskwmt/items/fffabf521201f5835214)
sudo systemctl enable bluetooth    

#/etc/udev/rules.d/10-local.rules
## Set bluetooth power up
#ACTION=="add", KERNEL=="hci0", RUN+="/usr/bin/hciconfig hci0 up"
```

### sway-idle lock
> [swayidle before-sleep only works once · Issue #3062 · swaywm/sway](https://github.com/swaywm/sway/issues/3062)

#### ranger images
```
pip install pillow 
```
> [preview images using kitty · Issue #1549 · ranger/ranger · GitHub](https://github.com/ranger/ranger/issues/1549)

### Reference
+ [ミニマルに始めるDotfiles自動化計画](https://qiita.com/okamos/items/40966158d0271ae7198b)
+ [.vimrcをgithubで管理する時って、プラグイン管理をNeoBundle使う場合はどうすんのよ！？](https://qiita.com/yukimura1227/items/9727dec975d3fe9557c9#%E7%B5%8C%E7%B7%AF)
+ [.gitignoreの否定文(!)でハマったところ](https://qiita.com/NumAniCloud/items/fd452828f634b577ae28)
+ [dotfilesのリポジトリに~/.gitconfigを追加している場合、gitのユーザ名やメールアドレスの設定は共有したくない](https://linuxserver.jp/vcs/git/git-config-on-repository/)
+ [LinuxでHomebrewを使う: Homebrew-fileも対応させた](https://rcmdnk.com/blog/2019/02/27/computer-linux-homebrew/#linux%E3%81%A7homebrew-file)
+ [using-the-fishfile](https://github.com/jorgebucaran/fisher#using-the-fishfile)
+ [brew bundleでMacのアプリをまとめてインストール・管理](https://qiita.com/vochicong/items/f20afc89a6847cd58f0f)

### memo
+ [Vimメモ : fzf（fuzzy finder）と連携するfzf.vimの使い方](https://wonderwall.hatenablog.com/entry/2017/10/07/220000)
+ [fzf（fuzzy finder）の便利な使い方をREADME, Wikiを読んで学ぶ](https://wonderwall.hatenablog.com/entry/2017/10/06/063000)
+ [fzf-ArchWiki](https://wiki.archlinux.jp/index.php/Fzf)
+ [Vimメモ : Neovimで開発環境を段階的に構築する（5）スニペット、入力補完と定義元ジャンプ](https://wonderwall.hatenablog.com/entry/2019/08/17/003000)
+ [40%キーボード VORTEX CORE のキー配置を思うがままにやってみる](https://qiita.com/Atoyr/items/3650156799bf9eec5306)
+ [i3 版 Ubuntu 、Regolith Linux を使うことのメモ](http://malkalech.com/regolith_linux_i3-gaps)
+ [Picom - ArchWiki(jetBrain IDE トラブルシュート(フルスクリーンにするとちらつく))](https://wiki.archlinux.jp/index.php/Picom)
+ [i3 - ArchWiki(i3のスクラッチパッドでフロートするダイアログを正しく扱う
)](https://wiki.archlinux.jp/index.php/I3)

