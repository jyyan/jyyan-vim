## Notetice
This is a fork repo form Eddie Kao (eddie@digik.com.tw)/[eddie-vim](https://github.com/kaochenlong/eddie-vim.git) thanks for all.

With the original repo [eddie-vim](https://github.com/kaochenlong/eddie-vim.git). I remove all default hotkey setting and redefind at jyyan-vimrc.

--
My own Vim configurations and plugins which I used.

Primary Vim relative settings are in `plugin/settings/Settings.vim` file, and isolate other plugins' settings in `plugin/settings` directory.

It's how my Vim looks now:

![image](https://github.com/kaochenlong/eddie-vim/raw/master/screenshots/vim-2012-03-27-macvim.png)

and <a href="http://blog.eddie.com.tw/2012/03/06/my-vimrc/" target="_blank">Here</a> are some screenshots on the other platforms.

## Usage

### Installation and Requisites:

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to your home directory.

3. copy files to your home directory:

      > # git clone git://github.com/jyyan/jyyan-vim.git

4. cd to `eddie-vim` directory and execute the `update.sh` to get latest version modules:

      > # cd jyyan-vim
      > # ./update.sh

5. make a symbolic link `.vim` to `jyyan-vim` that you just cloned, or just rename it to `.vim` also be fine:

      > # ln -s jyyan-vim .vim

6. link the vimrc to

      > #  ln -s .vim/vimrc .vimrc

7. if you're still not familiar with the movement in vim by HJKL or yanking and pasting text, I've made a easier version:

      > #  ln -s .vim/easy-vimrc .vimrc

8. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

      > # ln -s .vim/gvimrc .gvimrc

9. if you want to use same satting like me , you can also link `jyyan-vimrc` :

      > # ln -s .vim/jyyan-vimrc .vimrc

10. if you use Powerline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline), it looks pretty nice.

11. you may need to install `ack` first if you use `ack.vim`.

### Update:

change directory to `~/.vim` and execute `./update.sh` script, it should do all the updates automatically.

### Features and Key Mappings:

1. Resize splited windows automatically, so that you  get a bigger editing room if you're working with a smaller screen. (stole from [Gary Bernhardt](https://github.com/garybernhardt))
1. Toggle between working mode and presentation mode by `<leader>z`, but only work in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like. (stole from [Mike Skalnik](https://github.com/skalnik))
1. some usually used key mappings in normal mode at <b>jyyan-vimrc</b>:
 1. `<F1>` to launch a Calendar window.
 1. `<F2>` to save this document and run checksyntax_vim automatically
 1. `<ctrl>+s` to save file too
 1. `<F4>` to close this <b>Tabpage</b> or close this document use `:q`
 1. `<F5>` is script runner, according to the filetype, it will run Ruby or Python script, or even CoffeeScript(You have to install CoffeeScript first, of course). if the filetype is VimScript, `<F5>` will run `:source %` for you.
 1. `<F6>` to switch to previous tab, and `<F8>` to the next tab.
 1. `<F7>` to open a empty <b>Tabpage</b>
 1. `<F9>` to toggle NERTree list at left site
 1. `<F11>` to toggle yanking list
 1. `<F12>` to toggle ctag list at right site
 1. `<CTRL>+<F12>` to call ctag command use `:!ctags ...`
 1. `<leader>v` to open `.vimrc` in a new tab.
 1. `<leader>0` to edit or create `README.md` in current working directory.
 1. `<ctrl>w p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name. and `<ctrl>w u` will match from your MRU(Mostly Recent Used) files, which is also frequently used.
 1. hit `<leader>` twice to toggle comment on and off.
 1. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.
 1. `<leader>v` to open `.vimrc` in a new tab.
 1. `<leader>0` to edit or create `README.md` in current working directory.
 1. by the way , the <leader> key always mapped with <\> key by default
1. Remove tailing whitespace automatically while saving.
1. You can make one copy of jyyan-vimrc & ref: vimrc / pro-vimrc / easy-vimrc to redefine what you like for .

## FAQ

1. cTags
 Install ctags and vim :

    <b>Ubuntu</b>

      > #sudo apt-get install vim-gnome vim exuberant-ctags cscope

    <b>OpenSUSE</b>

      > #sudo zypper install vim ctags

 Its that the default ctags plugin setting is for **ubuntu** environment. When you use <F12> to open the ctags list , got the message show you vim could not found the ctags command. just try to check your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

        let Tlist_Ctags_Cmd = '/your/path/to/ctags'

 and then check the ctags bin locate path using `whereis` :

      > #  whereis ctagsctags
      > <b>/usr/bin/ctags</b> /usr/share/man/man1/ctags.1.gz /usr/share/man/man1p/ctags.1p.gz

 and change the setting from

        let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'   # ubuntu ctags location

 to

        let Tlist_Ctags_Cmd = '/usr/bin/ctags'         # openSUSE ctags location

 or just link the ctags bin to new locations

      > # sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

 and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.
 at last , if you are use windows. you can download ctags from  [Ctags download](http://ctags.sourceforge.net/) and unzip it. copy the ctags.exe to your WINDOWS\SYSTEM32 folder , then you can use ctags command in cmd.exe .

2. Windows install gvim guide:
 1. download vimruntime & Gvim from : [Vim release page](http://www.vim.org/download.php#pc)
 1. un package those 2 zip file into SAME folder. such like "program files\vim\vimruntime"
 1. and open CMD interface in "program files\vim" folder
 1. clone this git repo over there
 1. and then make .vim / .vimrc link , use below command:

      > mklink ".vim" "jyyan-vim" /d
      > mklink ".vimrc" "jyyan-vim/jyyan-vimrc" /h

 1. update jyyan-vim , use ./update.sh or `git submodule foreach --recursive git pull origin master` command
 1. finished

3. Maybe you would got the warning message such like this <b>`CheckSyntax: Run vim with the --servername NAME command line option to enable use of AsyncCommand`</b> , on the time you use vim to open some files at linux environment. you can open `~/.bashrc` and addition the followinig line :

    alias vim='vim --servername <whatever>'

    such as :

    alias vim='vim --servername editor'

    and then please relogin try again.

## Contact

Open vim/gvim & Enjoy it, and if there's any question or comment, feel free to let me know :)

Jun-Yuan Yan (jyyan@jyyan.info)
