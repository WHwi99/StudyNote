# 사용자 행동 인식 데이터 (다중분류)

https://www.kaggle.com/datasets/uciml/human-activity-recognition-with-smartphones 

## 요구사항
- 이 데이터에 적합한 최고의 성능을 가진 분류 모델을 찾아보세요.
- 최적의 하이퍼 파라미터설정이 필요합니다.

아래는 모델별 성능비교표 예시입니다.

모델명 | Accuracy | Precision | Recall | F1-score | AUC | 기타 메모
-- | -- | -- | -- | -- | -- | --
Logistic Regression | 0.89 | 0.88 | 0.87 | 0.87 | 0.91 | 베이스라인 모델
Random Forest | 0.92 | 0.91 | 0.90 | 0.91 | 0.95 | 파라미터 기본값
XGBoost | 0.94 | 0.93 | 0.92 | 0.93 | 0.96 | EarlyStopping 적용
SVM (RBF) | 0.90 | 0.89 | 0.88 | 0.88 | 0.93 | 표준화 필수
KNN (k=5) | 0.85 | 0.84 | 0.83 | 0.83 | 0.87 | 거리기반 특성 영향
