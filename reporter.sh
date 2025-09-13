#!/bin/bash
echo "# Server Analysis Report" > final_report/analysis_report.md
echo "Report generated on: $(date)" >> final_report/analysis_report.md

grep "INFO" raw_data/game.log > final_report/player_connections.log

echo "## Summary" >> final_report/analysis_report.md
echo -n "- Total Warning: " >> final_report/analysis_report.md
grep "WARN" raw_data/game.log | wc -l >>  final_report/analysis_report.md
echo -n "- Total Critical Error: " >> final_report/analysis_report.md
grep "CRITICAL" raw_data/game.log | wc -l >>  final_report/analysis_report.md
echo -n "- Total Player Logins: ">> final_report/analysis_report.md
grep "LOGIN SUCCESS" raw_data/game.log | wc -l >> final_report/analysis_report.md