#!/usr/bin/env bash

# Unoffical Bash "strict mode"
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
#ORIGINAL_IFS=$IFS
IFS=$'\t\n' # Stricter IFS settings

# Erlang Cheatsheet
asciidoctor -s -o build/erlang_cheatsheet_content.html erlang_cheatsheet.adoc

(
  export CHEATSHEET_TITLE CHEATSHEET_HTML CHEATSHEET_DESCRIPTION
  CHEATSHEET_TITLE="Erlang Cheatsheet";
  CHEATSHEET_HTML="$(cat build/erlang_cheatsheet_content.html)";
  CHEATSHEET_DESCRIPTION="The quirks of exit signals and exception handling you always forget";
  envsubst < template.html > build/erlang_cheatsheet.html
)

# OTP Cheatsheet
asciidoctor -s -o build/otp_cheatsheet_content.html otp_cheatsheet.adoc
(
  export CHEATSHEET_TITLE CHEATSHEET_HTML CHEATSHEET_DESCRIPTION
  CHEATSHEET_TITLE="OTP Cheatsheet";
  CHEATSHEET_HTML="$(cat build/otp_cheatsheet_content.html)";
  CHEATSHEET_DESCRIPTION="The details of OTP that you may have forgotten or never known!";
  envsubst < template.html > build/otp_cheatsheet.html
)
