ARG version=v0.5.11-oracle

FROM terramoney/core:${version}

ARG chainid=columbus-5
ARG validator_keyname=local
ARG validator_passphrase=12345678
ARG validator_mnenomic="torch swamp cancel lift never october child harsh rib aspect luxury word peanut length bamboo hawk material vehicle glue above west random sketch author"
ARG validator_amount=1uluna
ARG validator_commission_rate=0.2
ARG validator_commission_rate_max=1
ARG validator_commission_rate_max_change=0.01
ARG validator_min_self_delegation=1

ENV CHAINID ${chainid}
ENV VALIDATOR_KEYNAME ${validator_keyname}
ENV VALIDATOR_PASSPHRASE ${validator_passphrase}
ENV VALIDATOR_MNENOMIC ${validator_mnenomic}
ENV VALIDATOR_AMOUNT ${validator_amount}
ENV VALIDATOR_COMMISSION_RATE ${validator_commission_rate}
ENV VALIDATOR_COMMISSION_RATE_MAX ${validator_commission_rate_max}
ENV VALIDATOR_COMMISSION_RATE_MAX_CHANGE ${validator_commission_rate_max_change}
ENV VALIDATOR_MIN_SELF_DELEGATION ${validator_min_self_delegation}

# Moniker will be updated by entrypoint.
RUN terrad init --chain-id $chainid moniker

# Backup for templating
RUN mv ~/.terra/config/config.toml ~/config.toml
RUN mv ~/.terra/config/app.toml ~/app.toml

RUN if [ "$chainid" = "columbus-5" ] ; then wget -O ~/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json; fi
RUN if [ "$chainid" = "columbus-5" ] ; then wget -O ~/.terra/config/addrbook.json https://networks.mcontrol.ml/columbus/addrbook.json; fi

RUN if [ "$chainid" = "bombay-12" ] ; then wget -O ~/.terra/config/genesis.json https://raw.githubusercontent.com/terra-money/classic-testnet/master/bombay-12/genesis.json; fi
RUN if [ "$chainid" = "bombay-12" ] ; then wget -O ~/.terra/config/addrbook.json https://raw.githubusercontent.com/terra-money/classic-testnet/master/bombay-12/addrbook.json; fi

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

["/usr/local/bin/terrad", "start"]