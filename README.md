# 🚀 LocalAI Boost Pack — Free Starter Edition
> **Turn Generic Local Models into High-Performance Specialty AI Tools**  
> Tailored for **Ollama**, **LM Studio**, and **Open WebUI**.

---

## ⚡ Why Local LLMs Underperform Out-of-the-Box
When you download a raw 7B or 8B model (like Llama 3.1 8B or Mistral 7B), you often encounter frustrating bottlenecks:
1. **Endless "Yap" & Disclaimers:** *"Certainly! Here is an explanation of what I am about to do..."* wasting precious generation tokens and time.
2. **Uncalibrated Temperatures:** High temperatures in coding prompts cause subtle syntax bugs; low temperatures in creative prompts make characters robotic and dull.
3. **Truncated Contexts:** Default 2048 context lengths crash multi-turn conversations and script refactoring.

**LocalAI Boost Pack** fixes this immediately with battle-tested system prompts featuring strict **Negative Constraints**, custom inference parameters (`temperature`, `top_p`, `repeat_penalty`), and an expanded **8,192 context window**.

---

## 📦 What's Inside the Free Starter Pack

This free starter edition includes **4 essential tuned engines**:

| Preset Name | Focus Area | Tuned Behavior & Output Format |
|---|---|---|
| **★ `no-yap-coder`** | Dev / Coding | Zero polite talk, zero preamble. Immediately outputs executable, production-grade code blocks with correct syntax tags. |
| **★ `pc-auto-scripter`** | Automation | Specializes in Windows Batch (`.bat`), PowerShell (`.ps1`), and Bash. Includes safety checks and milestone echoes. |
| **★ `raw-brainstormer`** | Creative / Strategy | Cuts through generic corporate platitudes. Delivers 10 punchy, high-impact, provocative concepts in a numbered list. |
| **★ `character-soul-builder`** | Creative / Fiction | Builds multidimensional characters with flaws, contradictions, sensory quirks, and high-stakes dialogue samples. |

---

## 🛠️ Quick Installation Guide

### Option 1: Ollama (1-Click Automated Setup)

#### Windows
1. Make sure [Ollama](https://ollama.com) is installed and running.
2. Double-click `install_windows.bat`.
3. The script will automatically pull `llama3.1:8b` (if needed) and register all 4 custom models.
4. Open your command prompt / terminal and run:
   ```bash
   ollama run no-yap-coder
   ```

#### Mac / Linux
1. Open terminal and navigate to this folder.
2. Make the script executable and run:
   ```bash
   chmod +x install_mac_linux.sh
   ./install_mac_linux.sh
   ```
3. Run any model:
   ```bash
   ollama run raw-brainstormer
   ```

---

### Option 2: LM Studio Setup
1. Launch **LM Studio**.
2. Load your desired model (e.g., `Meta-Llama-3.1-8B-Instruct` or `Qwen2.5-7B-Instruct`).
3. Open the **JSON_Presets** folder in this pack.
4. Copy the `system_prompt` from the corresponding `.json` file into LM Studio's **System Prompt** field.
5. In LM Studio's right-hand sidebar under **Inference Parameters**, apply the values from the JSON:
   - **Temperature**: `0.2` (for dev) or `0.8`–`0.85` (for creative)
   - **Top P**: `0.85` or `0.95`
   - **Repeat Penalty**: `1.1` or `1.2`
   - **Context Length**: `8192`

---

### Option 3: Open WebUI Setup
1. Go to **Workspace** > **Models** in Open WebUI.
2. Click **Add Model (+)**.
3. Paste the `system_prompt` and configure parameters from `JSON_Presets/<name>.json`.
4. Click **Save & Create**.

---

## 🔄 How to Change the Base Model
By default, all Modelfiles reference `FROM llama3.1:8b`. If you prefer using other weights:
1. Open any `.Modelfile` in a text editor (Notepad, VS Code).
2. Edit the first line to your preferred local model tag:
   ```dockerfile
   # Example: Switch to Qwen 2.5 Coder
   FROM qwen2.5-coder:7b

   # Example: Switch to Mistral
   FROM mistral:7b
   ```
3. Re-run `ollama create <name> -f <path>` to update.

---

## 💎 Unlock the Full Arsenal: LocalAI Boost Pack PRO

Love the starter pack? Elevate your entire local AI workflow with the **PRO Complete Edition**:

### 🔥 What You Get in PRO:
- **All 20 Production-Calibrated Engines** across 2 comprehensive categories:
  - **10 Dev & Automation Engines:** `no-yap-coder`, `pc-auto-scripter`, `bug-sniper`, `cli-command-gen`, `code-refactor-pro`, `json-data-converter`, `api-tool-architect`, `sql-query-builder`, `doc-readme-writer`, `tech-eli5-tutor`.
  - **10 Creative & Ideation Engines:** `raw-brainstormer`, `character-soul-builder`, `world-lore-architect`, `plot-twist-engine`, `dialogue-naturalizer`, `dark-gritty-writer`, `devil-advocate-critic`, `visual-prompt-director`, `viral-hook-creator`, `infinite-rp-master`.
- **In-Depth Parameter Tuning Cheatsheet (`PARAMETER_CHEATSHEET.md`)**: Learn the exact mathematical sweet spots for temperature, repeat penalties, and VRAM context sizing.
- **1-Click Master Installer** for both Windows and Mac/Linux.
- **Lifetime Updates & Future Preset Additions**.

👉 **[Get the Pro Complete Pack on Gumroad](https://localaiboost.gumroad.com/l/pro)**  
*(Use code `BOOST20` at checkout for an instant 20% launch discount!)*

---

## 📄 License & Community
- Free for personal and commercial use on your own local machines.
- Created for the local AI and open-weights developer community.
