# Menampilkan daftar semua network Docker yang ada
docker network ls

# Membuat network baru dengan nama 'contohnetwork' menggunakan driver bridge
docker network create --driver bridge contohnetwork

# Menghapus network dengan nama 'contohnetwork'
docker network rm contohnetwork