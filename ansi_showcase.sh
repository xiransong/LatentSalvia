#!/usr/bin/env bash

# ============================================================
#  Terminal Theme — LatentSalvia
# ============================================================
clear

echo -e "\e[90m────────────────────────────────────────────\e[0m"
echo -e "\e[90m       Terminal Theme — LatentSalvia\e[0m"
echo -e "\e[90m────────────────────────────────────────────\e[0m"

# --- Fake ls output with prompt ---
echo -e "\e[38;5;245msongxiran@Mac\e[0m \e[38;5;108m~/code\e[0m \e[38;5;229m%\e[0m ls"
echo -e "\e[34mscripts\e[0m     \e[34mmodels\e[0m      \e[34mconfigs\e[0m"
echo -e "train.py    eval.py     README.md"
echo -e "\e[32mrun.sh\e[0m      \e[36mlatest\e[0m -> models/v2"
echo ""

# --- Log-style messages (normal vs bright semantics) ---
echo -e "\e[36mINFO\e[0m     Loaded dataset (1024 samples)"
echo -e "\e[32mSUCCESS\e[0m  Training converged"
echo -e "\e[33mWARNING\e[0m  Fallback scheduler in use"
echo -e "\e[31mERROR\e[0m    Checkpoint missing"
echo -e "\e[91mFATAL\e[0m    CUDA out of memory"
echo ""

# --- Git diff (context + emphasis) ---
echo "diff --git a/model.py b/model.py"
echo -e "\e[31m- loss = mse(pred, gt)\e[0m"
echo -e "\e[32m+ loss = huber(pred, gt)\e[0m"
echo -e "\e[90m  # improved robustness\e[0m"
echo ""

# --- ANSI reference (Normal / Bright, compact & labeled) ---
printf "\e[31mRed\e[0m/\e[91mBright\e[0m   "
printf "\e[32mGreen\e[0m/\e[92mBright\e[0m   "
printf "\e[33mYellow\e[0m/\e[93mBright\e[0m\n"
printf "\e[34mBlue\e[0m/\e[94mBright\e[0m  "
printf "\e[35mMagenta\e[0m/\e[95mBright\e[0m "
printf "\e[36mCyan\e[0m/\e[96mBright\e[0m\n"
