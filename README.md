# openbsd-neovim-ports
grab of neovim ports from openbsd

this is just me mucking aroudn with a custom ports for openbsd and neovim, do not use, for internal consumption only.

It's an elaborate workaround for an impedance mismatch between how neovim team handles `neovim-nightly` and the version tag requirements of openbsd ports, which requires a gh tag that matches a gh release and starts with a version-point-form number (not a string like 'nightly', but rather, say, '0.6.1')

You may need to update the distinfo. To do so, run
```
export VERSION='0.6.1-elmarsto' # update as needed
curl -L https://github.com/elmarsto/neovim/archive/refs/tags/<most-recent-fake-release-satisfying-obsd-versioning-reqs>.tar.gz -o /tmp/n.tgz
ls -l /tmp/n.tgz
sha256 -b /tmp/n.tgz
```

And then cut/paste the size and shasum info into ./distinfo.

TODO: make script to do this.
