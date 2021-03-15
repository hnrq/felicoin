#!/bin/sh
set -e

if [ $(echo "$1" | cut -c1) = "-" ]; then
  echo "$0: assuming arguments for felicoind"

  set -- felicoind "$@"
fi

if [ $(echo "$1" | cut -c1) = "-" ] || [ "$1" = "felicoind" ]; then
  mkdir -p "$FELICOIN_DATA"
  chmod 700 "$FELICOIN_DATA"
  chown -R felicoin "$FELICOIN_DATA"

  echo "$0: setting data directory to $FELICOIN_DATA"

  set -- "$@" -datadir="$FELICOIN_DATA"
fi

if [ "$1" = "felicoind" ] || [ "$1" = "felicoin-cli" ] || [ "$1" = "felicoin-tx" ]; then
  echo
  exec su-exec felicoin "$@"
fi

echo
exec "$@"