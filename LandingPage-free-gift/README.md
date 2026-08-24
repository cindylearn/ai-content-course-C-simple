# 🧲 AI 一键落地页（LandingPage-free-gift）

答几题选择题 → 自动做出一个**会成交的销售单页**，同时吐两版
（贴 AutoCRM 用 / 独立上线用）。成交结构预装在模板里，**你不用碰 code**。

---

## 装

跟 Claude 说：

```
帮我从这个链接装 LandingPage-free-gift
https://github.com/cindylearn/ai-content-course-C-simple/tree/main/LandingPage-free-gift
```

装完 **重开 Claude**。

## 用

```
帮我做一个落地页
```

或输入 `/ai-onepage-lp`。

> 打斜杠显示「Unknown command」＝还没重开 Claude；重开一次再打，或直接说上面那句话。

---

## 开工前先准备（重要）

页面好不好看，靠的是**图**。先把这几样翻出来，有就好，没有 skill 会问你要不要 AI 生成或先用占位顶着：

| 素材 | 要几个 | 放哪里 |
|---|---|---|
| Logo（PNG 透明底最好） | 1 | 顶部 |
| 主视觉大图 | 1 | 首屏 |
| 卖点图 | 3–6 | 模块卡 |
| 你/团队的照片 | 1–4 | 信任区 |
| 真实好评（截图或 名+一句话） | 2–6 | 见证区 |

🔴 **这几样不能 AI 假造**：你的真实产品照、你本人的脸、客户见证的头像和内容。假见证＝砸招牌。

> 💡 上过课的你：品牌名／色／logo／受众如果已经在 **01-branding 建的品牌档案**里，skill 会自动读，不重复问你。

## 你会拿到两版

| 版本 | 怎么用 | 按钮收 lead |
|---|---|---|
| **A · AutoCRM 片段** | 贴进 AutoCRM 后台的 HTML 区块 | 接 AutoCRM 原生表单，lead 直接进后台 |
| **B · 独立页** | 双击就能开，也能上线 | 导去你的 WhatsApp 或报名表单 |

图片会自动压缩后**内嵌进页面**——两版都自包含，加载快、不裂图，不用另外找图床。

## 档案

```
SKILL.md                  主档（流程 · 铁律 · 成交心法全嵌入）
questions.md              提问总表
templates/base.html       9 区块主模板（填空 token）
templates/wrap-autocrm.html / wrap-standalone.html   两个输出外壳
examples/suma-lp.html     SUMA 真实落地页，当活范例
```

> 图文教程 PDF **不放在这个资料夹**（装 skill 时会白白吃掉 token）——
> 在课程 repo 的 `交付物-doc-pdf-ppt/` 里：`AI一键落地页-使用教程.pdf`、
> 以及两份赠品合一的 `Bonus-Gift_使用教程.pdf`。

> 只做**静态销售单页**。dashboard／会员系统／自动跟进／CRM／支付＝ Jared 的 AI Business 课，这里故意不做。
