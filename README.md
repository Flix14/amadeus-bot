
![logo](https://i.imgur.com/5FbysDv.png)

# ⚙️ Amadeus (Bot de Discord)

> Amadeus es un bot de Discord basado en la IA ficticia llamada Amadeus de la serie Steins;Gate. Diseñado con typescript y **[discord.js](https://discordjs.guide/#before-you-begin)**  

## Requerimientos

1. Bot de Discord y su token **[Guía](https://discordjs.guide/preparations/setting-up-a-bot-application.html#creating-your-bot)**  
   1.1. Activar 'Message Content Intent' en el **[Portal de Desarrolladores de Discord](https://discord.com/developers/docs/intro)**
2. Node.js 16.11.0 o superior

## ✅ Instalación y configuración

```sh
git clone https://github.com/Flix14/amadeus-bot
cd amadeus-bot
npm install
```

Copia o renombra el archivo `config.json.example` a `config.json` y llena las siguientes configuraciones:

⚠️ **Cuidado: Nunca compartas tu token** ⚠️

```json
{
  "TOKEN": "",
  "MAX_PLAYLIST_SIZE": 10,
  "PRUNING": false,
  "LOCALE": "es",
  "DEFAULT_VOLUME": 100,
  "STAY_TIME": 30
}
```

Finalmente, ejecuta el siguiente comando `npm run start` para inciar el bot.

## 🐬 Configuración para Docker

Copia o renombra el archivo `config.json.example` a `config.json` y llena las configuraciones como en el paso anterior. Finalmente, ejecuta el siguiente comando:

```shell
docker-compose up -d --build
```

## 📝 Comandos y características

- 🎶 Reproducir música de YouTube por url

`/play https://www.youtube.com/watch?v=hzPg6CZj4Yg`

- 🔎 Reproducir música de YouTube mediante una consulta

`/play hacking to the gate itou kanako`

- 🔎 Buscar y seleccionar música para reproducir

`/search steins gate`

- 📃 Reproducir un lista de Youtube por url

`/playlist https://www.youtube.com/watch?v=SBQprWeOx8g&list=PLtAUhEfZCZFxOn256T1Bxn-_f4me1ShgU`

- 🔎 Reproducir una lista de YouTube mediante una consulta

`/playlist steins gate music`

- Ahora reproduciendo (/np)
- Sistema de lista (/queue)
- Repetir (/loop)
- Aleatorio (/shuffle)
- Control de volumen (/volume)
- Letra (/lyrics)
- Pausa (/pause)
- Resumir (/resume)
- Saltar (/skip)
- Saltar hasta la canción # de la lista (/skipto)
- Mover una canción en la lista (/move)
- Eliminar la canción # de la lista (/remove)
- Mostrar el ping hacia la API de Discord (/ping)
- Mostrar el tiempo que lleva el reproductor activado (/uptime)
- Alternar la eliminación de mensajes del bot (/pruning)
- Ayuda (/help)
- Controles multimedia mediante reacciones

## 🌎 Configuraciones regionales

Configuraciones regionales disponibles:

- Ingles (en)
- Árabe (ar)
- Portugués de Brasil (pt_br)
- Búlgaro (bg)
- Rumano (ro)
- Checo (cs)
- Neerlandés (nl)
- Francés (fr)
- Alemán (de)
- Griego (el)
- Indonesio (id)
- Italiano (it)
- Japonés (ja)
- Coreano (ko)
- Maorí (mi)
- Persa (fa)
- Polaco (pl)
- Ruso (ru)
- Chino Simplificado (zh_cn)
- Mandarín de Singapur (zh_sg)
- Español (es)
- Sueco (sv)
- Chino Tradicional (zh_tw)
- Tailandés (th)
- Turco (tr)
- Ucraniano (uk)
- Vietnamita (vi)
- Para idiomas se utiliza el formato [ISO 639-1](https://es.wikipedia.org/wiki/ISO_639-1#Lista_idiomas) de dos letras
