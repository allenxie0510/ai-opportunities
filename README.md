# AI 趋势周报 · AI Trends Weekly

每周自动分析 GitHub Trending、Hacker News、Product Hunt 上的 AI 项目趋势，聚焦设计师 + Vibe Coding + 复利创业方向。

## 工作原理

1. OpenClaw Cron 每周一 09:00（北京时间）触发
2. 子 Agent 自动抓取多个数据源的最新趋势
3. 生成分析报告（HTML）
4. 自动推送到本仓库
5. Vercel 检测到推送 → 自动部署

## 技术栈

- 数据采集：OpenClaw Agent（web_fetch）
- 分析引擎：AI 多源趋势聚合
- 前端：纯 HTML/CSS/JS（Editorial/Magazine 设计风格）
- 部署：Vercel（自动从 GitHub 部署）

## 本地开发

直接在浏览器打开 `index.html` 即可预览。

## 许可

MIT
