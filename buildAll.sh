#!/bin/bash

targets='PerfUtils CoreArbiter Arachne ArachnePerfTests arachne-sosp2017-benchmarks'
for dir in $targets; do
    pushd $dir > /dev/null
    make
    popd > /dev/null
done
