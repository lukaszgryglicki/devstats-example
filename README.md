# Example DevStats deployment - Homebrew

- To install: `vim INSTALL_UBUNTU18.md`.
- To deploy use: `PG_PASS=... PG_PASS_RO=... PG_PASS_TEAM=... ./deploy.sh`.
- To run sync (update since last run) use: `PG_PASS=... ./run.sh`.
- To run sync from cron copy `devstats.sh` to your PATH and install crontab from `crontab` (changing PATH, passwords etc.).
- To start grafana process (for example after server restart) run `./grafana.sh`.
