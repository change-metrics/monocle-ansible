#!/bin/sh

source $HOME/api_keys.env
cd {{ workdir }}/lentille-bugzilla
BZ_API_KEY=${{ item.bz_api_key_env }} MONOCLE_API_KEY=${{ item.monocle_api_key_env }} \
cabal run lentille-bugzilla -- \
--monocle-url http://localhost:9876 --index {{ item.index }} \
--crawler-name {{ item.name }} --bugzilla-product {{ item.bz_product }}
