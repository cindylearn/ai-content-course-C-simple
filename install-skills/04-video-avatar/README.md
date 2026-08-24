# Skill · AI 影片（工具：Higgsfield / Seedance）

## 🔑 怎么触发这个 skill（两种方式，任选一个）

| 方式 | 打什么 |
|---|---|
| ① 斜杠（最稳·直接点名）| `/suma-ai-04-video-avatar` |
| ② First Prompt（说一句话）| 「帮我做口播短视频」 |

> 🔑 **入口只有一个** —— 不管是「从零生成一支片」还是「把已经录好的片换妆/换衣服/换背景/换机位」，都是打这句话进来。**别记两套说法。**
> 🔴 **进来第一题，Claude 会问你方向**（从零生成 or 重绘已录好的片），再回读确认一次「我理解你要做的是…，走哪条路，大概花多少 credit，对吗？」—— 你点一下就好。两条路成本差 4 倍以上，所以一定先问清楚才动手。
> 两种效果一样：斜杠直接点名；First Prompt 打一句话，Claude 认关键词自己进。打不中就用斜杠。触发后一题一题问你。

> 🔴 **前置（跟 SKILL.md 一致，缺了先回 `suma-ai-00-setup`）：Notion + Google Drive + GitHub connector 必连**（Notion 建大脑、Drive 存成品、GitHub 装 skill）· 地基 + Notion 骨架先搭好 · 要好 Google Drive folder 链接（成品同步存这）。


> 🔴 **交互铁律（跟 SKILL.md 一致，这一包的任何一步都守）：问用户任何选择题 —— 一题一题问、一题一张可点选项卡（`AskUserQuestion`，每题最多 3–4 个选项，系统自动加「其他」）、**绝不一次全倒**。只有开放题（品牌名 / 具体挑刺 / 参考链接）才让他打字。**

> 🔴 **底层三层（跟 SKILL.md 一致，这一包出的每样东西都要套）：① 说服（大师：**Blair Warren 为客户处境正名**/自我说服/LF8/AIDA·PAS/Cialdini/Duarte 客户是英雄）· ② 语言（NLP：换框/未来预演/连续肯定/锚定）· ③ 动机（6 大人性需求：确定/新鲜/重要/爱与连接/成长/贡献）。做完要能说出「这套了哪个大师 + 哪个 NLP + 戳哪个人性需求」——说不出 = 只做了表面，重来。**



**在系统里的工位：** 把脚本变成完整口播短视频 —— 视频生产线的核心（数字人见 `7大AI启动包/05-《AI数字分身》启动包`，音乐见 `7大AI启动包/07-《AI品牌配乐》启动包`）。

> 🔴 **先分两条路线**（跟院长 slide 一致，脚本角度完全不同）：
> - **个人 IP / AI 数字人口播**：你（或数字分身）出镜讲观点/方法，建立个人影响力——台词是「你的主张」，靠持续 + 独特观点。
> - **卖产品 / 服务影片广告**：推货/服务成交——台词是「痛点→产品价值→证据→CTA」，B-roll show 产品/成品/使用场景。

## 🔀 开工第一题：分流（🔴 问完才知道走哪条）

**一张选项卡、二选一，别默认：**

> **你这支片要怎么做？**
> **① 从零生成** —— 我有脚本（或还没有），让 AI 把每一镜生成出来，人可以是 AI 人 / 我的样子 / 卡通人。
> **② 我已经自己录好了** —— 片子拍好了，想换个妆 / 换衣服 / 换发型 / 换背景 / 换机位，**声音直接用原片的**。

- 选 **①** → **路线 A**，接着看下面的硬闸门 + 流水线。
- 选 **②** → **路线 B · 重绘已录好的片**，**直接跳到本文件最后那一段**，别跑硬闸门和锁脸（那是给从零生成用的，会叫他交脚本、交 3 张脸参考图，全错）。

> 🔴 **两条路的成本差 4 倍以上**（A：480p+fast 约 1.5 cr/秒 · B：720p Seedance 2.5 约 6.5 cr/秒）—— 分流问错了不只是流程乱，是烧钱。

---

## 🔴🔴 开工前硬闸门：先有完整脚本，才做口播视频

**不该「视频」「声音」分开做 —— 口播视频 = 一个完整脚本长出来的。** 没脚本就生成 = 东一句西一句、人物/台词跑偏。

- 🔴 **先查 Notion**：内容矩阵里这条内容，有没有**完整分镜脚本**（一 shot 一 row：镜号/类型 · Prompt · 台词 · 平台）？
  - **没有 → 做不了，先回 `02 AI文案` 把脚本写完整**（8 分镜 + 每镜台词 + 每镜画面 prompt），进 Notion 表，再回来。
- 🔴 **脚本里已经给好角色的 prompt**（每个口播镜重复完整 persona）—— 你**不用重新设计人物**。
- 🔴 **04 直接把脚本拍成一支正常口播视频** —— 脚本 prompt 就是**画面 + 声音一起**生成（`generate_audio=true`），先 test 一支跑通。04 不选人、不造脸。
- 🔴 **开工只问两件（一题一张选项卡，别默认）：**
  1. **角色要 AI 人 还是 卡通人？**
     - **AI 人**（default）→ 跟真人一样的**照片级真人数字人**，04 直接照脚本 persona 出（画面+声音一起）。**不用 05。**
     - **卡通人** → 选一个**卡通风格分类**（2D 扁平 / 3D 皮克斯感 / 动漫 / Q版… 按内容定）。
  2. **说话语言 —— 别默认英文：** 🇲🇾 **马来西亚华语／中文（默认）** · 中英混（Rojak）· English · Bahasa Malaysia ·（方言走「其他」）。选的语言 = 台词语言 + 选声语言，全片统一。
- 🔴 **主讲人只 mention，不硬卡：** 想**全片同一个人 / 用真人本尊 / 锁定一个特定 AI 脸** → 才去 `05 AI数字人`（自己样子的数字人，或九宫格选一个锁定）；拿它给的脸参考图回来再拍。**先 test 不用 05。**
- 确认这几点 → 脚本 + 角色 prompt 都齐了 → 才进下面的流水线生成。

---

## 流水线
```
✅ 完整脚本(Notion) + 角色参考图 → seedance 逐镜生成
              → 抽帧验证 → 拼接完整版 → 后期剪辑(字幕/音效/BGM)
```
1. **脚本已在 Notion 表**（上面的硬闸门已确认）：镜号/类型 · Prompt · 台词 · 平台。整支约 60–100s。
2. **人物参考图**：有真人 → 他 3 张脸参考图；没真人 → 从 `05 AI数字人` 拿数字人参考图（数字人怎么做、九宫格选人都在 `05 AI数字人`）。
3. **锁人物（口播镜）**：用 **3 张脸参考图**（正脸+不同角度更稳）当 `image_references`，每个真人镜 prompt **重复完整 persona 描述** → 全片同一个人。
4. **逐镜生成**：`seedance_2_0` · `9:16` · 每镜 4–15s。🔴 **口播镜 `generate_audio=true`（声音、画面一起出，不分开）**；B-roll 无脸镜 `generate_audio=false`。
6. 🔴 **每支片出来后，先问学员三选一：保持 / 提速一点 / 放慢一点。** 节奏是主观的 —— 别替他决定。
   做法：用 ffmpeg 按比例改 `setpts` 即可，**零 credit、不用重新生成**。提速用 `setpts=0.92*PTS` 之类（数值 <1 变快），放慢用 >1。**记得跟学员讲清楚这是免费的**，他才敢开口要调。
5. **验证 + 拼接**：抽帧检查（无 ffmpeg 用 `imageio_ffmpeg`）→ 统一参数 → concat 完整版。
   🔴 **任何 ffmpeg 重编码都必须显式给 CRF**：`-c:v libx264 -crf 16 -preset slow -pix_fmt yuv420p`。**用默认参数会把 1347 kb/s 悄悄压到 483–801（掉 41–64%），整支片变糊** —— 跟「别垫压缩档」是同一个坑。
6. **后期剪辑**：字幕 / 花字 / 音效 / BGM → 见「AI 剪片」段 + 本包两份配套文档。

---

## 人物的脸从哪来（没有真人的时候）

第 3 步要「3 张脸参考图」——没有真人可拍时，**那张脸去 `05 AI数字人` 做**：九宫格选人、锁脸、选 model 全在 05。**04 不做选人**，只把 05 给的 3 张脸参考图拿回来，逐镜锁同一个人。

> 🔴 有真人本尊 → 直接用他 3 张脸参考图，跳过 05。

## 真实感条款（每一镜都要带 —— 让画面像真实拍摄，不像 AI）

```
candid photo shot on a real camera (50mm, f/2.8), natural realistic skin texture with
visible pores, fine lines and subtle imperfections, natural facial asymmetry, true-to-life
natural lighting, slight film grain, documentary realism, looks like a real unretouched
photo of a real person, NOT AI-generated, no CGI, no 3D render, no plastic or
over-smoothed skin, no waxy look, no airbrushing, no over-saturation, no perfect symmetry.
```

漏了它 → 出来就是一眼假的「AI 脸」：皮肤打蜡、五官完美对称、没毛孔。**这条跟 §2「照片级真人」是同一场仗**：真实感条款管那张**脸**不假，§2 管那个**人**会动。

---

## 🔴 硬规则（实操固化，最重要）

### 🔴🔴 口播镜对嘴 · 六条铁律（2026-08-14 实测，约 74 credit 试错换来 —— 漏一条嘴型就崩）

> 这六条是**口播镜**（有脸、要对嘴）专用。B-roll 无脸不对嘴，不适用。

1. 🔴 **ACTION 里绝不写头部大动作** —— 摇头／点头／大幅转头侧头。**实测：写「开头轻摇头」对嘴当场崩，删掉立刻正常。** 头部动画会跟嘴部动画抢资源。正面写死 `HIS HEAD STAYS STEADY AND LEVEL THROUGHOUT — no head shaking, no nodding, no large head turns or tilts. Only tiny natural micro-movements.`，情绪一律靠**表情 + 一只手**表达。（句尾极小幅度的点头安全；开头摇头会毁整段。）
2. 🔴 **LIP-SYNC 指令放 prompt 第一行**，并写明「其他指令都次于把嘴做对」—— 模型对开头指令权重更高：
   `LIP-SYNC IS THE TOP PRIORITY OF THIS SHOT: the mouth must follow the supplied audio reference syllable by syllable, opening and closing exactly with the speech and closing between words. Every other instruction below is secondary to getting the mouth right.`
3. 🔴 **绝不写「嘴持续张开／全程不间断说话」** —— 那等于叫模型无视音素、机械开合，嘴型直接跟咬字脱钩。
   ⚠️ 特别注意：本 skill 的「**台词第一帧就讲、不留白**」很容易被误写成这样。**「第一帧就开口」可以写，「嘴一直张着不停」绝对不行。** 开头若有留白，**后期剪掉**，别为它牺牲对嘴。
4. **口播镜配音不得短于约 5 秒** —— 实测 3.72s 的镜对嘴失败、5.69s 正常。**别为了「短句好对嘴」去拆句，拆太短反而对不上**（反直觉，但两次实测都如此）。台词太短就把它跟相邻句合并，或把内容写厚。
5. **`duration` 贴着配音设，绝不明显长于配音** —— 视频比配音长，模型会把嘴型「摊开」填满整段（实测拉伸 +7%～+15% 就能看出慢半拍）。生成后用 ffmpeg **按比例提速**对到 0 误差：
   `-filter:v "setpts=<配音秒数/视频秒数>*PTS" -r 24`（**零 credit**，比重跑便宜）。
6. **运镜／构图用正面写法，别用禁令** —— 见下面「否定句元规律」。要固定机位就写 `a locked-off tripod framing with only the faintest natural float`，要锁构图就写 `held at exactly the same distance from the first frame to the last` 并点名道具必须留在画面里。

### 🔴🔴 否定句元规律 —— 这条比单条规则更重要

**seedance 基本不服从「不要 X」。** 实测被无视的禁令：`NO push-in`（照推）· `NO letters/NO words`（照出乱码）· `NO hologram`（照出科幻感）· 「手机不要立起来」（照立）· 「不要芭蕉叶」（照给热带风）。

> **能用正面描述就别用禁令；实在要禁，得配合物理手段。**
> 例：要屏幕上没有乱码字 —— 写 `NO letters` 没用，**改成把焦点指定到别处**（`the FOCUS SITS ON THE KEYBOARD, while the SCREEN ITSELF IS SOFTLY OUT OF FOCUS`），用光学让字根本成不了形。



### 1. 强制无字幕（最容易踩）
- **原生配音（`generate_audio=true`）默认会把台词烤成字幕**，模型不会自己去掉。
- **prompt 写死这句**（漏了就有字幕，写了就干净——已验证）：
  > `ABSOLUTELY NO on-screen text, NO subtitles, NO captions, NO burned-in words of ANY kind anywhere in the frame — completely clean footage, all text added later in post.`
- 品牌名 / CTA / 字幕 **全部后期（CapCut/Canva）加**，AI 生成保持干净无字。

### 2. 真人感：照片级真人 + 会眨眼 + 眼珠会动（否则「卡通脸 / 木偶死眼」）
> 🔴 **这条只管「AI 人」路线** —— 选了「卡通人」就跳过照片级真人，按你选的卡通风格出。（照片级真人 = 防止 **AI 人意外**变卡通/塑料脸，不是禁止你**故意**做卡通人。）
- 🔴 **数字人（AI 人路线）必须「照片级真人」**（不是卡通、不是 3D avatar）：prompt 写死
  > `PHOTOREAL, REALISTIC HUMAN presenter talking to camera, a real-looking person, natural skin, NOT a cartoon, NOT a 3D avatar, NOT CGI.`
  漏了这条第一版就会出卡通/塑料脸（详见 `7大AI启动包/05-《AI数字分身》启动包`）。
- prompt 再写活人细节：
  > `BLINKS naturally, EYES alive with the eyeballs MOVING via subtle micro-saccades, gaze shifts naturally, small head/eyebrow micro-movements, gentle breathing — a real living human, NOT a staring mannequin with dead eyes.`
- 静态参考图 + 没写眼动 → 模型只动嘴、眼睛发呆。

### 3. 运镜 / 动作（1–3 镜点缀，避免死机位）
- 推镜 `SLOW CINEMATIC CAMERA PUSH-IN`（hook / CTA 收尾）· 横摇 `CAMERA SLOWLY PANS`（展示一排东西）· 手持 `slight handheld camera movement`（口语段）· 动作：手势 / 前倾 / 指向。别每镜都加。

### 4. B-roll = 无脸真实近景，对应台词点名的东西
- 🔴 **首选：无脸真实近景（close-up）实拍/录屏，show 那句台词点名的东西本身**（工具/产品/成品/流程）。真实、贴题。
- 🔴 **优先用你自己的真实素材**：开工前把该**工具/产品/成品的真实截图或短片**发给 Claude → 当 `image_references` 或让它照着写 prompt，B-roll 才贴、才真、**不乱造假界面**。没参考时才让它按台词描述生成近景示范。
- 🔴 **B-roll 一律不放主播、不需要口型** → 生成时 `generate_audio=false` 且**不给 `audio_references`** → 无口型问题、几乎不烤字幕。
- ❌ **别让主播出镜做演示镜**：主播一开口就要对口型，而 audio_ref 口型在演示镜上不稳、还随机烤字幕。口播归口播、演示归无脸 B-roll，分开最稳。
- 🔴 **B-roll 必须跟那句台词内容对应**（讲 A 就 show A），泛泛「人在打电脑」不算。
- 🔴🔴 **B-roll 的更高判准（比「对应台词」更重要）：遮住台词，光看画面，认得出这是卖什么的吗？** 认不出＝重设计。
  ⚠️ 只照台词拍字面（讲单据就拍单据、讲圈数据就拍圈框）会做出「跟任何生意都能配」的死物特写 —— 对得上字，却没传达你在卖什么。
  **两个信号分工用**：**卖服务／卖课 ＝ 有人在动手做**（过肩镜／手部镜，**只拍后脑勺和肩膀、不露脸 → 不用对嘴，零风险**）· **AI 在干活 ＝ 没人碰它，它自己在动**（全程无手入画，东西自己完成）。

- 🔴 **画面要快切**：prompt 写 `FAST-PACED, snappy quick HARD CUTS every ~1.2–1.5s, everything moving fast, no slow lingering shots`。
- 🔴 **prompt 绝不写 hex 色号 / 文字标签**（会被烤成乱码文字，跟海报「别写字体规格」同一个坑）；改写方向词（如 `blue-and-white palette`）+ **纯图标/纯抽象**，并加死 `NO letters, NO numbers, NO words, NO labels of ANY kind`。
- 屏幕内容一律 **soft/out of focus，无可读文字**。

### 4.5 🔴 口播镜：声音和画面「一起生成」，不分开
**口播视频 = 一个脚本长出来的一段「会说话 + 有声」的画面 —— 不是先出哑片再配音。** 真人口播镜一次到位：
1. **一次生成**：`seedance_2_0` · `generate_audio=true` · 9:16 · 脸参考图当 `image_references` · 台词写进 prompt → 直接出「有声、对口型」的口播镜。**声音和画面同一次生成、天然同步**，不用后期合声、不用对时间轴。
2. **无字幕护栏必带**（§1 那句 `ABSOLUTELY NO on-screen text…`）—— 原生配音会想烤字幕，把这句写死就干净（已验证）。
3. **一把声**：同一主角所有口播镜用**同一 voice preset / 同一套声音参数**（§5），全片一把声、语言 = 上面第 2 步选的语言。
4. **B-roll 无脸镜**：不需口型也不需人声 → `generate_audio=false`、不给 `audio_references`（旁白后期加）。

> 🟡 **唯一要「声音分开」的情况 = `05` 的「自己样子的数字人」**（克隆某个真人本尊的声音）→ 才走「静音生成 + 逐句 TTS + PTS 合声」那套。**其它全部声画一起**：04 的 AI 人、05 的九宫格数字人，都是 `generate_audio=true` 一次出。

### 5. 选声（按数字人性别）
- **默认走 preset，按数字人性别挑**：男→男声、女→女声。`list_voices` 看全部（男/女各约 20 把）+ `preview_url` 试听；用 `voice_type='preset'` + `voice_id`。
- **想更像某个真人本尊** → 才克隆（`create_voice_from_confirmed_audio`，干净样本：安静、近麦 ~15cm、无背景乐、连续讲 ~1 分钟；样本脏 → 克隆薄+带杂音）。
- ⚠️ preset 偏英语训练，**中文/其他语口播可能带点口音**；在意腔调就试听后定，或用克隆。
- B-roll 旁白用同一把声保持一致。

### 6. 台词
- **用你目标市场的语言/口语**、**无口头禅**；要多要实；从第一帧就讲、不留白；语速偏快不拖。

### 7. 背景
- 背景**虚化、无可读文字**（`background softly out of focus, NO readable text`）——否则参考图里的字会被带进画面。

### 8. 合规红线
- **按你自己行业/品牌的合规红线走**（该写什么、绝不写什么）。
- **人物贴你的目标市场**（含背景/屏幕里的人）。

---

## 参数 & 成本（省 credit）
- **一律 480p + `mode fast`**；实测 `std/720p` 没明显差别、不值 3–4 倍。
- 🔴 **按秒计费，不是按镜**：实测 **1.5 credit/秒**（480p+fast）。15 秒镜 = 22.5 credit，8 秒镜 = 12。**台词越长越贵** —— 写脚本时就要有成本意识。真跑前用 `get_cost:true` 免费预检（同时还能验参数形状对不对）。
- `count=1`，一镜一条。
- 弹 `preset` 推荐不想用 → 带 `declined_preset_id` 原样重发。
- **先验 1 镜确认「声音+无字幕+眨眼+脸」→ OK 再批量。**

## AI 剪片（字幕 / 配乐 / 音效）

**🔴 生成 ≠ 成品。** 拼接完只是**素材**。字幕/花字/音效/BGM 这一层，才是「广告片」和「AI 生成视频」的分界线。

### 用什么剪 —— 中文片只有一条路（2026-07 实测）

| 工具 | 结论 |
|---|---|
| ⭐ **ChatCut**（MCP 连接器）| ✅ **唯一为 AI agent 设计、且认真做过中文的剪辑器**（音效库说明都是中文写的、内置 CJK 字体后备、CJK 逐字高亮它自己默认关掉——因为它知道中文不该那样）|
| **ffmpeg + Claude** | ✅ 基础够用：`.srt/.ass` 烧字幕、垫 BGM、混音效、淡入淡出/缩放 |
| **HyperFrames** | ⚠️ **叠图层可以，中文字幕别用** —— 见下 |
| **剪映 / CapCut** | ❌ **草稿加密**，AI 程序化剪不了（只能手动或 UI 自动化，慢且脆）|
| **Gemini Omni** | ❌ 实测不稳，中文字幕烧不干净 |

### 📄 三份配套文档（在本包同目录）

| 文档 | 是什么 | 什么时候看 |
|---|---|---|
| **`VIDEO-PROMPT-SKILL.md`** | **前段 skill（出片）** —— 引导流程：读 script → 问方向（含语言）→ 逐镜 prompt | 有 script 要开拍时。**它只管流程，规则以本 README 为准** |
| **`SOP-AI自动剪辑.md`** | **通用方法论** —— 五层模型 · 14 条规则 · **教练式提问脚本** · 全行业适配表 | **剪之前先看这份**。换工具、换行业都成立 |
| **`CHATCUT-SKILL.md`** | **后段 skill（剪片）** —— ChatCut 说明书：全库存清单（音效35/转场13/特效9/推近4/MG 210）+ 14 个坑 | 动手剪时查 |

> **一条生产线两段：`VIDEO-PROMPT-SKILL`（出片）→ `CHATCUT-SKILL`（剪片）。** 两份 skill 都只写流程，**硬规则单一源头在本 README** —— 改一处全对。

### 🔴 五条最容易赔钱的（详见 SOP）

1. **建项目 fps 用工具默认值（30），别用原片真实值** —— 引擎硬编码 30fps；实测填 24 → **片尾 17 秒字幕永远不出现**
2. **转录是可以改的源数据** —— 没标点先补标点。补完转录引擎自己重新分段（2 大坨 → 26 句），分页自动就对；不补就得手工打 20+ 个断点救症状
3. **中文逐字高亮是废的** —— 中文 ASR 的「word」= 单个字，高亮会跟着废字乱跑。**花字只能用动态图形层做**
4. **描边是宋体的天敌** —— >5px 会把细笔画吃光，宋体变黑体。**衬线体用阴影**
5. **声音出问题先查开关** —— 静音的轨道和音量不足，症状一模一样（实测：BGM 调了三轮音量，那条轨是 muted）

### 🔴 选音效/转场：三问，不是查表

> ① **形状对不对？**（砸/飞/卡进位/累积 —— 跟动画匹配吗）
> ② **这个声音属于哪个文化圈？**（我在哪听过它）
> ③ 那个圈，**跟这个品牌是同一群人吗？**

说明书只写「它做什么」，不写「它听起来像什么文化」。某个音效说明写着「适合重点字幕」——功能全对，**但它是网络迷因音**，打在专业品牌上是灾难。

**没有绝对的禁忌音**（唱片刮擦在潮牌片里是神来之笔），**只有对不对得上**。别背黑名单——**拿到品牌人格，对整个库跑一遍三问**。

---

## HyperFrames（叠图层可以，中文字幕别用）

HeyGen 开源（Apache-2.0 免费商用），HTML/CSS → 确定性 MP4。**做透明叠加图层 / logo sting 是好用的。**

**但 `/embedded-captions` 是拉丁文专用**（2026-07 实测）——不是配置问题，是设计假设：

1. **自带 6 个字体全是 latin 子集**（`LXGWWenKaiTC-400-latin.woff2` 才 19KB，真中文字体 5–20MB）→ 中文全变豆腐块 □□□
   → 换 Noto Sans SC 能修
2. **Whisper 默认模型全带 `.en`** → 中文必须 `--model large-v3 --language zh`
   → 能修
3. **中文没空格 → word 级时间码躺平**（84 秒整段吐成**一个** word）
   → 用 ffmpeg 检测硬切点 + 套自己的脚本文字（比 ASR 准、零错字）：
   ```bash
   ffmpeg -i in.mp4 -filter:v "select='gt(scene,0.3)',showinfo" -f null - 2>&1 | grep -oE "pts_time:[0-9.]+"
   ```
   ✅ 校验：每段「字数 ÷ 秒数」应稳定在 **~6 字/秒**；偏太多 = 切点抓错（B-roll 横摇会产生假切点）
4. 🔴 **修完前三个还是不行** —— 它的匹配器是 **ASCII** 的、锚点是 **16:9 硬编码**的。**中文字幕就走 ChatCut。**

**它不干的事**：不改原片本身（重剪节奏/换背景/调色/改音频 = NLE 的活）。原片在底下完整播，它只叠图层。

## 其他两条路（实测结论，别浪费时间）
- **Remotion**（React 写视频）：能力相当、中文渲染干净。⚠️ **>3 人的营利公司商用要买 Company License**（remotion.pro）；个人/≤3人/非营利/评估期免费。
- **Gemini Omni**：能生成、也能「附参考片+原片」做风格迁移。**实测效果不稳**，中文字幕烧不干净。当玩具行，别当生产工具。

## 🧰 工具清单（全部链接 + 实测结论）

> 这一节的每个结论都是**真金白银试出来的**（2026-07-15 一整天）。
> 淘汰的那几个也留着 —— **别重走一遍死路**。

### ✅ 生产线在用的

| 工具 | 链接 | 干什么 | 要装吗 |
|---|---|---|---|
| ⭐ **Claude**（Claude Code）| <https://claude.ai/code> | **总指挥** —— 下面每个 connector 都是它在调。没它一个都跑不起来 | 订阅 |
| **Higgsfield**（Seedance 2.0）| <https://higgsfield.ai> | **生成**口播镜 + B-roll | connector · 按 credit 付费（**具体看官网**）|
| ⭐ **ChatCut** | <https://www.chatcut.io> · 编辑器 <https://app.chatcut.io> | **剪辑** —— 字幕/花字/音效/BGM/转场。**中文片唯一可行的 AI 剪辑路** | connector · **具体看官网** |
| **Suno** | <https://suno.com> | 背景乐（ChatCut 内也能直接生成）| connector · **具体看官网** |
| **Notion** | <https://notion.so> | 内容矩阵（分镜表 / 排期）| connector · **具体看官网** |
| **Google Drive** | — | 存原片 | connector |
| **ffmpeg** | `brew install ffmpeg` | **拼接分镜** · 探测规格 | 🔧 **唯一要装的东西**（免费开源）|
| **Pexels / Pixabay** | <https://pexels.com> · <https://pixabay.com> | 免费商用素材 | 不用注册（ChatCut 内建 `search_stock_media` 直接搜）|

> 💰 **价格一律「具体看官网」** —— 各家套餐一直在变，写死了教材立刻过时。
> 🔧 **学员唯一要装的是 ffmpeg**，其余全是 connector（Claude 直接调，零安装）。
> 🐍 **不用 Python / node** —— 那些是我们出教材才用的。

### ⚠️ 素材的两个坑（实测）

1. **一定要传原片，不是 `_web` 压缩档** —— 实测：4.6MB 的 480p 剪出来**整支糊**，原片 100MB。「打点做得再精致，垫在 480p 底下也白搭」
2. **有分镜文件就不用侦测切点** —— 分镜的**时长本身就是切点表**，精确、免费、零误差。
   实测：8 段累计 `9.93/23.93/33.15/42.99/57.46/65.33/77.56` = ffmpeg 侦测出来的 `9.92/23.92/33.17/43.00/57.46/65.33/77.58`，**分毫不差**。
   → **侦测只对「拿到一支拼好的片、不知道切点」才有用**（而且 B-roll 横摇会骗出假切点）

### 🔤 字体（授权红线）

| 字体 | 链接 | 授权 |
|---|---|---|
| **思源宋体** `Noto Serif SC` | <https://fonts.google.com/noto/specimen/Noto+Serif+SC> | ✅ **开源，免费商用**。宋体系正解 |
| **思源黑体** `Noto Sans SC` | <https://fonts.google.com/noto/specimen/Noto+Sans+SC> | ✅ 同上 |
| ❌ 极宋 / 研宋 / 方正 / 汉仪 | — | 🔴 **付费商用字库**。方正/汉仪维权是出了名的，**商用别碰** |

### ❌ 试过、淘汰的（别浪费时间）

| 工具 | 链接 | 为什么不行 |
|---|---|---|
| **HyperFrames** | <https://github.com/heygen-com/hyperframes> | **叠图层可以，中文字幕不行**。字体是 latin 子集、匹配器是 ASCII、锚点 16:9 硬编码 —— **是设计假设，不是配置问题** |
| **Remotion** | <https://www.remotion.dev> · <https://github.com/remotion-dev/remotion> | 能力相当、中文渲染干净。⚠️ **>3 人的营利公司要买 Company License**（<https://remotion.pro>）；个人/≤3人/非营利免费 |
| **Gemini Omni** | <https://gemini.google.com/app> | 能生成、能风格迁移。**实测不稳**，中文字幕烧不干净。当玩具行 |
| **剪映专业版 / CapCut** | <https://www.capcut.cn> | **草稿加密** → AI 读不了、写不了，**程序化剪辑走不通**（只能手动或 UI 自动化，慢且脆）。<br>⚠️ 注：我们**没实测过用它手剪整支** —— 只验证了「AI 接不进去」。你自己手剪它当然能用，只是 AI 帮不了你 |

### 📖 参考读物（看结论就好，别照抄）

| | 链接 | 怎么看 |
|---|---|---|
| Clipchamp「20 种转场」 | <https://clipchamp.com/zh-hans/blog/video-transitions/> | ⚠️ **是微软 Clipchamp 的产品软文**，20 个转场是它自己的素材库目录，不是行业标准。**但里面两条是真的**：①「交换切换」= Before/After 卡片对比 ②「确保足够的时间和空间，不会因为剪辑而分散注意力」|

### 💡 找风格参考的正确姿势

**别用文字描述风格 —— 直接甩片子。**

今天最有效的一步：直接发 2 支 Instagram reel 说「要这种感觉」，比写 500 字的 prompt 精准得多。

```
「参考这两支的节奏和花字：[链接1] [链接2]
 我的素材是 [链接]，帮我拆解它们的做法，套到我的片上」
```

**⚠️ 但要分清楚**：参考片是**别人的口播节奏**。
如果参考片的人在「爆句」（2-5 字一停），而你的主播是流畅连贯讲的，
**那个 2-5 字字幕的风格你学不来** —— 那是拍摄时的表演方式，不是剪辑技巧。
**这个门槛在摄影棚，不在剪辑台。**

---

## 接进系统
- 成品贴回你的内容表 + 归档：`[Stage]/[受众]/Video 素材/[命名]/[分镜 + 完整版]`。
- 拼接：`imageio_ffmpeg` concat → **再进 ChatCut 做后期**（字幕/花字/音效/BGM，见上）。

---
> 📎 **SUMA 内部示例**（仅供参考，不是通用规则）：主播 Jared + 极致鸭嗓克隆声；B-roll = 6 个 AI 工具逐个近景示范（写文案屏/出图/数字人/PPT/波形/剪辑）；合规红线 = 不写价格/免费/具体名额数字（用「名额有限」）、完整品牌名、人物一律马来西亚本地人。换成你自己行业的即可。

---

## 🎭 路线 B · 重绘已录好的片（换造型 / 换背景 / 换机位，声音用原片）

> **什么时候走这条**：学员在 Step 0 选了「我已经自己录好了」。
> **跟路线 A 的根本差别**：人不用锁（原片就是本尊）、声音不用生成（用原片的）、对嘴不用喂 audio 参考（原片自带）。
> 🔴 **别把路线 A 的做法套过来** —— 不要叫他写脚本、不要叫他交 3 张脸参考图、不要 `generate_audio=true`。

### 🔴🔴 B-0 · 先判断「这支片适不适合」（问之前先讲清楚，别让他期望落空）

**换妆换衣 = 在跟模型抢同一张脸，只能逼近，做不到 100% 一样。** 这句话要先跟学员说，别等出片才解释。

判断标准 = **观众的注意力落在哪里**：
- ✅ **适合**：讲的是环境 / 产品 / 白板 / 手上的东西，观众看的不是脸（例如「我房间变好看了」）→ 脸有 95% 像就够。
- ⚠️ **勉强**：全程大头口播、观众盯着脸看 → 换背景可以，**换妆换衣会看出来是另一个人**。
- ❌ **别用**：要绝对保真的场合（本人出镜的证言、正式形象片）→ 老实说做不到，建议**换背景就好**，或真的化妆重拍。

> 换背景 Seedance 做得很好，值得用；换妆换脸是另一回事。**这两件事的把握度差很远，别混为一谈。**

### B-1 · 收素材（一题一题问，别一次丢一串）

1. **原片** —— 就是要改的那支（竖版 9:16 最好，手机直拍即可）。
2. **想改什么？**（可复选，但 🔴 **一次只改一处**，见 B-3 铁律）：① 妆 · ② 衣服 · ③ 发型 · ④ 背景/场景 · ⑤ 机位/角度 · ⑥ 其他
3. **有没有「想变成那样」的参考图？** 有 → 收下（🔴 **必须先裁头**，见 B-3 铁律②）；没有 → 用文字描述也行。
4. **声音确认**：默认**用原片的声音**（不重新配音、不用 TTS）。

### B-2 · prompt 五段骨架（🔴 照这个顺序写，六轮 96 credits 打磨出来的）

```
1. 交代三个输入：
   reference video = 人和场景的来源
   attached image  = CLOTHING reference only, a garment on a cropped body with no head
   attached audio  = drive lip movements
2. IDENTITY LOCK — THE SINGLE MOST IMPORTANT INSTRUCTION（🔴 唯一的最高优先级，只能有一个）
   要保住的关键特征（眼镜等）写在这里，不是写在 KEEP 清单
3. KEEP EXACTLY AS IN THE REFERENCE VIDEO:（🔴 逐件点名，一件都不能漏）
4. CHANGE ...:（要改的写这里；改妆一定要明写「她原本是素颜」）
5. 结尾：反美化 + 锁镜头 + 画幅
```

参数：`seedance_2_5` · `9:16` · **720p**（480p 只有 496×864 会糊，对不上手机竖拍原片）· `generate_audio:false` · 原声当 `audio_references` 喂进去 · 成片后期贴回原声。

### B-3 · 🔴🔴 六条铁律（每条都烧过 credits，漏一条就白跑）

**① prompt 里没点名的东西，Seedance 当作可以丢。**
只写「改妆和衣服」保不住眼镜、手持道具、手链 —— **必须一件一件写进 KEEP 清单**。

**② 风格参考图必须先裁掉头。**
完整人像的参考图会把「脸」和「不戴眼镜」一起带过去，写 `use it ONLY for outfit` 挡不住。
用 ffmpeg crop 把头裁掉，并在 prompt 里说明它是 `a garment on a cropped body with no head`。
> ⚠️ 例外：参考图**如果就是学员本人**（例如他自己的美照），那不用裁，整张给足头发＋妆＋衣＋眼镜四样效果最好。

**③ 最高优先级只能有一个。**
把「妆要变」写成跟 IDENTITY LOCK 平级 + `must be obvious` → 模型为了上妆把整张脸重画，连眼镜、手势、构图一起飘。
**其他需求一律降级，写进 KEEP 清单里当例外。**

**④ 但也别锁死到连妆都不上。**
`same skin` + `preserve skin texture and pores` + `do not beautify` 三句一夹 = 出来还是素颜。
解法：KEEP 那行写 `her face, bone structure and proportions (the makeup on her skin may change)`；
结尾用 `Do not beautify her bone structure`，**别用** `Do not smooth her skin`。

**⑤ 🔴 最关键的一句：明写她原本没化妆。**
`she is completely bare-faced in the reference video. Give her ...`
只写「上什么妆」，模型看不出有落差要补，就什么都不动。

**⑥ 手势和构图也要点名。**
只写 `hand movements` 不够 —— 会把举起的手换到画面另一边、还会把镜头推近。必须写：
`her raised hand stays on the same side of the frame` +
`the exact framing, camera distance and crop — do not push in, do not zoom, do not reframe tighter`

### B-4 · 🔴🔴 否定句四条元规律（比单条铁律更重要 —— 扩散模型不处理否定）

**① 绝不能写 `not the X`。**
写 `not the glasses`（本意「别抄参考图那副眼镜」）→ 模型读成**「不要眼镜」**，整支没戴眼镜。
正确写法：`ignore the person in that image entirely, use ONLY the garment`。

**② 要保住的关键特征，必须进 IDENTITY LOCK，光放 KEEP 清单守不住。**
眼镜放 KEEP 第一行照样掉；提进 IDENTITY LOCK ＋ 写「任何一帧没戴就是错的」＋ 参考图本身有戴，**三边一起堵**才守住。

**③ 🔴 负面词越强调越反效果。**
提 blush 五次就给你五倍 blush：
`a WHISPER of soft pink... Keep it LIGHTER than you think... NEVER a hard stripe` → 腮红反而更重。
`LENSES: COMPLETELY CLEAR, NO pink tint, NO rose tint` → 镜片更粉。
**正确做法是「不提」** —— 整行删掉，或只写 `bare cheeks, her own natural skin tone` / `plain everyday eyeglasses`，一个 tint 字都别出现。

**④ 🔴 数「正面句 vs 负面句」的比例 —— 哪边多，模型就照哪边做。**
实测：要「四机位快速切换」，却为了排除手持感写了 8 句「镜头不要动」、只有 2 句讲「要切换」
→ 成片 16 秒**一个机位都没换**（烧掉 104 credits）。
**换机位要讲成「剪辑」不是「镜头」，且负面句一句都不留**：
`This video is EDITED from four cameras. Shot 1 is filmed from below. CUT. Shot 2 from above. CUT. ...`
同理，运镜的压制词（`not a fast whip` / `no drift`）会连正常运镜一起压死 —— 要大动就把压制词删光。

### B-5 · duration + 后期两刀救回（0 credit）

🔴 **`duration` 取「不超过配音讲话长度」的整数**，宁可切掉尾巴静音。
实测：原声 16.57s、**讲话 15.31s 就停**，设 `duration:17` → 多出的 0.47 秒**模型自己加戏**，把一拍重演一次，后段全部对不上嘴。

出来对不上也别急着重跑，**两刀救回，不花 credit**（硬切风格的片都适用）：
1. **剪掉重复那一拍** —— 从两个硬切点之间下刀，完全看不出来。
   ⚠️ 刀口别开太宽 —— 顺手把「有点奇怪」的运镜也吃掉，会变得太干净、反而没了动感。
2. **量尾巴、微加速** —— 剪完量「画面几秒停嘴 vs 原声几秒讲完」，用 `setpts=PTS/f` 补差。
   🔴 **只能动画面速度，绝不能动音频**（一变速就跟原声脱勾）。

### B-6 · 期望值管理（讲在前面，省掉来回重跑）

- **prompt 写四个机位，模型实际只稳定做出两三个**，剩下的会滑回基准机位。
- 🔴 **绝不照 prompt 里写的顺序去时间轴上找对应的帧** —— 模型不照那个顺序走。
  正确做法：**抽全片联络表**（每 0.6 秒一格、左上角打秒数），直接挑差最多的几帧。
- **判断机位靠背景，不靠脸**：看到天花板/灯带＝低机位；看到头顶发缝＝高机位；背景换成桌子笔电＝横向换位。
  四张脸并排看不出差别，**背景才是证据**。
- **「不重复机位」和「切得快」天生打架** —— 4 机位不重复 = 只能 3 刀 = 每段近 4 秒，一定慢。解法是**严格轮转** `1→2→3→4→1→2…`。
- **卡点控制不了** —— 只能说「依序停四个位置」，不能指定「第 6.40 秒到位置 1」。
- **改动一次只改一处** —— 一次改三处，出问题分不清是哪一处害的。

### B-7 · 成本（🔴 比路线 A 贵很多，先讲再跑）

| 模型 | 每秒 | 时长上限 |
|---|---|---|
| Seedance 2.0（std） | **4.5 cr** | 15s |
| Seedance 2.5（omni_reference） | **6.5 cr** | 30s |

（720p / bitrate-high / 9:16 实测）—— 一支 17 秒 ≈ **110 credits**，跟路线 A 一支 8 秒镜 12 credits 完全不是一个量级。
🔴 **跑之前一定用 `get_cost:true` 免费预检**，并把预估 credits 讲给学员听、等他说「跑吧」才跑。

### B-8 · 收尾（跟路线 A 合流）

做完之后**跟路线 A 走同一条尾巴**：
- 后期字幕 / 花字 / 音效 / BGM → **交给 `05-edit`（AI 剪辑）**（见上面「AI 剪片」段）。
- 归档 + 改 Status → 见 **Step 8 · 接进系统**。




---


---
