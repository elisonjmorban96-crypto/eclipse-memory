// Quick Capture Script for Eclipse
// Usage: node scripts/capture.js "idea: Build auto-deploy pipeline for DevHouseAI"

const fs = require('fs');
const path = require('path');

const capture = process.argv[2] || "Quick thought captured at " + new Date().toISOString();
const timestamp = new Date().toISOString().split('T')[0];
const time = new Date().toTimeString().split(' ')[0].slice(0, 5);

const note = `- [ ] **${time}** — ${capture}\n`;

const inboxPath = path.join(__dirname, '..', 'inbox', 'INBOX.md');

// Append to inbox
let content = fs.readFileSync(inboxPath, 'utf8');
// Find "## Today" section and add after it
const todayIndex = content.indexOf('## Today');
if (todayIndex !== -1) {
  const insertPoint = content.indexOf('\n', todayIndex) + 1;
  content = content.slice(0, insertPoint) + note + content.slice(insertPoint);
} else {
  content += '\n' + note;
}

fs.writeFileSync(inboxPath, content);
console.log(`✅ Captured: ${capture}`);
console.log(`📥 Saved to inbox/INBOX.md`);
