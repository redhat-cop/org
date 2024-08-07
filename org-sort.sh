#!/usr/bin/env bash

# As two yq's exist on garethahealy machine, need to work around via
cmd="yq_mikefarah"
command -v yq_mikefarah &> /dev/null || { cmd="yq"; }

# Check yq installed
command -v ${cmd} &> /dev/null || { echo >&2 'ERROR: yq not installed - Aborting'; exit 1; }

# Two versions of yq exist, check its the correct one
[[ $(${cmd} --help | grep -c "github.com/mikefarah/yq") -eq 1 ]] || { echo >&2 'ERROR: found yq installed but not mikefarahs version (https://github.com/mikefarah/yq) - Aborting'; exit 1; }

${cmd} -i e '(... | select(type == "!!seq"))[] |= downcase' config.yaml && \
  # sort all lists
  ${cmd} -i e '(... | select(type == "!!seq")) |= sort' config.yaml && \
  # sort all keys
  ${cmd} -i 'sort_keys(..)' config.yaml