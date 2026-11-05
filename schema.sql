-- Base de Datos para Landing page para una agencia de Cr…
CREATE TABLE IF NOT EXISTS landing_page_para_una_agencia_de_cr_users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS landing_page_para_una_agencia_de_cr_orders (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES landing_page_para_una_agencia_de_cr_users(id),
  amount_ars NUMERIC(12, 2) NOT NULL,
  status VARCHAR(50) DEFAULT 'completed',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_landing_page_para_una_agencia_de_cr_orders_user ON landing_page_para_una_agencia_de_cr_orders(user_id);