# Prerequisites


`export TELEGRAM_BOT_TOKEN='<BOT_TOKEN>'`

`export TELEGRAM_BOT_CHAT_ID='<BOT_CHAT_ID>'`

- Create new telegram channel and add the bot into it

# Datadog Webhook Configuration
- Login to Datadog
- Navigate to *Integrations* -> *Integrations* -> Search for *Webhooks* -> *Configure*

- Navigate to bottom and insert the **Name** and **URL** of the receiver

ex:
```
Name = Datadog Test
URL = https://domainnotification
```

- Tick `Use Custom Payload` checkbox and fill the *Custom Payload* form with below payload sample

```
{
    "event_title": "$EVENT_TITLE",
    "alert_title": "$ALERT_TITLE",
    "tags": "$TAGS",
    "user": "$USER",
    "priority": "$PRIORITY",
    "text_only_msg": "$TEXT_ONLY_MSG",
    "snapshot": "$SNAPSHOT",
    "link": "$LINK",
    "alert_query": "$ALERT_QUERY"
}
```
- Click `Save Configuration` Button

# How to Test
- Run webhook receiver -> ` python scripts/datadog_webhooks/telegram_webhooks.py`

- Create Testing Public URL using ngrok 
 -> `ngrok http 8090`

- Update datadog webhook configuration with Ngrok URL **( use https one)**

- Login to Datadog and configure Monitor to send alert to Webhook

- Check telegram channel with bot





