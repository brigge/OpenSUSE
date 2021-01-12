gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
sudo zypper addrepo -g -f https://download.sublimetext.com/rpm/stable/x86_64 SublimeText
sudo zypper addrepo -g -f https://download.nvidia.com/opensuse/tumbleweed Nvidia
sudo zypper addrepo -g -f https://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed/ Snappy
sudo zypper addrepo -g -f http://yum.insync.io/opensuse-tumbleweed/rolling/ InSync
sudo zypper addrepo -g -f http://ftp.gwdg.de/pub/linux/packman/suse/openSUSE_Tumbleweed/ Packman
sudo zypper addrepo -g -f http://dl.google.com/linux/chrome/rpm/stable/x86_64/ Chrome
sudo zypper --gpg-auto-import-keys refresh
sudo zypper dup
sudo zypper in ibus-rime sublime-text vlc x11-video-nvidiaG04 ffmpeg lame keepassxc snapd google-chrome gstreamer-plugins-base gstreamer-plugins-good gstreamer-plugins-extra gstreamer-plugins-bad gstreamer-plugins-bad-orig-addon gstreamer-plugins-ugly gstreamer-plugins-ugly-orig-addon gstreamer-plugins-libav zsh
sudo systemctl enable snapd
sudo systemctl start snapd
sudo systemctl enable snapd.apparmor
sudo systemctl start snapd.apparmor
cat > "$HOME/.config/ibus/rime/luna_pinyin.custom.yaml" << EOF
# luna_pinyin.custom.yaml

patch:
  switches:
    - name: ascii_mode
      reset: 0
      states: [ 中文, 西文 ]
    - name: full_shape
      states: [ 半角, 全角 ]
    - name: simplification
      reset: 1
      states: [ 漢字, 汉字 ]
EOF
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
