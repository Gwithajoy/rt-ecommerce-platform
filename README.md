# Real-Time E-commerce Data Platform

실시간 전자상거래 이벤트 데이터를 Kafka → Spark Structured Streaming → MySQL/MongoDB로 처리하는 데이터 플랫폼입니다.  
Airflow로 파이프라인을 자동화하고, Docker/Kubernetes 기반으로 실행되며, Prometheus/Grafana를 통해 모니터링되는 엔드투엔드 실시간 데이터 처리 시스템입니다.

## 목표

- 실시간 사용자 행동 이벤트 수집 (view, add_to_cart, purchase 등)
- Kafka 기반 스트리밍 파이프라인 구축
- Spark Structured Streaming으로 집계 & ETL
- MySQL: 분석용 집계 테이블
- MongoDB: raw 이벤트 저장
- Airflow: 파이프라인 스케줄링 및 오케스트레이션
- Prometheus/Grafana: 모니터링 및 대시보드

## 폴더 구조 (초기)

- `infra/` : Docker, docker-compose 등 인프라 구성
- `streaming/producer/` : Kafka 이벤트 프로듀서
- `streaming/app/` : Spark Streaming ETL 앱
- `db/mysql/init/` : MySQL 초기 스키마
- `airflow/dags/` : Airflow DAG 정의
- `monitoring/` : Prometheus/Grafana 설정
- `scripts/` : 유틸리티 스크립트 (토픽 생성 등)
- `docs/` : 아키텍처 다이어그램, 설계 문서
