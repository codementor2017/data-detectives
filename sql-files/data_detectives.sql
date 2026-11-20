-- =====================================================
-- DATA DETECTIVES - WEEK 4: GROUP BY
-- Grade 11 | Thai School Setting | Single Table Database
-- =====================================================

DROP DATABASE IF EXISTS data_detectives_week4;
CREATE DATABASE data_detectives_week4
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE data_detectives_week4;

-- =====================================================
-- TABLE: students
-- =====================================================
CREATE TABLE students (
  student_id   INT PRIMARY KEY AUTO_INCREMENT,
  first_name   VARCHAR(50)  NOT NULL,
  last_name    VARCHAR(50)  NOT NULL,
  gender       CHAR(1)      NOT NULL,        -- 'M' or 'F'
  grade        INT          NOT NULL,        -- 10, 11, 12
  section      VARCHAR(10)  NOT NULL,        -- e.g., 'M.5/1'
  age          INT          NOT NULL,
  province     VARCHAR(50)  NOT NULL,        -- Thai province
  subject      VARCHAR(50)  NOT NULL,        -- Subject enrolled
  score        INT          NOT NULL,        -- Final score
  attendance   INT          NOT NULL,        -- Days present (out of 100)
  parent_income DECIMAL(8,2) NOT NULL        -- Monthly income in THB
);

INSERT INTO students
(first_name, last_name, gender, grade, section, age, province, subject, score, attendance, parent_income) VALUES
-- Grade 10 Students (8 students)
('Somchai',   'Jaidee',     'M', 10, 'M.4/1', 16, 'Bangkok',    'Mathematics',    85,  95, 35000.00),
('Somsri',    'Deejai',     'F', 10, 'M.4/1', 15, 'Bangkok',    'English',        78,  98, 42000.00),
('Preecha',   'Kittisak',   'M', 10, 'M.4/1', 16, 'Chiang Mai', 'Science',        90,  92, 28000.00),
('Malee',     'Sukjai',     'F', 10, 'M.4/2', 15, 'Bangkok',    'Thai Language',  65,  88, 50000.00),
('Anan',      'Wongsa',     'M', 10, 'M.4/2', 16, 'Khon Kaen',  'Mathematics',    72,  90, 22000.00),
('Kanya',     'Prasert',    'F', 10, 'M.4/2', 15, 'Bangkok',    'English',        88,  99, 38000.00),
('Niran',     'Thongchai',  'M', 10, 'M.4/2', 16, 'Phuket',     'Science',        55,  75, 45000.00),
('Pim',       'Srisuk',     'F', 10, 'M.4/2', 16, 'Chiang Mai', 'Mathematics',    79,  94, 31000.00),

-- Grade 11 Students (12 students)
('Chai',      'Mongkol',    'M', 11, 'M.5/1', 17, 'Phuket',     'Mathematics',    95,  98, 55000.00),
('Nok',       'Rattana',    'F', 11, 'M.5/1', 16, 'Bangkok',    'English',        82,  96, 48000.00),
('Krit',      'Somboon',    'M', 11, 'M.5/1', 17, 'Khon Kaen',  'Science',        70,  85, 25000.00),
('Dao',       'Phimpa',     'F', 11, 'M.5/2', 16, 'Chiang Mai', 'Thai Language',  90,  97, 40000.00),
('Somsak',    'Chaiya',     'M', 11, 'M.5/2', 17, 'Bangkok',    'Mathematics',    62,  78, 60000.00),
('Pimchan',   'Sukhum',     'F', 11, 'M.5/2', 17, 'Bangkok',    'English',        84,  93, 52000.00),
('Wichai',    'Rungruang',  'M', 11, 'M.5/2', 18, 'Phuket',     'Science',        91,  95, 47000.00),
('Siriporn',  'Thongdee',   'F', 11, 'M.5/2', 16, 'Bangkok',    'Mathematics',    87,  99, 36000.00),
('Thanakorn', 'Prasit',     'M', 11, 'M.5/2', 17, 'Chiang Mai', 'Thai Language',  74,  82, 29000.00),
('Aree',      'Khamdee',    'F', 11, 'M.5/2', 17, 'Khon Kaen',  'Science',        68,  80, 24000.00),
('Boonsong',  'Panich',     'M', 11, 'M.5/2', 16, 'Bangkok',    'English',        58,  72, 58000.00),
('Chutima',   'Raksakul',   'F', 11, 'M.5/2', 16, 'Phuket',     'Mathematics',    93,  97, 41000.00),

-- Grade 12 Students (10 students)
('Somsak',    'Chaiya',     'M', 12, 'M.6/1', 18, 'Bangkok',    'Mathematics',    88,  96, 62000.00),
('Pimchan',   'Sukhum',     'F', 12, 'M.6/1', 17, 'Bangkok',    'English',        91,  98, 53000.00),
('Wichai',    'Rungruang',  'M', 12, 'M.6/1', 18, 'Phuket',     'Science',        76,  88, 49000.00),
('Siriporn',  'Thongdee',   'F', 12, 'M.6/2', 17, 'Bangkok',    'Thai Language',  85,  94, 37000.00),
('Thanakorn', 'Prasit',     'M', 12, 'M.6/2', 18, 'Chiang Mai', 'Mathematics',    69,  79, 30000.00),
('Aree',      'Khamdee',    'F', 12, 'M.6/2', 17, 'Khon Kaen',  'English',        95,  99, 26000.00),
('Boonsong',  'Meesuk',     'M', 12, 'M.6/2', 18, 'Bangkok',    'Science',        82,  91, 59000.00),
('Chutima',   'Raksakul',   'F', 12, 'M.6/2', 17, 'Phuket',     'Thai Language',  77,  87, 42000.00),
('Niran',     'Thongchai',  'M', 12, 'M.6/2', 18, 'Phuket',     'Mathematics',    54,  70, 46000.00),
('Pim',       'Srisuk',     'F', 12, 'M.6/2', 17, 'Chiang Mai', 'English',        89,  96, 32000.00);
