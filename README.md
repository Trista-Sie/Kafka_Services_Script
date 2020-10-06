## Kafka Shell Script
### 啟動Kafka服務(請開一個獨立的終端機運行)
    ```bash
        # 啟動Kafka services三個必要服務
        $ ~/Kafka_Services_Script/start-major-services.sh

        # 等待上一個服務完全開啟(大約1分鐘左右)，再啟動Kafka其他元件服務
        $ ~/Kafka_Services_Script/start-components.sh
    ```

### 查看服務狀態
    ```bash
        $ ~/Kafka_Services_Script/status-kafka.sh
    ```

### 停止Kafka服務
    ```bash
        $ ~/Kafka_Services_Script/Each_Service/ksqldb-stop.sh
        $ ~/Kafka_Services_Script/Each_Service/rest-proxy-stop.sh
	$ ~/Kafka_Services_Script/Each_Service/kafka-connect-api-stop.sh
        $ ~/Kafka_Services_Script/stop-major-services.sh
    ```
