#!/bin/bash

set -e

mkdir -p /var/www/html

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Terraform test project</title>
</head>
<body>
    <h1>Hello from $(hostname)</h1>
    <p>Test page deployed with Terraform.</p>
</body>
</html>
EOF

nohup python3 -m http.server ${server_port} \
  --bind 0.0.0.0 \
  --directory /var/www/html > /var/log/web-server.log 2>&1 &
