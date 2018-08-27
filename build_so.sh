apk update
apk upgrade
apk add git autoconf build-base linux-headers libaio-dev php7-dev libevent-dev

cd /root/ \
&& git clone https://gitee.com/swoole/swoole.git --depth=1 \
&& cd swoole/ \
&& phpize \
&& ./configure \
&& make && make install \
&& rm -rf /root/swoole/

cd /root/ \
&& git clone https://github.com/yunnian/php-nsq.git --depth=1 \
&& cd php-nsq/ \
&& phpize \
&& ./configure \
&& make && make install \
&& rm -rf /root/php-nsq

rm -rf /tmp/* \
&& rm -rf /var/cache/apk/* \
&& apk del libaio-dev php7-dev git autoconf build-base linux-headers \
