#!/bin/bash -x
g++ -fpermissive  \
../../metrics-discovery/instrumentation/metrics_discovery/common/md_calculation.cpp \
../../metrics-discovery/instrumentation/utils/common/iu_debug.c \
../../metrics-discovery/instrumentation/utils/linux/iu_os.cpp \
../../metrics-discovery/instrumentation/utils/linux/iu_std.cpp \
../../source/context.cpp \
../../source/equations.cpp \
../../source/values.cpp \
../../source/periodic_metrics.cpp \
../../source/report_memory.cpp periodic_sample.1.cpp \
    -I. -I ../../source/ \
        -I ../../metrics-discovery/inc/common/instrumentation/api \
        -I ../../metrics-discovery/instrumentation/metrics_discovery/common/inc \
        -I ../../metrics-discovery/instrumentation/utils/common/inc \
        -I ../../metrics-discovery/instrumentation/utils/linux/inc \
    -I /usr/local/include/mdapi/  -L /usr/local/lib/   -ldl

#../../source/range_metrics_dx11.cpp \
