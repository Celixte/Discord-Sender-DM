# Discord-Sender-DM

## Setup Instructions

1. Open `sender.cmd` in any text editor.
2. Find the following lines:
   ```bat
   set "TOKEN=TOKEN"
   set "CHANNEL_ID=CHANNEL_ID"
   set "FILE_PATH=FILE_PATH"
   set "MESSAGE_TEXT=Your message text"
   ```
3. Replace the default values with your own data:
   * **TOKEN:** Paste your Discord **User Token**.
   * **CHANNEL_ID:** Right click on your DM or channel and select **Copy Channel ID** *(Developer Mode must be enabled in Discord settings)*.
   * **FILE_PATH:** Paste the full path to the file you want to send.
   * **MESSAGE_TEXT:** Type the message you want to send.

### Example

```bat
set "TOKEN=mfa.847392847293847293847..."
set "CHANNEL_ID=123456789012345678"
set "FILE_PATH=C:\(\Users\Name\Desktop\image.\)png"
set "MESSAGE_TEXT=Just text..."
```

## Disclaimer
This breaks discord's terms of service. use it on accounts you're fine losing. provided as-is with no warranty.

## License
Released under the mit license. [Read the license](https://github.com/Celixte/Discord-Sender-DM/blob/main/LICENSE).
