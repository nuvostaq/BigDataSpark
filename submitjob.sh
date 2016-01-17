#!/bin/bash
export VERS=0.2.3
export RESULTDIR=/tmp/sparkout
rm -fr ${RESULTDIR}*
export DATADIR=test-data
${SPARKBIN}/spark-submit --class com.nuvostaq.bigdataspark.BusDataDriver target/scala-2.10/BigDataSpark-assembly-${VERS}.jar ${DATADIR}/BusRoute.16784.\*.gz ${DATADIR}/localweather.16786.\*.gz ${DATADIR}/BusActivity.16785\*.gz ${RESULTDIR}
