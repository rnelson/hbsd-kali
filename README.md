# hbsd-kali

After watching [SSSilverLink](https://www.twitch.tv/sssilverlink) go through a bunch of [TryHackMe](https://tryhackme.com) exercises, I decided that I wanted to get as many of those tools available on a BSD VM. I've also been wanting an excuse to try out [HardenedBSD](https://hardenedbsd.org), a security-focused fork of [FreeBSD](https://www.freebsd.org), and figured this would be a good excuse to run it on a VM.

## Usage

```shell
$ fetch -o pkg.txt https://github.com/rnelson/hbsd-kali/blob/main/pkg.txt
$ fetch -o hbsd-kali.sh https://github.com/rnelson/hbsd-kali/blob/main/setup.sh
$ sh hbsd-kali.sh
```

## License

Released under the [MIT License](http://rnelson.mit-license.org).
