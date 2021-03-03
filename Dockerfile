FROM cm2network/steamcmd

RUN apt get wget
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/Valheim +app_update 896660 +quit
RUN mkdir /home/steam/bepinex
WORKDIR /home/steam/bepinex
RUN wget -O bepinex.zip https://valheim.thunderstore.io/package/download/denikson/BepInExPack_Valheim/5.4.701/
RUN unzip bepinex.zip
RUN cp /home/steam/bepinex/BepInExPack_Valheim/* /home/steam/Valheim/valheim_server_Data/
RUN rm -rf /home/steam/bepinex