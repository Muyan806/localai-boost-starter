# 🚀 LocalAI Boost Pack — Free Starter Edition (v1.1)
> **Turn Generic Local Models into High-Performance Specialty AI Tools**  
> Tailored for **Ollama**, **LM Studio**, **Open WebUI**, and **llama.cpp (CLI)**.

---

## 📢 Real User Feedback & The Problems We Solve
> *"Oh man, the looping is what kills me. I'll ask for a simple script and get the same three paragraphs repeated like it's having a stroke.*  
> *Been tinkering with repeat_penalty myself but never nailed the balance—either it turns into a parrot or starts spitting out gibberish halfway through.*  
> *raw-brainstormer sounds exactly like what I need; my work brain is stuck in safe mode and it's making everything taste like cardboard."*  
> — **Early Community Tester (r/LocalLLaMA)**

If you run local 7B–14B models (Llama 3.1, Qwen 2.5, Mistral), you have definitely faced these exact headaches:
1. **The "Stroke-Loop" Trap & Gibberish Barrier:** Uncalibrated `repeat_penalty` either causes infinite repetition loops or breaks syntax into gibberish.
2. **Corporate "Safe Mode" Boredom:** Default RLHF models refuse to offer bold opinions, giving vanilla answers that taste like cardboard.
3. **Endless "Yap" & Disclaimers:** *"Certainly! Here is an explanation of what I am about to do..."* wasting your VRAM, tokens, and patience.

**LocalAI Boost Pack** fixes this immediately with battle-tested system prompts featuring strict **Negative Constraints**, custom inference parameters (`temperature`, `top_p`, calibrated `repeat_penalty`), and an expanded **8,192 context window**.

---

## 🔄 What's New in v1.1
- ⚡ **Optimized `repeat_penalty` for Coding (1.0 – 1.05):**
  - Set `repeat_penalty` to `1.0` (disabled) across pure code/scripting engines (`no-yap-coder`, `pc-auto-scripter`). This prevents syntax breakage and variable degradation caused by penalizing programming keyword reuse.
- 💻 **llama.cpp CLI Direct Execution Guide & Flags:**
  - Added native `llama_cpp_cli_flags` inside every JSON preset for direct command-line execution with `llama-cli`.
- 🔗 **Official Store URL Alignment:**
  - Updated all links to official store: [https://localaiboost.gumroad.com/l/pro](https://localaiboost.gumroad.com/l/pro).

---

## 📦 What's Inside the Free Starter Pack

This free starter edition includes **4 essential tuned engines**:

| Preset Name | Focus Area | Tuned Behavior & Output Format |
|---|---|---|
| **★ `no-yap-coder`** | Dev / Coding | Zero polite talk, zero preamble. Immediately outputs executable, production-grade code blocks with correct syntax tags. (`repeat_penalty: 1.0`) |
| **★ `pc-auto-scripter`** | Automation | Specializes in Windows Batch (`.bat`), PowerShell (`.ps1`), and Bash. Includes safety checks and milestone echoes. (`repeat_penalty: 1.0`) |
| **★ `raw-brainstormer`** | Creative / Strategy | Cuts through safe-mode platitudes. Delivers 10 punchy, high-impact, provocative concepts in a numbered list. (`repeat_penalty: 1.2`) |
| **★ `character-soul-builder`** | Creative / Fiction | Builds multidimensional characters with flaws, contradictions, sensory quirks, and high-stakes dialogue samples. (`repeat_penalty: 1.2`) |

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
   - **Repeat Penalty**: `1.0` (for dev) or `1.2` (for creative)
   - **Context Length**: `8192`

---

### Option 3: Open WebUI Setup
1. Go to **Workspace** > **Models** in Open WebUI.
2. Click **Add Model (+)**.
3. Paste the `system_prompt` and configure parameters from `JSON_Presets/<name>.json`.
4. Click **Save & Create**.

---

### Option 4: llama.cpp (CLI) Direct Execution
For power users running raw GGUF weights directly via `llama-cli`:
Every JSON preset in `JSON_Presets/` contains pre-calculated flags in the `llama_cpp_cli_flags` field.

```bash
# Example running no-yap-coder with llama-cli:
llama-cli -m ./models/Meta-Llama-3.1-8B-Instruct-Q4_K_M.gguf \
  -c 8192 \
  --temp 0.2 \
  --top-p 0.85 \
  --repeat-penalty 1.0 \
  -p "<system>You are an elite, zero-fluff software engineer...</system><user>Write a PowerShell backup script</user><assistant>"
```

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

Ready to break out of safe mode completely and conquer all programming and creative workflows?

### 🔥 What You Get in PRO (All 20 Tuned Engines):
- **10 Dev & Automation Engines:** `no-yap-coder`, `pc-auto-scripter`, `bug-sniper`, `cli-command-gen`, `code-refactor-pro`, `json-data-converter`, `api-tool-architect`, `sql-query-builder`, `doc-readme-writer`, `tech-eli5-tutor`.
- **10 Creative & Ideation Engines:** `raw-brainstormer`, `character-soul-builder`, `world-lore-architect`, `plot-twist-engine`, `dialogue-naturalizer`, `dark-gritty-writer`, `devil-advocate-critic`, `visual-prompt-director`, `viral-hook-creator`, `infinite-rp-master`.
- **In-Depth Parameter Tuning Cheatsheet (`PARAMETER_CHEATSHEET.md`)**:
  - The mathematics behind the "Parrot vs. Gibberish" looping dilemma.
  - Why pure coding requires `repeat_penalty: 1.0` while brainstorming needs `1.2`.
  - VRAM memory formulas for 8k vs 16k context windows.
- **1-Click Master Installer** for Windows & Mac/Linux.
- **Lifetime Updates & New Presets**.

👉 **[Get the Pro Complete Pack on Gumroad](https://localaiboost.gumroad.com/l/pro)**  
*(Use code `BOOST20` at checkout for an instant 20% discount!)*

---

## 📄 License & Community
- Free for personal and commercial use on your own local machines.
- Created for the local AI and open-weights developer community.
