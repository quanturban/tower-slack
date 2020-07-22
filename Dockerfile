FROM python:2.7-alpine
WORKDIR /app
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; apk add --no-cache python3-dev libffi-dev gcc musl-dev make
COPY . /app
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
CMD ["python", "wsgi.py"]
