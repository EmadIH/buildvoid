#!/bin/bash
# عرض التاريخ والوقت مع أيقونات

# أيقونات Unicode
CALENDAR_ICON="📅"
CLOCK_ICON="⏰"

# صيغة الوقت والتاريخ
DATE_TIME=$(TZ="Asia/Riyadh" date "+%Y-%m-%d %H:%M")

# الإخراج مع الأيقونات
echo "$CALENDAR_ICON $DATE_TIME $CLOCK_ICON"

