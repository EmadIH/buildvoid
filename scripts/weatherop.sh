#!/bin/bash

# إعدادات
API_KEY="bec6679f361397702f007e211548c956"
CITY="Medina,SA"
UNIT="metric" # أو "imperial" للدرجة فهرنهايت

# جلب بيانات الطقس
response=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&units=$UNIT&appid=$API_KEY")

# استخراج البيانات
if [ $? -eq 0 ]; then
  temperature=$(echo "$response" | jq -r '.main.temp')
  weather=$(echo "$response" | jq -r '.weather[0].description')
  rain=$(echo "$response" | jq -r '.rain["1h"] // 0') # توقعات الأمطار خلال ساعة

  # عرض النتيجة
  echo " $temperature°C |  $weather | 🌧 $rain mm"
else
  echo "خطأ في جلب بيانات الطقس"
fi

