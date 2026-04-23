
# Log Analyzer (Python)

A simple cybersecurity tool that analyzes log files and detects failed login attempts.

## Features
- Detects failed login attempts
- Counts total failed attempts
- Filters suspicious activity
- Beginner SOC-style log analysis

## Example Log
Failed password for admin from 192.168.1.1  
Failed password for root from 192.168.1.2  
Accepted password for user from 192.168.1.3  

## How It Works
The script reads a log file (sample.log), finds lines with "Failed password", prints them, and counts total failed attempts.

## How to Run
1. Make sure Python is installed
2. Place your log file as sample.log
3. Run:
python analyzer.py

## Skills Demonstrated
- Python (file handling, loops, conditions)
- Log analysis
- Basic threat detection
- SOC analyst fundamentals

## Future Improvements
- Count failed attempts per IP
- Extract IP addresses
- Detect brute-force attacks

## Author
Adane Vincent  
Accra, Ghana
