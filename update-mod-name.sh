#! /bin/bash
set -e

# update all self-imports in the module to the new module name
grep -rl --include=*.go \"github.com/tendermint/tm-db . | xargs sed -i '' 's#"github.com/tendermint/tm-db#"github.com/kava-labs/tm-db#'

# update the module name
go mod edit -module github.com/kava-labs/tm-db