FROM cm2network/steamcmd

RUN steamcmd +login anonymous +force_install_dir /home/steam/Valheim +app_update 896660 +quit

