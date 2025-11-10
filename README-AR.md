# Magellan v2 (Clean)

## ماذا بداخل الحزمة
- `frontend/` مشروع Flutter Web (AR/EN) مجهز بـ web/
- `backend/` خادم Express بسيط
- `.github/workflows/` نشر تلقائي Firebase + Koyeb
- `firebase.json` في الجذر ينشر `frontend/build/web`

## المطلوب قبل أول نشر
- أضف Secrets في GitHub:
  - `FIREBASE_SERVICE_ACCOUNT` (JSON من Firebase)
  - `KOYEB_API_TOKEN` (من Koyeb)

## التشغيل
- أي push على `main`:
  - يبني Flutter Web وينشر على Firebase Hosting
  - ينشر backend على Koyeb