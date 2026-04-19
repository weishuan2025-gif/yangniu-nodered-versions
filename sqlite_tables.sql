CREATE TABLE IF NOT EXISTS t_cattle_feed_intake_data_raw (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    farm_num TEXT,
    station_num TEXT,
    cattle_vidnum TEXT,
    cattle_eidnum TEXT,
    intake_date TEXT,
    intake_start_time TEXT,
    intake_end_time TEXT,
    intake_duration_in_second INTEGER,
    station_start_weight REAL,
    station_end_weight REAL,
    food_intake REAL,
    cattle_weight REAL,
    pic_url TEXT,
    data_type TEXT DEFAULT 'feed',
    upload_date_time TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_flag TEXT NOT NULL DEFAULT '0',
    cattle_eidnum_zi TEXT
);

CREATE TABLE IF NOT EXISTS t_cattle_feed_intake_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    farm_num TEXT,
    station_num TEXT,
    cattle_vidnum TEXT,
    cattle_eidnum TEXT,
    intake_date TEXT,
    intake_start_time TEXT,
    intake_end_time TEXT,
    intake_duration_in_second INTEGER,
    station_start_weight REAL,
    station_end_weight REAL,
    food_intake REAL,
    cattle_weight REAL,
    pic_url TEXT,
    data_type TEXT DEFAULT 'feed',
    upload_date_time TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_flag TEXT NOT NULL DEFAULT '0',
    cattle_eidnum_zi TEXT
);

CREATE INDEX IF NOT EXISTS idx_t_cattle_feed_intake_data_raw_station_date
ON t_cattle_feed_intake_data_raw (station_num, intake_date, data_type);

CREATE INDEX IF NOT EXISTS idx_t_cattle_feed_intake_data_station_date
ON t_cattle_feed_intake_data (station_num, intake_date, data_type);
