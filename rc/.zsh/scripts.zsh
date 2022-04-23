function mkdircd() {
	mkdir $1 -p && cd $1
}

function add_authors_to_cargo {
	sed -i -e 3a'authors = ["o-p-h-i-s <0023dcd3b2@gmail.com>"]' Cargo.toml
}

