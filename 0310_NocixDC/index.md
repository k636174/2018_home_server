---
description: This is a short description of my page
更新日: 2019/01/27
---

# 専用サーバ契約情報
---

# 仮想基盤
---

 仮想基盤の契約情報について記述する。

| 項目                         | 値                             |
| ---------------------------- | ------------------------------ |
| プラン                       | Dual Xeon 5520 3TB Preconfig   |
| Server Location              | R\*\*\*\*\*\*\*3-2             |
| 月額利用料金                 | $40.00                         |
| 支払い方法                   | Pypal                          |
| マイページURL                | https://my.nocix.net/          |
| マイページログインユーザー名 | shinji@k636174.net             |
| マイページログインパスワード | \*\*\*\*\*\*\*\*\*\*\*\*\*\*\* | 

　ハードウェア情報及びインストールOS

| 項目                 | 値                                  |
| -------------------- | ----------------------------------- |
| CPU                  | Processor	2x E5520 @ 2.27GHz        |
| メモリ               | 24 GiB                              |
| グローバルIP         | IPv4	/29 IP Block (8 Ips, 5 usable) |
| IPv4 Assignment      | 142.54.176.250/29                   |
| ディスク             | 3 TB                                |
| Bandwidth	1Gbit Port | 100TB Transfer                      |
| OS                   | VMware ESXi 6.0                     |
| ログインユーザー名   | root                                |
| ログインパスワード   | \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*      |

# 仮想マシン
---
## 仮想マシン一覧
* [[MAIN]monkey2018.k636174.net](0310_105_zabbix)
* [[MAIN]glanz.k737184.net](#バックアップサーバ)
* [MAIN]ansible.k636174.net
* [MAIN]blog.k636174.net
* [MAIN]drive.k636174.net
* [MAIN]fsv.k636174.net
* [MAIN]gitlab.k636174.net
* [MAIN]syslog.k636174.net
* [MAIN]honeypot.k636174.net
* [SophosXG]

<div style="page-break-before:always"></div>

## バックアップサーバ
---
#### 仮想マシン設定情報
| 項目                 | 設定値                               |
| -------------------- | ------------------------------------ |
| 仮想マシン名         | [MAIN]glanz.k636174.net              |
| インストールOS       | CentOS Linux release 7.6.1810 (Core) |
| IPアドレス           | 172.16.16.99                         |
| コア数               | 8コア                                |
| メモリ               | 2046MB                               |
| アタッチネットワーク | DMZ                                  |
| ディスク             | 16GB(スパース)                       |
| 主な用途             | バックアップ用途                     |

#### OS設定値
| 項目       | 設定値            |
| ---------- | ----------------- |
| ホスト名   | glanz.k636174.net |
| IPアドレス | 172.16.16.99      |

#### Cron設定状況
| 実行日時（間隔） | 実行するコマンド                                                |
| ---------------- | --------------------------------------------------------------- |
| \* \* \* \* \*   | php /var/www/mf_reporter/artisan schedule:run >> /dev/null 2>&1 |
| \* \* 1 \* \*    | /root/scripts/MONTHLY_CERTBOT.sh                                |
| 30 0 \* \* \*    | /root/scripts/DAILY_BACKUP_SCRIPT.sh                            |

#### 稼働サービス
* SSH
* vsftpd
* mariadb
* ZabbixAgent
* rsyslog

#### MONTHLY_CERTBOT.sh

[include](../0900_codes/0901_shell_scripts/MONTHLY_CERTBOT.sh)

#### DAILY_BACKUP_SCRIPT.sh

[include](../0900_codes/0901_shell_scripts/DAILY_BACKUP_SCRIPT.sh)
