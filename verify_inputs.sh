#!/usr/bin/env bash
# Verify that every archived MD input in this repository resolves with the
# supplied directory structure. For each system it runs `gmx grompp` on the
# archived topology + starting configuration with the production .mdp from
# "Molecular Dynamics Parameters/". Nothing in the repository is modified;
# outputs go to a temporary directory.
#
# Usage (from the repository root):   bash verify_inputs.sh
# Requires: GROMACS (tested with 2021) with `gmx` on the PATH.

set -u
cd "$(dirname "$0")"
MDP="Molecular Dynamics Parameters/prod.mdp"
TMP=$(mktemp -d)
pass=0; fail=0

while IFS= read -r -d '' top; do
    dir=$(dirname "$top")
    conf="$dir/initial_configuration.gro"
    [ -f "$conf" ] || conf="$dir/sys.gro"
    if gmx grompp -f "$MDP" -c "$conf" -p "$top" \
            -o "$TMP/test.tpr" -po "$TMP/mdout.mdp" > "$TMP/log" 2>&1; then
        echo "PASS  $dir"; pass=$((pass+1))
    else
        echo "FAIL  $dir"; grep -A3 -m1 "Fatal error" "$TMP/log" | sed 's/^/      /'
        fail=$((fail+1))
    fi
done < <(find . -name topol.top -not -path "./.git/*" -print0 | sort -z)

rm -rf "$TMP"
echo
echo "$pass passed, $fail failed"
[ "$fail" -eq 0 ]
