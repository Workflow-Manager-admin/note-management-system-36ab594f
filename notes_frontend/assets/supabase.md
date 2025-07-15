# Supabase Setup Documentation for Flutter Notes App

**Table Required:** `notes`

### Table Structure

| Column      | Type     | Required | Notes                     |
|-------------|----------|----------|---------------------------|
| id          | uuid     | yes      | Primary key, default gen  |
| title       | text     | no       | Note title                |
| content     | text     | no       | Note body                 |
| created_at  | timestamptz | yes   | Default: now()            |

### Example SQL to create table
```sql
create table notes (
  id uuid primary key default uuid_generate_v4(),
  title text,
  content text,
  created_at timestamptz not null default now()
);
```

**RLS:** You may leave Row Level Security disabled for open-access demo.

---

### Flutter .env needed
Create a `.env` file in the `/notes_frontend/` folder:
```
SUPABASE_URL=your_supabase_url
SUPABASE_KEY=your_supabase_anon_key
```
Replace `your_supabase_url` and `your_supabase_anon_key` with the values from your Supabase project.

---

### How it Works:
- The app will use `supabase_flutter` and `flutter_dotenv`.
- All CRUD functions performed on this table.
