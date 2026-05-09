DROP TABLE IF EXISTS public.events;

CREATE TABLE public.events (
  event_time  timestamp not null,
  user_id     integer not null,
  session_id  integer not null,
  product_id  integer not null,
  price       double precision not null,
  quantity    smallint not null,
  country     text not null,
  device      text not null,
  event_type  text not null
);
