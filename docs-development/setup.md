# Setting up your environment for development

Having a running node is crucial for testing whatever you do in classic-core, thankfully this quite easy to do.

## Prerequisites

You need to have `docker`, `docker-compose` and `go` installed in your system, please refer to documentation that matches your operating system.

## Install `terrad`

the command-line interface that connects to Terra and enables you to interact with the Terra blockchain.[^1] To install it from sources all you need to do is the following:

    make install

## Run the classic-core node in rebel1 testnet

You can build and run a node in `rebel1` TestNet with the following Makefile targets:

    make localnet-rebel1-build
    make localnet-rebel1-start
    # make localnet-rebel1-stop will stop your node,
    # make localnet-rebel1-clean will do the same but also delete your
    # local volume storage, meaning, you'll need to sync again.

please be aware that your node may take sometime to sync with the rest of the network, to check its progress you can query `terrad` for that information:

    terrad status # or terrad status | jq '.SyncInfo.catching_up' if you have `jq` installed

scroll and check the field `SyncInfo`:

    {
      "latest_block_hash": "8EF1C30E1CEB32BB0999687FAEA3677131A5D13F8A85F270538A7A577879AF55",
      "latest_app_hash": "3F3EAF617C8D2D970B5D731517A47E54509F63B2CDD1420B736B8F9CA4ACC931",
      "latest_block_height": "7582811",
      "latest_block_time": "2022-07-10T10:34:35.903250607Z",
      "earliest_block_hash": "E54246B68209EB6E30BD55B39EBA97FEB6EDB2DE9688B3C52753AF717F670413",
      "earliest_app_hash": "E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855",
      "earliest_block_height": "7560500",
      "earliest_block_time": "2022-06-21T05:24:10.074427664Z",
      "catching_up": true
    }

when `catching_up` is `true` this means that your node is still syncing.[^2]

[^1]: https://docs.terra.money/docs/develop/terrad/using-terrad.html

[^2]: https://docs.terra.money/docs/full-node/run-a-full-terra-node/sync.html
