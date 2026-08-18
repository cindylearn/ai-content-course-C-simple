// 把 assets/carousel.html 的每一张 .slide 截成 1080×1350 PNG
// 用法： node scripts/screenshot.mjs [输出资料夹名]
import { chromium } from 'playwright';
import { fileURLToPath } from 'url';
import path from 'path';
import fs from 'fs';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const stamp = new Date().toISOString().slice(0, 10);
const name = process.argv[2] || 'carousel';
const outDir = path.join(root, 'output', `${stamp}_${name}`);
fs.mkdirSync(outDir, { recursive: true });

// 从 carousel.html 读 CONFIG.scale
const html = fs.readFileSync(path.join(root, 'assets', 'carousel.html'), 'utf-8');
const scale = Number((html.match(/scale:\s*(\d)/) || [, 1])[1]) || 1;

const browser = await chromium.launch();
const page = await browser.newPage({
  viewport: { width: 1080, height: 1350 },
  deviceScaleFactor: scale,
});
await page.goto('file://' + path.join(root, 'assets', 'carousel.html'));
await page.waitForTimeout(1500); // 等 webfont

const slides = await page.$$('.slide');
if (!slides.length) { console.error('❌ 找不到 .slide，检查 carousel.html 的 SLIDES'); process.exit(1); }

for (const [i, el] of slides.entries()) {
  const file = path.join(outDir, String(i + 1).padStart(2, '0') + '.png');
  await el.screenshot({ path: file });
  console.log('✅', path.basename(file));
}

await browser.close();
console.log(`\n🎉 ${slides.length} 张 @${scale}x (${1080*scale}×${1350*scale}) → ${outDir}`);
