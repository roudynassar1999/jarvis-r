# Jarvis-R — run on your Windows laptop

This is a source import of **Adamdesgns/jarvis-local-assistant**, not software originally written by RnJ.

- Original: https://github.com/Adamdesgns/jarvis-local-assistant
- Imported commit: `6cbc3039422767b17ae56224e45e3fb74a62ab4e`
- Imported package version: 0.20.0
- License: MIT; original LICENSE and copyright retained.

## Start here

1. Install **Node.js LTS** from https://nodejs.org/ and **Python 3.12** from https://www.python.org/downloads/windows/. Allow Python microphone-related setup when Windows asks. Restart your terminal after installation.
2. In your GitHub repository, click **Code → Download ZIP**, then **Extract All** on your laptop. Do not run it from inside the ZIP.
3. Open the extracted folder and double-click **SETUP-AND-RUN-WINDOWS.bat**. It installs locked Node dependencies and starts the desktop interface. Internet is needed for these initial downloads.
4. Inside JARVIS, open **Settings → INSTALL / REPAIR LOCAL VOICE**. Wait until its setup finishes, then restart JARVIS. The first setup downloads speech/wake-word models.
5. For local AI conversation, install **Ollama for Windows** from https://ollama.com/download/windows. Keep Ollama running. In JARVIS, choose **CONNECT / REPAIR OLLAMA**. Model downloads can be several GB; speed depends on your laptop RAM/GPU. The imported default is `qwen3:8b`; choose a smaller supported model if it is too slow.
6. Allow microphone access in Windows. Try push-to-talk first, then “Hey Jarvis”. Try a simple reminder or file search before broader features.
7. Next time, double-click **RUN-JARVIS-WINDOWS.bat**.

If you prefer commands, open a terminal in this folder:

```powershell
npm ci
npm start
```

The Settings panel can optionally use your own OpenAI/Anthropic API key instead of local AI. API use is billed separately from ChatGPT. The local voice model defaults to English (`small.en`); other languages need a suitable configuration/model. Do not assume Lebanese Arabic voice recognition is already configured.

## What this version does

Voice interaction, reminders, tasks, memory, approved-folder file search, document questions, and an animated desktop interface. It has optional screen-related tools, but the guarded desktop-driving mode is limited to allowed applications (initially File Explorer and Notepad), not unrestricted autonomous control of every app.

Use the visible STOP button to interrupt a response/action. You can disable voice/wake-word in Settings; fully quit the application to stop it. Minimizing to its floating orb does not quit it.

## Where it runs

It runs on your laptop, not on Render and not on GitHub. GitHub stores the source code. No hosting subscription is needed for local use. Installation and microphone/desktop interaction must be tested on your Windows machine; they cannot be validated on the Linux build environment used to prepare this import.

Your repository is public. Keep API keys, personal documents, settings exports and microphone recordings out of it. The upstream application stores its user data under `%APPDATA%\jarvis-local-assistant`.

## Provenance and updates

All upstream tracked source/assets are preserved. Added files are this guide, the two launchers and IMPORT-PROVENANCE.json. The source's own update checker still points to the upstream author, not this repository. An upstream binary installer would be the author's build, not a new Jarvis-R release. No binary release was built here.

The original README and LICENSE remain authoritative for upstream features and terms. This import is not a full security audit or a guarantee that every upstream feature works on your hardware.
