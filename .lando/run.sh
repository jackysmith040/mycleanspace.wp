if [ ! -d "./wp-admin" ]; then
	wp core download
fi

if ! $(wp core is-installed); then
	wp core install --url="http://mycleanspace.local" --title="My Clean Space" --admin_user="admin" --admin_password="password" --admin_email="admin@mycleanspace.local" --skip-email
fi
