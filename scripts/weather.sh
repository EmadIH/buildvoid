#!/bin/bash

# إعدادات
API_KEY="e15811acfdd84fc0a15190002252101"
CITY="24.470901,39.612236"
UNIT="metric" # للوحدات المترية (درجة مئوية)

# جلب بيانات الطقس من WeatherAPI
response=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CITY&aqi=no")

# استخراج البيانات
if [ $? -eq 0 ]; then
  temperature=$(echo "$response" | jq -r '.current.temp_c') # درجة الحرارة بالدرجة المئوية
  condition=$(echo "$response" | jq -r '.current.condition.text') # وصف الحالة الجوية
  precipitation=$(echo "$response" | jq -r '.current.precip_mm') # الأمطار بالملليمتر

  # عرض النتيجة
  echo " $temperature°C |  $condition | 🌧 $precipitation mm"
else
  echo "خطأ في جلب بيانات الطقس"
fi

