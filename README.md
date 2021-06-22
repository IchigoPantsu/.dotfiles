# dotfiles
for manjaro sway edition

---

## setup

### update 
```
sudo pacman -syy
sudo pacman -syu
```


### install japanese font 
```
sudo pacman -S adobe-source-han-sans-jp-fonts
```

### sendanywhere
```
sudo pacman -S base-devel
yay -S sendanywhere
```

### install japanese fcitx 
```
sudo pacman -S fcitx fcitx-mozc fcitx-configtool fcitx-im
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
sudo timedatectl set-ntp true                                                                                                                                                  
```
#### ref
> [日時の設定 - Arch Linuxの最小限インストール直後の作業(2) - Qiita](https://qiita.com/j8takagi/items/cc63ee5e9cfcb20fd244)

### exfat
```
pacman -S exfat-utils ntfs-3g
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


### ssh(Github)
> [GitHubでssh接続する手順~公開鍵・秘密鍵の生成から~ - Qiita](https://qiita.com/shizuma/items/2b2f873a0034839e47ce)

---

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

+ jetBrain IDE トラブルシュート
+ フルスクリーンにするとちらつく
+ > ちらつき
+ [Picom - ArchWiki](https://wiki.archlinux.jp/index.php/Picom)
+ i3のスクラッチパッドで
+ > フロートするダイアログを正しく扱う
+ [i3 - ArchWiki](https://wiki.archlinux.jp/index.php/I3)

