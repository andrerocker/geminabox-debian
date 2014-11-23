### Geminabox Debian

* In natura geminabox debian package

#### Local build and test

* make bootstrap (only at the first time)
* make builder (it will build a fresh package and put under the locaweb/tmp/build)
* make runtime (start a fresh debian container with locaweb/tmp/build attached at /build)
