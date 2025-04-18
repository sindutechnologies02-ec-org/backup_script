# Automated Backup Script using Bash and Windows Task Scheduler

This project demonstrates how to automatically back up files from a local folder to AWS S3 using a Bash script and schedule it using *Windows Task Scheduler*.

---

## Project Structure

- backup.sh - Main bash script that uploads files to an S3 bucket.
- run_backup.bat - Windows batch file to execute the bash script via Task Scheduler.
- README.md - Project documentation.
- Screenshots - Task Scheduler status and logs.
<img width="960" alt="image" src="https://github.com/user-attachments/assets/d15c9f6d-9572-48da-9065-fe95a285ddc2" />
<img width="960" alt="image" src="https://github.com/user-attachments/assets/791731bf-2e18-46ef-8956-ab9500f110b9" />


---

## Prerequisites

- AWS CLI installed and configured (aws configure)
- Git Bash installed on Windows
- A valid S3 bucket (already created on AWS)
- Windows Task Scheduler

---

## How the Backup Works

1. backup.sh compresses the files and uploads them to your specified S3 bucket.
2. A .bat file (run_backup.bat) is created to run the script using Git Bash.
3. The batch file is triggered every day at a fixed time using Task Scheduler.
4. Logs are saved locally to confirm execution.

---

## How to Run Manually

```bash
./backup.sh
