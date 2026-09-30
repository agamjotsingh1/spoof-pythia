if [[ -z "$SPOOF_ENV" ]]; then
    echo "Env variables not set. Source set_env.sh before running this script!" >&2
    exit 1
fi

make clean
