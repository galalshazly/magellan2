import express from 'express';
import cors from 'cors';

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.get('/api/health', (req, res) => res.json({ ok: true }));

app.get('/api/menu/categories', (req, res) => {
  res.json([
    { id: 1, name_ar: 'الأطباق الرئيسية', name_en: 'Main Dishes' },
    { id: 2, name_ar: 'المقبلات', name_en: 'Starters' },
  ]);
});

app.listen(PORT, () => console.log(`Magellan backend listening on port ${PORT}`));