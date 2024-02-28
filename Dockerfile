# 使用官方 OpenResty 镜像作为基础镜像
FROM openresty/openresty:latest

# 将本地 Nginx 配置文件复制到容器的 OpenResty 配置目录中
COPY default.conf /etc/nginx/conf.d/ 

# 暴露端口，以便外部可以访问
EXPOSE 8080

# 启动 OpenResty
CMD ["openresty", "-g", "daemon off;"]

