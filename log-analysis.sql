-- Create table
CREATE TABLE logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    status TEXT,
    ip_address TEXT
);

-- Insert sample log data
INSERT INTO logs (username, status, ip_address) VALUES
('admin', 'FAILED', '192.168.1.1'),
('root', 'FAILED', '192.168.1.2'),
('user', 'SUCCESS', '192.168.1.3'),
('admin', 'FAILED', '192.168.1.1');

-- Show all logs
SELECT * FROM logs;

-- Show only failed logins
SELECT * FROM logs
WHERE status = 'FAILED';

-- Count total failed attempts
SELECT COUNT(*) AS total_failed
FROM logs
WHERE status = 'FAILED';

-- Find suspicious IPs (more than 1 failed attempt)
SELECT ip_address, COUNT(*) AS attempts
FROM logs
WHERE status = 'FAILED'
GROUP BY ip_address
HAVING COUNT(*) > 1;
