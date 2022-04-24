## expand function
function mkdircd() {
	mkdir $1 -p && cd $1
}

## cargo
function add_authors_to_cargo() {
	sed -i -e 3a'authors = ["o-p-h-i-s <0023dcd3b2@gmail.com>"]' Cargo.toml
}

## atcoder
function submit_code() {
	(
	cp ~/git/atcoder/src/main.rs ~/git/atcoder/submit/$1
	cd ~/git/atcoder/submit
	git add $1
	git commit $1 -m "ADD"
	git push
	)
}
