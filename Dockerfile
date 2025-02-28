FROM nginx:latest

# คัดลอกไฟล์ HTML ไปที่ nginx
COPY ./html /usr/share/nginx/html

# เปิดพอร์ต 80 ให้เชื่อมต่อจากภายนอก
EXPOSE 80

# รัน Nginx ในโหมด foreground
CMD ["nginx", "-g", "daemon off;"]
