if [[ -z "$SPOOF_ENV" ]]; then
    echo "Env variables not set. Source set_env.sh before running this script!" >&2
    exit 1
fi

mkdir -p obj-intel64
make obj-intel64/champsim_tracer.so
