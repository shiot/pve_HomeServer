#!/bin/bash

if [ -f "/opt/AdGuardHome/AdGuardHome.yaml" ]; then
  /opt/AdGuardHome/AdGuardHome -s stop

  old=$(sed -n 1,13p /opt/AdGuardHome/AdGuardHome.yaml)
  new="dns:
    bind_hosts:
    - 0.0.0.0
    port: 53
    statistics_interval: 1
    querylog_enabled: true
    querylog_file_enabled: true
    querylog_interval: 90
    querylog_size_memory: 1000
    anonymize_client_ip: false
    protection_enabled: true
    blocking_mode: default
    blocking_ipv4: ""
    blocking_ipv6: ""
    blocked_response_ttl: 10
    parental_block_host: family-block.dns.adguard.com
    safebrowsing_block_host: standard-block.dns.adguard.com
    ratelimit: 20
    ratelimit_whitelist: []
    refuse_any: true
    upstream_dns:
    - https://cloudflare-dns.com/dns-query
    - https://dns10.quad9.net/dns-query
    - https://dns.google/dns-query
    upstream_dns_file: ""
    bootstrap_dns:
    - 9.9.9.10
    - 149.112.112.10
    - 2620:fe::10
    - 2620:fe::fe:10
    all_servers: false
    fastest_addr: false
    allowed_clients: []
    disallowed_clients: []
    blocked_hosts:
    - version.bind
    - id.server
    - hostname.bind
    cache_size: 4194304
    cache_ttl_min: 0
    cache_ttl_max: 0
    bogus_nxdomain: []
    aaaa_disabled: false
    enable_dnssec: false
    edns_client_subnet: false
    max_goroutines: 300
    ipset: []
    filtering_enabled: true
    filters_update_interval: 12
    parental_enabled: false
    safesearch_enabled: false
    safebrowsing_enabled: true
    safebrowsing_cache_size: 1048576
    safesearch_cache_size: 1048576
    parental_cache_size: 1048576
    cache_time: 30
    rewrites: []
    blocked_services: []
    local_domain_name: lan
    resolve_clients: true
    local_ptr_upstreams: []
  tls:
    enabled: false
    server_name: ""
    force_https: false
    port_https: 443
    port_dns_over_tls: 853
    port_dns_over_quic: 784
    port_dnscrypt: 0
    dnscrypt_config_file: ""
    allow_unencrypted_doh: false
    strict_sni_check: false
    certificate_chain: ""
    private_key: ""
    certificate_path: ""
    private_key_path: ""
  filters:
  - enabled: true
    url: https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
    name: AdGuard DNS filter
    id: 1
  - enabled: true
    url: https://adaway.org/hosts.txt
    name: AdAway Default Blocklist
    id: 2
  - enabled: true
    url: https://www.malwaredomainlist.com/hostslist/hosts.txt
    name: MalwareDomainList.com Hosts List
    id: 4
  - enabled: true
    url: https://raw.githubusercontent.com/DandelionSprout/adfilt/master/GameConsoleAdblockList.txt
    name: Game Console Adblock List
    id: 1629753070
  - enabled: true
    url: https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt
    name: Perflyst and Dandelion Sprout's Smart-TV Blocklist
    id: 1629753071
  - enabled: true
    url: https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt
    name: WindowsSpyBlocker - Hosts spy rules
    id: 1629753072
  - enabled: true
    url: https://curben.gitlab.io/malware-filter/urlhaus-filter-agh-online.txt
    name: Online Malicious URL Blocklist
    id: 1629753073
  - enabled: true
    url: https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/hosts.txt
    name: NoCoin Filter List
    id: 1629753074
  - enabled: true
    url: https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt
    name: Spam404
    id: 1629753075
  - enabled: true
    url: https://raw.githubusercontent.com/durablenapkin/scamblocklist/master/adguard.txt
    name: Scam Blocklist by DurableNapkin
    id: 1629753076
  - enabled: true
    url: https://raw.githubusercontent.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites/master/hosts
    name: The Big List of Hacked Malware Web Sites
    id: 1629753077
  whitelist_filters: []
  user_rules: []
  dhcp:
    enabled: false
    interface_name: ""
    dhcpv4:
      gateway_ip: ""
      subnet_mask: ""
      range_start: ""
      range_end: ""
      lease_duration: 0
      icmp_timeout_msec: 1000
      options: []
    dhcpv6:
      range_start: ""
      lease_duration: 0
      ra_slaac_only: false
      ra_allow_slaac: false
  clients: []
  log_compress: false
  log_localtime: false
  log_max_backups: 0
  log_max_size: 100
  log_max_age: 3
  log_file: ""
  verbose: false
  schema_version: 10
  "

  mv /opt/AdGuardHome/AdGuardHome.yaml /opt/AdGuardHome/AdGuardHome.yaml.bak

  echo -e "$old\n$new" > /opt/AdGuardHome/AdGuardHome.yaml

  /opt/AdGuardHome/AdGuardHome -s start
else
  echo -e "!!! First perform initial setup via WebGUI !!!\n\nCall http:\\\\$(ip -o -f inet addr show | awk '/scope global/ {print $4}' | cut -d/ -f1):3000"
fi

rm -f ./make_conf.sh

exit
