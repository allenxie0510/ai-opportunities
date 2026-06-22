# AI 一人公司周报 · Solo AI Weekly

每周自动扫描 X/Twitter、GitHub Trending、Product Hunt、Indie Hackers 上的 AI 创业趋势，聚焦**一人公司**方向——独立设计师与 Vibe Coder 可落地的 AI 微创业机会。

## 定位

> 一人公司 · 独立设计师/开发者 · 可落地的 AI 微创业

### 核心赛道
- **设计资产** — Figma 插件、UI Kit、AI 品牌素材包
- **虚拟产品** — Notion 模板、Prompt 库、数字产品
- **自动化** — n8n 工作流、浏览器脚本
- **内容变现** — AI 配图生成、跨平台内容分发
- **微SaaS** — 单平台深度工具、AI Wrapper
- **小而美** — 设计师工作流工具、独立开发者微工具

### 筛选标准
- ✅ MVP 1–6 周能做完
- ✅ 一个人就能跑（设计 + 开发 + 运营）
- ✅ 有明确的单人变现案例
- ✅ 有 GitHub / Product Hunt / TrustMRR 真实数据
- ❌ 需要企业客户 BD
- ❌ 需要融资或团队
- ❌ 纯概念无现成产品对标

### 数据源
X / Twitter · GitHub Trending · Product Hunt · Indie Hackers · TrustMRR

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

### 收藏按钮规范

所有收藏按钮统一使用 SVG 书签图标，**禁止使用文字按钮**。

HTML 模板（替换 `data-id` 即可）：

```html
<button class="bookmark-btn" data-id="01" title="收藏">
  <svg width="18" height="18" viewBox="0 0 18 18" fill="none">
    <path d="M3.75 2.75C3.75 1.92157 4.42157 1.25 5.25 1.25H12.75C13.5784 1.25 14.25 1.92157 14.25 2.75V15.5L9 12.25L3.75 15.5V2.75Z" stroke="currentColor" stroke-width="1.5" stroke-linejoin="round"/>
  </svg>
</button>
```

CSS 关键规则：按钮 28×28 透明容器，hover 时浅珊瑚底色，`.faved` 时图标填充 `var(--coral)`。JS `updateBookmarkUI()` 仅切换 class，不修改 textContent。

## 许可

MIT
