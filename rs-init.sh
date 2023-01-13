mongo -u admin -host 127.0.0.1:27021 <<EOF
var config = {
    "_id": "backend",
    "members": [
        { "_id": 0, "host": "127.0.0.1:27021" },
        { "_id": 1, "host": "127.0.0.1:27022" },
        { "_id": 2, "host": "127.0.0.1:27023" }
       ]
   };
rs.initiate(config, { force: true });
rs.status();
EOF
