#!/usr/bin/env bash
function pickLine() {
#$1 = filename
	_lines=$(wc -l "$1"| awk '{print $1}')
	_lineNo=$(("${RANDOM}" % "${_lines}"))
	sed "${_lineNo}q;d" "$1"
}
function indefiniteArticle() {
	if [[ "${1,,}" =~ ^[aeiou] ]]; then
		echo "an"
	else
		echo "a"
	fi
}
_adjective="$(pickLine "english-adjectives.txt")"
_beast="$(pickLine "animals.txt" | awk '{print $NF}')"
echo "You are, as always, $(indefiniteArticle "${_adjective}") ${_adjective} ${_beast,,}."
