#!/bin/sh
trap cleanup SIGTERM
 
cleanup() {
    exit 0
}

chmod 777 /conf/ikuai-bypass 
/conf/ikuai-bypass -c ${CONFIG_FILE_PATH} -r cronAft&

# 主循环，用于模拟长时间运行的任务
while true; do
    sleep 3
done


