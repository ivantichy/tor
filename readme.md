Tor relay (not an exit node) configured to use ports 6000 and 6001.

Can be executed e.g. like this:

docker run --name tor -p 6000-6001:6000-6001 -d ivantichy/tor

Socks port: 6001
Data (transfer) port: 6000

You should limit access to port 6001 just for your machines using iptables.
