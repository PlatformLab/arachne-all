#!/bin/bash

targets='PerfUtils CoreArbiter Arachne ArachnePerfTests arachne-sosp2017-benchmarks'
targets_no_install='ArachnePerfTests'

need_install()
{
    for dir in $targets_no_install; do
        if [ "$1" = "$dir" ]; then
            echo 0
            return
        fi
    done

    echo 1
}

for dir in $targets; do
    echo "Processing $dir ..."

    pushd $dir > /dev/null

    make
    if [ $? -ne 0 ]; then
        exit 1
    fi

    if [ `need_install $dir` -eq 1 ]; then
        make install
    fi

    popd > /dev/null
done
