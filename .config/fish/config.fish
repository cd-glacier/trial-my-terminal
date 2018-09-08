
# gitのbranch名の抽出
function git_branch
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end

# 右prompt
function fish_right_prompt
	echo [(git_branch)]
end

