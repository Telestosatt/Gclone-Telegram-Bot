
# Gclone Telegram Bot

## Usage

### Prerequisites

1. Install [Python 3.7+（Latest version 3.8.3 recommended）](https://www.python.org/downloads/)
2. Download [gclone](https://github.com/donwa/gclone/releases)
3. Request a [Telegram Bot](https://core.telegram.org/bots#6-botfather) and get **token**
4. Get your own Telegram ID, such as through [this bot](https://t.me/userinfobot)

### Installation

Download the Zip version 
or 
Get Files via git clone.
```
$ git clone https://github.com/Telestosatt/telegram_gcloner GcloneBot
```
Enter into Folder
```
cd GcloneBot
```
Installing dependencies via requirements.txt
```
$ pip3 install -r requirements.txt
```
Rename `config.ini.example` and to `config.ini`.
```
mv telegram_gcloner/config.ini.example telegram_gcloner/config.ini
```
Revise the corresponding content to include.

> path_to_gclone = gclone.exe(The path is optional for each distribution of Linux if it is obtained through installation, and optional for Windows if it is in PATH. 
>
> telegram_token = telegram bot token
>
> user_ids = Your Telegram ID (multiple separated by commas, first ID is admin)
>
> gclone_para_override = If you don't know what this is, leave it blank.

If you're interested, you can adjust the permissions in `./utils/restricted.py` to respond only to users in `user_ids` by default.

## Run

1. `python telegram_gcloner.py`。
2. Upload the ZIP file containing the SA to the bot and fill in `/sa` in the message header.
   - Mobile users can upload the ZIP file first and then reply to the message with `/sa`.
3. Send `/folders` to the robot to set up destination folders.
4. Send or forward a message with a Google Drive link to the bot and follow the prompts.

## Run via DOCKER
Install Docker
```
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```
Download the Zip version 
or 
Get Files via git clone.
```
$ git clone https://github.com/Telestosatt/telegram_gcloner GcloneBot
```
Enter into Folder
```
cd GcloneBot
```
Rename `config.ini.example` and to `config.ini`.
```
mv telegram_gcloner/config.ini.example telegram_gcloner/config.ini
```
Edit config.ini as required (already mentioned above)

Build Docker Image
```
sudo docker build -t GcloneBot .
```
Start and run the bot
```
sudo docker run -d --name=GcloneBot GcloneBot
```
To check logs of Bot
```
sudo docker logs -f GcloneBot
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

