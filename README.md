


# Crack the Code (emu8086 Game)

Crack the Code is a comprehensive, interactive code-breaking game and login system written in x86 Assembly for the emu8086 emulator. It features a multi-user login, multiple game modes, persistent statistics, and a variety of in-game help and customization options. The project is ideal for both learning and demonstrating advanced assembly programming, user interface design, and game logic on the 8086 platform.



## Features

- **Multi-user Login System:**
	- Three persistent users, each with their own gamertag and password.
	- Secure login and logout, with statistics saved per user.
	- Guest mode for quick play without an account.
- **Game Dashboard:**
	- Menu-driven interface for easy navigation.
	- Options to start a game, view highlights/statistics, enter multiplayer mode, use mystery passes, logout, or exit.
- **Three Game Modes:**
	- **Normal Mode:** Crack a randomly generated numeric code. Code length is user-selectable (3-6 digits).
	- **Mutation Mode:** The secret code mutates after a set number of guesses, increasing the challenge.
	- **Time Limited Challenge:** Play with a timer. Choose between Suffer (limited time per guess) or Instant Death (total time limit for the game).
- **Statistics & Highlights:**
	- Tracks total games played, wins, losses, average attempts per game, total time played, and top scores for each mode and player.
	- View detailed statistics and highlights from the dashboard.
- **Mystery Pass System:**
	- Earn a mystery pass for every 3 wins.
	- Use a pass to reveal a digit and its position in the code during a game.
	- Check your available passes and earn more by winning.
- **Multiplayer & Guest Mode:**
	- Set custom code length, secret code, mutation sequence, and time limit for multiplayer games.
	- Play as a guest with a temporary gamertag and custom settings.
- **Interactive Chat/Keyword System:**
	- During your turn, type keywords for help, rules, hints, or to use special features:
		- `guide` – Quick guide on how feedback works.
		- `rules` – Rules for the current mode.
		- `mystery` – Use a mystery pass to reveal a digit (if available).
		- `chat` – Get dynamic hints based on your guesses.
		- `quit` – Quit the current game and return to the dashboard.
- **Feedback System:**
	- After each guess, receive feedback for every digit:
		- `R` – Correct number, correct position
		- `C` – Correct number, wrong position
		- `W` – Incorrect number
- **Well-Commented & Modular:**
	- Code is organized into clear procedures for maintainability and learning.



## Getting Started


### Requirements
- Any 8086 emulator (offline or online) that supports running .asm files.


#### Recommended Emulators
- **Online:**
	- [8086 Emulator Web (yjdoc2)](https://yjdoc2.github.io/8086-emulator-web/) — Simple online 8086 assembler and emulator for quick code testing.

> **Note:** emu8086.com is no longer available. The above emulators are actively maintained or accessible.

### Running the Program
1. Download or clone this repository to your computer.
2. Open `main.asm` in emu8086.
3. Assemble and run the program using the emulator's interface.

## Project Structure
- `main.asm` — Main assembly source code


## Directions & How to Use

### Logging In

When you start the program, you’ll be prompted to log in:

- **For registered users:**
	- Enter your gamertag and password when prompted.
	- Built-in users:
		- Gamertag: `player1` | Password: `pass123`
		- Gamertag: `gamer2`  | Password: `game456`
		- Gamertag: `pro3`    | Password: `pro789`
- **For guest play:**
	- Choose the Multiplayer option from the dashboard.
	- Follow the prompts to enter a temporary gamertag and set custom game options.

### Main Dashboard

After logging in, you’ll see a menu with these options:

1. **Start Game** – Play in Normal, Mutation, or Time Limited mode. You’ll be guided through mode and code length selection.
2. **Highlights** – View your personal statistics: games played, wins, losses, average attempts, total time played, and top scores for each mode.
3. **Multiplayer** – Set up a custom game (code length, secret code, mutation sequence, time limit) or play as a guest.
4. **Mystery Passes** – Check how many mystery passes you have, see how to earn more, and use them to reveal a digit during a game.
5. **Logout** – Return to the login screen. Your stats are saved automatically.
6. **Exit** – Quit the game.

### Game Modes

- **Normal Mode:**
	- Crack a randomly generated numeric code.
	- Choose code length (3-6 digits).
	- Enter guesses; after each guess, you’ll receive feedback for each digit.
- **Mutation Mode:**
	- The secret code mutates (changes) after a set number of guesses.
	- Adds an extra challenge to the classic code-breaking gameplay.
- **Time Limited Challenge:**
	- Play with a timer. Choose between:
		- **Suffer:** Limited time per guess, but you can keep playing if you run out of time (with a penalty).
		- **Instant Death:** A total time limit for the whole game—run out of time and the game ends immediately.

### In-Game Features & Tips

- **Keywords:**
	- At any guess prompt, type one of these keywords for special features:
		- `guide` – See a quick guide on how feedback works.
		- `rules` – See the rules for the current mode.
		- `mystery` – Use a mystery pass to reveal a digit (if you have one).
		- `chat` – Get dynamic hints and analysis based on your previous guesses.
		- `quit` – Quit the current game and return to the dashboard.
- **Feedback System:**
	- After each guess, you’ll see a line of feedback for each digit:
		- `R` – Correct number, correct position
		- `C` – Correct number, wrong position
		- `W` – Incorrect number
	- Use this feedback to refine your next guess.
- **Mystery Passes:**
	- Earn a mystery pass for every 3 wins.
	- Use a pass during a game to reveal a digit and its position in the code.
	- Check your passes and how to earn more in the Mystery Passes menu.
- **Statistics & Highlights:**
	- View your total games, wins, losses, average attempts, total time played, and top scores for each mode from the dashboard.
- **Multiplayer & Guest Mode:**
	- Set custom code length, secret code, mutation sequence, and time limit for a unique challenge.
	- Play as a guest with a temporary gamertag and custom settings—great for quick games or playing with friends.

### Example Playthrough

1. **Login:** Enter `player1` and `pass123`.
2. **Dashboard:** Select "Start Game".
3. **Choose Mode:** Pick "Normal Mode" and select a code length of 4.
4. **Guessing:** Enter your guess (e.g., `1234`).
5. **Feedback:** See feedback like `RWCW` (meaning: 1st digit right, 2nd wrong position, 3rd correct, 4th wrong).
6. **Use Features:** Type `guide` for help, or `mystery` to use a pass if you have one.
7. **Win/Lose:** If you crack the code, your stats and top scores are updated. If not, try again or use the dashboard to view highlights or play again.

---

## License
This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
