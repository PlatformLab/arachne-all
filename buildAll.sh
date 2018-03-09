#!/usr/bin/env bash

targets='PerfUtils CoreArbiter Arachne ArachnePerfTests arachne-sosp2017-benchmarks'
for dir in $targets; do
    pushd $dir > /dev/null
    gmake
    popd > /dev/null
done
