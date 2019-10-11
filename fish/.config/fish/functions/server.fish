function server -d "Start Python server in current directory"
  python -m SimpleHTTPServer&
  sleep 1
  open http://localhost:8000
end