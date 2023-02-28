#!/bin/bash

if grep -Eqi "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    yum install bind-utils
    yum install -y dnsmasq
elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
    apt-get update
    apt-get install dnsutils
    apt install -y dnsmasq
elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
    apt-get update
    apt-get install dnsutils
    apt install -y dnsmasq
else
    echo "This script only supports CentOS, Ubuntu and Debian."
    exit 1
fi

if [ $? -eq 0 ]; then
    systemctl enable dnsmasq
    rm -f /etc/resolv.conf
    echo "nameserver 127.0.0.1" > /etc/resolv.conf
    mkdir -p /etc/dnsmasq.d/ && touch /etc/dnsmasq.d/unlock.conf
    echo "server=1.1.1.1" > /etc/dnsmasq.d/unlock.conf
    echo "server=/abc-studios.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/abc.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/edgedatg.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/dmed.technology/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/dtci.co/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/dtci.technology/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espn.co.uk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espn.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espn.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espncdn.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espnqa.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/watchespn.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espn.api.edge.bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espn.hb.omtrdc.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/espndotcom.tt.omtrdc.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hotstar.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hotstar-cdn.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hotstarext.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hsprepack.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses1.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses2.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses3.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses4.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses5.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses6.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/hses7.akamaized.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvel.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvel10thanniversary.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marveldimensionofheroes.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelparty.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelpinball.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelsdoubleagent.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelspotlightplays.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelsuperheroseptember.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/marvelsuperwar.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/themarvelexperiencetour.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/natgeomaps.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nationalgeographic.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nationalgeographicpartners.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/ngeo.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/starott.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/starplus.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star.api.edge.bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star.connections.edge.bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star.content.edge.bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star.playback.edge.bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.asia/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.be/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.bg/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.ca/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.ch/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.il/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.jp/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.kr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.th/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.uk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.co.za/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.com.au/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.com.br/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.com.hk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.cz/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.de/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.dk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.es/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.fi/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.fr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.gr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.hu/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.id/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.in/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.io/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.it/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.my/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.nl/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.no/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.ph/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.pl/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.pt/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.ro/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.ru/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.se/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.sg/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/20thcenturystudios.com.au/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/20thcenturystudios.com.br/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/20thcenturystudios.jp/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/adventuresbydisney.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/babble.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/babyzone.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/bamgrid.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/beautyandthebeastmusical.co.uk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/dilcdn.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-asia.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-discount.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-plus.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-portal.my.onetrust.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-studio.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney-studio.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disney.my.sentry.io/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyadsales.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyarena.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyaulani.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneybaby.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneycareers.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneychannelonstage.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneychannelroadtrip.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneycruisebrasil.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyenconcert.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyiejobs.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyinflight.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyinternational.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyinternationalhd.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyjunior.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyjuniortreataday.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneylatino.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.co.il/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.co.uk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.co.za/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.de/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.es/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.fr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.gen.tr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.gr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.it/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmoments.pl/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymagicmomentsme.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyme.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymeetingsandevents.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymovieinsiders.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneymusicpromotion.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneynewseries.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneynow.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneypeoplesurveys.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyplus.bn5x.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyplus.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyplus.com.ssl.sc.omtrdc.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyredirects.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneysrivieraresort.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneystore.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneystreaming.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneysubscription.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneytickets.co.uk/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyturkiye.com.tr/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneytvajobs.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/disneyworld-go.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/dssott.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/go-disneyworldgo.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/go.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/mickey.tv/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/moviesanywhere.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nomadlandmovie.ch/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/playmation.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/shopdisney.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/shops-disney.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/sorcerersarena.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/spaindisney.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star-brasil.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/star-latam.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/starwars.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/starwarsgalacticstarcruiser.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/starwarskids.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/streamingdisney.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/thestationbymaker.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/thisispolaris.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/watchdisneyfe.com/$1" >> /etc/dnsmasq.d/unlock.conf
    
    systemctl restart dnsmasq
    echo "dnsmasq 启动成功"
else
    echo "dnsmasq 安装失败, 请检查仓库状况"
fi
