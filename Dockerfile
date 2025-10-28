# 使用轻量 Node 环境
FROM node:20-alpine

# 工作目录
WORKDIR /app

# 安装 wrangler CLI
RUN npm install -g wrangler@3

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8788

# 启动本地 Cloudflare Pages 模拟环境
# --local = 不需要登录 Cloudflare 账号
CMD ["wrangler", "pages", "dev", ".", "--local", "--port", "8788"]
