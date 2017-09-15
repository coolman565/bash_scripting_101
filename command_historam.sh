#!/usr/bin/env bash

set -o errexit
set -o nounset

max_cols=$(tput cols)

histo_width="$(( ${max_cols} * 9 / 10 ))"
histo_width="${histo_width//.*}"
histo=""

for (( i = 0; i < "${histo_width}"; i++ )); do
    histo="${histo}="
done

col_width=$(( ${max_cols} * 1 / 10 -1 ))
col_width="${col_width//.*}"
spaces=""

for (( i = 0; i < "${col_width}"; i++ )); do
    spaces="${spaces} "
done

function print_histo_line() {
    command_width="$(( col_width - ${#2} ))"
    echo -n "${2:0:col_width} "

    if [[ "${command_width}" -gt "0" ]]; then
        echo -n "${spaces:0:command_width}"
    fi

    scaled_length="$(( ${1} / ${scale} ))"
    scaled_length="${scaled_length//.*}"

    echo "${histo:0:scaled_length}"
}

tmpfile=$(mktemp)
ordered_file=$(mktemp)

cp ~/.zsh_history "${tmpfile}"

sed -E 's#[:0-9; ]*##' "${tmpfile}" | \
sed -E 's#\s+\|\s+#\'$'\n#g' |  \
sed -E -n 's#^\.?\/?([[:alpha:]\/\.]+[[:alpha:]\/\.-]+)\s+.*#\1#p' |  \
sort | uniq -c | sort -n > "${ordered_file}"

max=$(tail -n 1 "${ordered_file}" | awk '{ print $1}')
scale="$(( ${max} / ${max_cols} ))"
scale="${scale//.*}"

cat "${ordered_file}" | while read -r line
do
    print_histo_line ${line}
done

echo "Max:    ${max}"
echo "Scale:  ${scale}"

rm "${tmpfile}"
rm "${ordered_file}"

