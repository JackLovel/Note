## FAQ
- Webpacker configuration file not found
```
$ pacman -S yarn
$ rails webpacker:install
$ yarn install --check-files 
$ rails s
```
- [Listen error: unable to monitor directories for changes](https://stackoverflow.com/questions/42225677/listen-error-unable-to-monitor-directories-for-changes)
```
$ echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system
```
