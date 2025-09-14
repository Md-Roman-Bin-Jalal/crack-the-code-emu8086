.MODEL SMALL
.STACK 100H
.DATA
    ; Login Messages
    WELCOME_MSG     DB 'Welcome to Game Login System$'
    ENTER_USER_MSG  DB 0DH,0AH,'Enter Gamertag: $'
    ENTER_PASS_MSG  DB 0DH,0AH,'Enter Password: $'
    SUCCESS_MSG     DB 0DH,0AH,'Login Successful!$'
    FAILED_MSG      DB 0DH,0AH,'Invalid Gamertag or Password!$'
    NEWLINE         DB 0DH,0AH,'$'
    LOGOUT_NEW_MSG  DB 0DH,0AH,'Logging out... returning to login screen.$'
    EXIT_MSG        DB 0DH,0AH,'Exiting program. Thanks for playing!$'
    
    ; Dashboard Messages
    DASH_HEADER     DB 0DH,0AH,'==========================$'
    DASH_TITLE      DB 0DH,0AH,'       GAME DASHBOARD     $'
    DASH_FOOTER     DB 0DH,0AH,'==========================$'
    MENU_1          DB 0DH,0AH,'1. Start Game$'
    MENU_2          DB 0DH,0AH,'2. Highlights$'
    MENU_3          DB 0DH,0AH,'3. Multiplayer$'          
    
    MENU_4          DB 0DH,0AH,'4. Mystery Passes$'       
    MENU_5          DB 0DH,0AH,'5. Logout$'               
    MENU_6          DB 0DH,0AH,'6. Exit$'                 
    CHOICE_MSG      DB 0DH,0AH,'Enter your choice (1-6): $' 
    INVALID_CHOICE  DB 0DH,0AH,'Invalid choice! Try again.$'
    LOGOUT_MSG      DB 0DH,0AH,'Logging out... Goodbye!$'
    
    ; Current Player Information
    CURRENT_PLAYER  DB 0   ; 1=player1, 2=gamer2, 3=pro3, 0=nobody
    
    ; Player 1 Statistics
    P1_TOTAL_GAMES  DW 0
    P1_WINS         DW 0
    P1_LOSSES       DW 0
    P1_TOTAL_ATTEMPTS DW 0
    P1_TIME_PLAYED  DW 0
    P1_CODE_LENGTH  DB 4    
      ; Player 1 Top Scores
    P1_NORMAL_TOP1  DW 9999
    P1_NORMAL_TOP2  DW 9999
    P1_NORMAL_TOP3  DW 9999
    P1_MUTATION_TOP1 DW 9999
    P1_MUTATION_TOP2 DW 9999
    P1_MUTATION_TOP3 DW 9999
    P1_TIME_TOP1    DW 9999
    P1_TIME_TOP2    DW 9999
    P1_TIME_TOP3    DW 9999
    P1_TIME_PUNISH1 DB 0
    P1_TIME_PUNISH2 DB 0
    P1_TIME_PUNISH3 DB 0
    ; Player 1 code lengths for top scores
    P1_NORMAL_LENGTH1   DB 4
    P1_NORMAL_LENGTH2   DB 4
    P1_NORMAL_LENGTH3   DB 4
    P1_MUTATION_LENGTH1 DB 4
    P1_MUTATION_LENGTH2 DB 4
    P1_MUTATION_LENGTH3 DB 4
    P1_TIME_LENGTH1     DB 4
    P1_TIME_LENGTH2     DB 4
    P1_TIME_LENGTH3     DB 4
    P1_TIME_SUFFER1 DW 0
    P1_TIME_SUFFER2 DW 0
    P1_TIME_SUFFER3 DW 0
    
    ; Player 2 Statistics
    P2_TOTAL_GAMES  DW 0
    P2_WINS         DW 0
    P2_LOSSES       DW 0
    P2_TOTAL_ATTEMPTS DW 0
    P2_TIME_PLAYED  DW 0
    P2_CODE_LENGTH  DB 4   
      ; Player 2 Top Scores
    P2_NORMAL_TOP1  DW 9999
    P2_NORMAL_TOP2  DW 9999
    P2_NORMAL_TOP3  DW 9999
    P2_MUTATION_TOP1 DW 9999
    P2_MUTATION_TOP2 DW 9999
    P2_MUTATION_TOP3 DW 9999
    P2_TIME_TOP1    DW 9999
    P2_TIME_TOP2    DW 9999
    P2_TIME_TOP3    DW 9999
    P2_TIME_PUNISH1 DB 0
    P2_TIME_PUNISH2 DB 0
    P2_TIME_PUNISH3 DB 0
    ; Player 2 code lengths for top scores
    P2_NORMAL_LENGTH1   DB 4
    P2_NORMAL_LENGTH2   DB 4
    P2_NORMAL_LENGTH3   DB 4
    P2_MUTATION_LENGTH1 DB 4
    P2_MUTATION_LENGTH2 DB 4
    P2_MUTATION_LENGTH3 DB 4
    P2_TIME_LENGTH1     DB 4
    P2_TIME_LENGTH2     DB 4
    P2_TIME_LENGTH3     DB 4
    P2_TIME_SUFFER1 DW 0
    P2_TIME_SUFFER2 DW 0
    P2_TIME_SUFFER3 DW 0
    
    ; Player 3 Statistics
    P3_TOTAL_GAMES  DW 0
    P3_WINS         DW 0
    P3_LOSSES       DW 0
    P3_TOTAL_ATTEMPTS DW 0
    P3_TIME_PLAYED  DW 0
    P3_CODE_LENGTH  DB 4    
      ; Player 3 Top Scores
    P3_NORMAL_TOP1  DW 9999
    P3_NORMAL_TOP2  DW 9999
    P3_NORMAL_TOP3  DW 9999
    P3_MUTATION_TOP1 DW 9999
    P3_MUTATION_TOP2 DW 9999
    P3_MUTATION_TOP3 DW 9999
    P3_TIME_TOP1    DW 9999
    P3_TIME_TOP2    DW 9999
    P3_TIME_TOP3    DW 9999
    P3_TIME_PUNISH1 DB 0
    P3_TIME_PUNISH2 DB 0
    P3_TIME_PUNISH3 DB 0
    ; Player 3 code lengths for top scores
    P3_NORMAL_LENGTH1   DB 4
    P3_NORMAL_LENGTH2   DB 4
    P3_NORMAL_LENGTH3   DB 4
    P3_MUTATION_LENGTH1 DB 4
    P3_MUTATION_LENGTH2 DB 4
    P3_MUTATION_LENGTH3 DB 4
    P3_TIME_LENGTH1     DB 4
    P3_TIME_LENGTH2     DB 4
    P3_TIME_LENGTH3     DB 4
    P3_TIME_SUFFER1 DW 0
    P3_TIME_SUFFER2 DW 0
    P3_TIME_SUFFER3 DW 0
    
    ; Shared statistics variables used during gameplay
    TOTAL_GAMES_INT DW 0
    WINS_INT        DW 0
    LOSSES_INT      DW 0
    TOTAL_ATTEMPTS  DW 0
    TOTAL_TIME_PLAYED DW 0
    
    ; Game Mode Messages
    MODE_HEADER     DB 0DH,0AH,'==========================$'
    MODE_TITLE      DB 0DH,0AH,'      SELECT GAME MODE    $'
    MODE_FOOTER     DB 0DH,0AH,'==========================$'
    MODE_1          DB 0DH,0AH,'1. Normal Mode$'
    MODE_2          DB 0DH,0AH,'2. Mutation Mode$'
    MODE_3          DB 0DH,0AH,'3. Time Limited Challenge Mode$'
    MODE_4          DB 0DH,0AH,'4. Go back to Dashboard$'
    MODE_CHOICE     DB 0DH,0AH,'Select game mode (1-4): $'
    
    ; Game Messages
    GENERATING_MSG  DB 0DH,0AH,'Generating secret code...$'
    READY_MSG       DB 0DH,0AH,'Code generated! Try to guess it!$'
    GUESS_PROMPT    DB 0DH,0AH,'Enter your guess or a keyword: $'
    SUCCESS_GAME_MSG DB 0DH,0AH,'Congratulations! You correctly guessed the number!$'
    
    ; Game Feedback Messages
    FEEDBACK_HEADER DB 0DH,0AH,'=== Feedback for your guess ===$'
    POSITION_MSG    DB ': Correct number, Correct position$'
    CORRECT_POS     DB ': Correct number, Correct position$'
    WRONG_POS       DB ': Correct number, Wrong position$'
    INCORRECT       DB ': Incorrect number$'
    
    ; Mode Selection Messages
    NORMAL_MSG      DB 0DH,0AH,0DH,0AH,'Starting Normal Mode...$'
    MUTATION_MSG    DB 0DH,0AH,0DH,0AH,'Starting Mutation Mode...$'
    TIME_MSG        DB 0DH,0AH,0DH,0AH,'Starting Time Limited Challenge...$'
    BACK_MSG        DB 0DH,0AH,'Returning to Dashboard...$'
    
    ; Statistics Messages
    STATS_HEADER    DB 0DH,0AH,'==========================$'
    STATS_TITLE     DB 0DH,0AH,'     PLAYER STATISTICS    $'
    STATS_FOOTER    DB 0DH,0AH,'==========================$'
    GAMES_PLAYED    DB 0DH,0AH,'Total Games Played: $'
    GAMES_WON       DB 0DH,0AH,'Games Won: $'
    GAMES_LOST      DB 0DH,0AH,'Games Lost: $'
    AVG_ATTEMPTS    DB 0DH,0AH,'Average Attempts per Game: $'
    NO_STATS_MSG    DB 0DH,0AH,'No games played yet. Play a game to update statistics!$'
      ; New player stats format with apostrophe
    STATS_PREFIX    DB 0DH,0AH,'     $'
    STATS_SUFFIX    DB "'s statistics     $"
    
    ; Time played statistics
    TIME_PLAYED_MSG DB 0DH,0AH,'Total Time Played: $'
    SECONDS_MSG DB ' seconds$'
    
    ; Top Scores Headers
    NORMAL_HEADER   DB 0DH,0AH,0DH,0AH,'=== NORMAL MODE TOP 3 ===$'
    MUTATION_HEADER DB 0DH,0AH,0DH,0AH,'=== MUTATION MODE TOP 3 ===$'
    TIME_HEADER     DB 0DH,0AH,0DH,0AH,'=== TIME MODE TOP 3 ===$'
    NO_RECORD_MSG   DB 'No records found$'
    
    ; New messages for feedback and statistics
    FEEDBACK_GUIDE  DB 0DH,0AH,'Guide: R=Correct number & position, W=Incorrect number, C=Correct number but wrong position$'
    PRESS_KEY_MSG   DB 0DH,0AH,'Press enter to exit the highlights section...$'
    SCORE_INFO_MSG  DB 0DH,0AH,'Code length: $'
    CODE_CRACKED_MSG DB 0DH,0AH,'You cracked a $'
    DIGIT_MSG       DB '-digit code within $'
    FEEDBACK_LEGEND DB 0DH,0AH,'Here, R --> Correct number, Correct position$'
    FEEDBACK_LEGEND2 DB 0DH,0AH,'      W --> Incorrect number$'
    FEEDBACK_LEGEND3 DB 0DH,0AH,'      C --> Correct number, Incorrect position$'
    
    ; New guide legend to show at beginning of game
    GUIDE_LEGEND1 DB 0DH,0AH,0DH,0AH,'Quick guideline of characters beneath your guessed digits$'
    GUIDE_LEGEND2 DB 0DH,0AH,'      R --> Correct number, Correct position$'
    GUIDE_LEGEND3 DB 0DH,0AH,'      W --> Incorrect number$'
    GUIDE_LEGEND4 DB 0DH,0AH,'      C --> Correct number, Incorrect position$'
      ; Keyword system messages
    KEYWORDS_PROMPT DB 0DH,0AH,'KEYWORDS: chat, guide, rules, mystery, quit$'
    KEYWORD_ERROR DB 0DH,0AH,'Invalid keyword! Please use chat, guide, rules, mystery, or quit.$'
    CHAT_MSG DB 0DH,0AH,'Coming soon$'
    
    ; Mystery Pass messages and variables
    MYSTERY_PASS_COUNT DB 1   ; This will now be used temporarily during gameplay
    P1_MYSTERY_PASS_COUNT DB 1   ; Number of available mystery passes for Player 1
    P2_MYSTERY_PASS_COUNT DB 1   ; Number of available mystery passes for Player 2 
    P3_MYSTERY_PASS_COUNT DB 1   ; Number of available mystery passes for Player 3
    MYSTERY_PASS_WIN DB 0DH,0AH,'Congrtas Your recent 3 wins has rewarded you with a mystery guess pass.$'
    MYSTERY_PASS_AVAIL2 DB ' Mystery Guess Passes available.$'
    MYSTERY_PASS_NONE DB 0DH,0AH,'You don''t have any Mystery Guess Passes available.$'
    MYSTERY_PASS_GET_MORE DB 0DH,0AH,'Win '
    MYSTERY_PASS_GET_MORE2 DB ' more games to earn a Mystery Guess Pass.$'
    MYSTERY_PASS_REVEALED DB 0DH,0AH,'Mystery Guess Pass revealed that '
    MYSTERY_PASS_REVEALED2 DB 'th positions digit will be '
    MYSTERY_PASS_REVEALED3 DB '.$'
    MYSTERY_PASS_INPUT DB 15, 0, 15 DUP('$')   ; Buffer for keyword input
    MP_HAVE_MSG DB 0DH,0AH,'You currently have $'
    MP_POSSESSION_MSG DB ' Mystery Pass(es).$'
    MP_EARN_MSG DB 0DH,0AH,'You need $'
    MP_MORE_WINS_MSG DB ' more win(s) to earn your next Mystery Pass.$'
    MP_Q1 DB 0DH,0AH,0DH,0AH,'Q: What is a Mystery Pass?$'
    MP_A1 DB 0DH,0AH,'A: A Mystery Pass reveals a random correct digit position in the secret code.$'
    MP_Q2 DB 0DH,0AH,'Q: How do I earn Mystery Passes?$'
    MP_A2 DB 0DH,0AH,'A: You earn a Mystery Pass after every 3 game wins.$'
    MP_Q3 DB 0DH,0AH,'Q: Can Mystery Passes be saved?$'
    MP_A3 DB 0DH,0AH,'A: Yes, Mystery Passes can be stacked and used in future games.$'
      ; Rules text for different game modes
    NORMAL_RULES DB 0DH,0AH,0DH,0AH,'RULES: Normal Mode - Crack a $'
    NORMAL_RULES2 DB ' digit code by making guesses.$'
    MUTATION_RULES DB 0DH,0AH,0DH,0AH,'RULES: Mutation Mode - Crack a '
    MUTATION_RULES2 DB ' digit code that mutates every '
    MUTATION_RULES3 DB ' guesses.$'
    TIME_RULES_SUFFER DB 0DH,0AH,0DH,0AH,'RULES: Time Limited (Suffer) - Crack a '
    TIME_RULES_SUFFER2 DB ' digit code with a time limit for each guess.$'
    TIME_RULES_DEATH DB 0DH,0AH,0DH,0AH,'RULES: Time Limited (Death) - Crack a '
    TIME_RULES_DEATH2 DB ' digit code before time runs out.$'
    
    ; Mutation Mode Messages
    MUT_SEQ_PROMPT  DB 0DH,0AH,'Enter mutation sequence (6-9): $'
    INVALID_SEQ     DB 0DH,0AH,'Invalid sequence! Please enter a number between 6 and 9.$'
    CODE_MUTATED    DB 0DH,0AH,'Secret code has been mutated!$'
    
    ; Mutation Variables
    MUTATION_SEQ    DB 0    ; Will store the mutation sequence value
    MUTATION_COUNTER DB 0   ; Counter for tracking guesses before mutation
    
    ; Time Mode Messages
    TIME_PUNISH_HEADER DB 0DH,0AH,'=== SELECT PUNISHMENT TYPE ===$'
    TIME_PUNISH_1    DB 0DH,0AH,'1. Suffer (Limited time per guess)$'
    TIME_PUNISH_2    DB 0DH,0AH,'2. Instant Death (Limited time for entire game)$'
    TIME_PUNISH_CHOICE DB 0DH,0AH,'Select punishment type (1-2): $'
    TIME_LIMIT_PROMPT DB 0DH,0AH,'Enter time limit (10-99 seconds): $'
    INVALID_TIME     DB 0DH,0AH,'Invalid time! Please enter a number between 10 and 99.$'
    TIMER_START_MSG  DB 0DH,0AH,'Timer started! You have $'
    TIMER_SECONDS    DB ' seconds.$'
    TIME_LEFT_MSG    DB 0DH,0AH,'Time left: $'
    TIME_OVER_MSG    DB 0DH,0AH,'TIME IS UP! The secret code remains unbroken...$'
    SUFFER_MSG       DB 0DH,0AH,'YOU SUFFERED! But you may continue guessing...$'
    DEATH_MSG        DB 0DH,0AH,'GAME OVER! The time limit claimed your victory!$'
    SURVIVE_MSG      DB 0DH,0AH,'You survived and conquered death itself!$'
    
    ; Time Mode variables
    TIME_PUNISH_TYPE DB 0     ; 1 for Suffer, 2 for Instant Death
    TIME_LIMIT       DW 0     ; Time limit in seconds
    TIME_START       DW 0     ; When timer started
    CURRENT_TIME     DW 0     ; Current time for checking
    TIMER_ACTIVE     DB 0     ; 1 if timer is active
    SUFFER_COUNT     DW 0     ; Count of suffers in suffer mode
    
    ; Score display for Time Mode
    SUFFER_ENDURE_MSG DB ' enduring $'
    SUFFER_COUNT_MSG  DB ' suffers$'
    DEATH_OVERCOME_MSG DB ' overcoming your death$'
    ; Top Scores Storage
    NORMAL_TOP1     DW 9999
    NORMAL_TOP2     DW 9999
    NORMAL_TOP3     DW 9999
    MUTATION_TOP1   DW 9999
    MUTATION_TOP2   DW 9999
    MUTATION_TOP3   DW 9999
    TIME_TOP1       DW 9999
    TIME_TOP2       DW 9999
    TIME_TOP3       DW 9999
    
    ; Code length storage for top scores
    NORMAL_LENGTH1   DB 4     ; Store code length for normal mode top 1
    NORMAL_LENGTH2   DB 4     ; Store code length for normal mode top 2
    NORMAL_LENGTH3   DB 4     ; Store code length for normal mode top 3
    MUTATION_LENGTH1 DB 4     ; Store code length for mutation mode top 1
    MUTATION_LENGTH2 DB 4     ; Store code length for mutation mode top 2
    MUTATION_LENGTH3 DB 4     ; Store code length for mutation mode top 3
    TIME_LENGTH1     DB 4     ; Store code length for time mode top 1
    TIME_LENGTH2     DB 4     ; Store code length for time mode top 2
    TIME_LENGTH3     DB 4     ; Store code length for time mode top 3
    
    ; Time Mode punishment type trackers (1=Suffer, 2=Instant Death)
    TIME_PUNISH1    DB 0
    TIME_PUNISH2    DB 0
    TIME_PUNISH3    DB 0
    
    ; Time Mode suffer count storage
    TIME_SUFFER1    DW 0
    TIME_SUFFER2    DW 0
    TIME_SUFFER3    DW 0
    
    ; Mystery Passes Header
    MYSTERY_HEADER  DB 0DH,0AH,'     MYSTERY PASSES     $'
    
    ; Game Session Timing
    START_TIME      DW 0
    END_TIME        DW 0
    GAME_DURATION   DW 0 
    
    ; New messages for code length
    CODE_LENGTH_PROMPT DB 0DH,0AH,'Enter desired code length (3-6): $'
    INVALID_LENGTH    DB 0DH,0AH,'Invalid length! Please enter a number between 3 and 6.$'
    INVALID_GUESS    DB 0DH,0AH,'Invalid input! Please enter exactly '
    GUESS_LENGTH     DB '0'   ; Will be updated with actual required length
    GUESS_SUFFIX     DB ' digits.$'
    
    ; Code length variables
    CODE_LENGTH      DB 0
    MAX_CODE_LENGTH  DB 6    ; Maximum allowed length
    MIN_CODE_LENGTH  DB 3    ; Minimum allowed length
    
    ; Game Variables (update existing declarations, don't add new ones)
    SECRET_CODE     DB 6 DUP(0)    
    PLAYER_GUESS    DB 8,0         
                    DB 8 DUP(0)
    GUESS_COUNT     DB 0
    SEED            DW 0
    
    ; Store valid users
    USER1 DB 'player1$'
    PASS1 DB 'pass123$'
    USER2 DB 'gamer2$'
    PASS2 DB 'game456$'
    USER3 DB 'pro3$'
    PASS3 DB 'pro789$'
    
    ; Buffers
    INPUT_USER DB 15,0
              DB 15 DUP('$')
    INPUT_PASS DB 15,0
              DB 15 DUP('$')
    NUM_BUFFER DB 6 DUP(0),'$'
    
    ; Menu Selection Variables
    CHOICE DB 0
    MODE_SELECT DB 0

    ; Multiplayer Mode Variables
    CUSTOM_CODE_LENGTH DB 0        ; Custom code length for multiplayer
    CUSTOM_CODE DB 6 DUP(0)        ; Custom secret code for multiplayer
    CUSTOM_MUTATION_SEQ DB 0       ; Custom mutation sequence for multiplayer
    CUSTOM_TIME_LIMIT DW 0         ; Custom time limit for multiplayer
    USE_CUSTOM_LENGTH  DB 0        ; Flag for using custom length (1=yes, 0=no)
    USE_CUSTOM_CODE    DB 0        ; Flag for using custom code (1=yes, 0=no)
    USE_CUSTOM_MUTATION DB 0       ; Flag for using custom mutation (1=yes, 0=no)
    USE_CUSTOM_TIME    DB 0        ; Flag for using custom time (1=yes, 0=no)
    IS_GUEST_MODE      DB 0        ; Flag for guest mode (1=yes, 0=no)
    GUEST_GAMERTAG     DB 15 DUP('$') ; Storage for guest's gamertag
    
    ; Space padding for feedback display
    SPACES           DB '                               $'  ; Spaces for feedback alignment

    ; Multiplayer Messages
    MULTI_HEADER       DB 0DH,0AH,'==========================$'
    MULTI_TITLE        DB 0DH,0AH,'    MULTIPLAYER OPTIONS   $'
    MULTI_FOOTER       DB 0DH,0AH,'==========================$'
    MULTI_1            DB 0DH,0AH,'1. Set custom code length (Optional)$'
    MULTI_2            DB 0DH,0AH,'2. Set custom secret code (Optional)$'
    MULTI_3            DB 0DH,0AH,'3. Set custom mutation sequence (Optional)$'
    MULTI_4            DB 0DH,0AH,'4. Set custom time limit (Optional)$'
    MULTI_5            DB 0DH,0AH,'5. Proceed to multiplayer mode$'
    MULTI_6            DB 0DH,0AH,'6. Go back to dashboard$'
    MULTI_CHOICE       DB 0DH,0AH,'Select option (1-6): $'

    ; Additional Multiplayer Messages
    CUSTOM_LENGTH_SET   DB 0DH,0AH,'Custom code length set to: $'
    CUSTOM_CODE_PROMPT  DB 0DH,0AH,'Enter custom secret code: $'
    CUSTOM_CODE_DIGITS  DB '4'  ; Will be updated with custom length
    CUSTOM_CODE_SET     DB 0DH,0AH,'Custom secret code set successfully!$'
    CUSTOM_MUT_SET      DB 0DH,0AH,'Custom mutation sequence set to: $'
    CUSTOM_TIME_SET     DB 0DH,0AH,'Custom time limit set to: $'
    WELCOME_GUEST       DB 0DH,0AH,'Welcome to Guest Mode! Please enter your temporary gamertag.$'
    GUEST_TAG_PROMPT    DB 0DH,0AH,'Temporary Gamertag: $'
    GUEST_LOGGED        DB 0DH,0AH,'Guest logged in successfully! You can now play with your custom settings.$'
    ALREADY_MP_MSG      DB 0DH,0AH,'You are already in a multiplayer mode.$'
    ; Keywords
    CHAT_KEYWORD        DB 'chat$'
    GUIDE_KEYWORD       DB 'guide$'
    RULES_KEYWORD       DB 'rules$'
    MYSTERY_KEYWORD     DB 'mystery$'
    QUIT_KEYWORD        DB 'quit$'
    
    ; Chat feature tracking variables
    CHAT_ACK_COUNT      DB 0    ; Count of user guesses for chat feature
    CHAT_DIGIT_0_COUNT  DB 0    ; Count of digit 0 guesses
    CHAT_DIGIT_1_COUNT  DB 0    ; Count of digit 1 guesses
    CHAT_DIGIT_2_COUNT  DB 0    ; Count of digit 2 guesses
    CHAT_DIGIT_3_COUNT  DB 0    ; Count of digit 3 guesses
    CHAT_DIGIT_4_COUNT  DB 0    ; Count of digit 4 guesses
    CHAT_DIGIT_5_COUNT  DB 0    ; Count of digit 5 guesses
    CHAT_DIGIT_6_COUNT  DB 0    ; Count of digit 6 guesses
    CHAT_DIGIT_7_COUNT  DB 0    ; Count of digit 7 guesses
    CHAT_DIGIT_8_COUNT  DB 0    ; Count of digit 8 guesses
    CHAT_DIGIT_9_COUNT  DB 0    ; Count of digit 9 guesses
    
    CHAT_DIGIT_0_RWC    DB 'N'  ; Status of digit 0 (R, C, W)
    CHAT_DIGIT_1_RWC    DB 'N'  ; Status of digit 1 (R, C, W)
    CHAT_DIGIT_2_RWC    DB 'N'  ; Status of digit 2 (R, C, W)
    CHAT_DIGIT_3_RWC    DB 'N'  ; Status of digit 3 (R, C, W)
    CHAT_DIGIT_4_RWC    DB 'N'  ; Status of digit 4 (R, C, W)
    CHAT_DIGIT_5_RWC    DB 'N'  ; Status of digit 5 (R, C, W)
    CHAT_DIGIT_6_RWC    DB 'N'  ; Status of digit 6 (R, C, W)
    CHAT_DIGIT_7_RWC    DB 'N'  ; Status of digit 7 (R, C, W)
    CHAT_DIGIT_8_RWC    DB 'N'  ; Status of digit 8 (R, C, W)
    CHAT_DIGIT_9_RWC    DB 'N'  ; Status of digit 9 (R, C, W)
    CHAT_DIGIT_R_COUNT  DB 0    ; Count of R statuses
    CHAT_DIGIT_C_COUNT  DB 0    ; Count of C statuses
    CHAT_DIGIT_W_COUNT  DB 0    ; Count of W statuses
    
    ; Stored counts for chat feature
    STORED_CHAT_R_COUNT DB 0    ; Stored count of R statuses
    STORED_CHAT_C_COUNT DB 0    ; Stored count of C statuses
    STORED_CHAT_W_COUNT DB 0    ; Stored count of W statuses
    
    ; Chat reply flags (0 = available, 1 = already used)
    CHAT_REPLY_W_FLAGS  DB 3 DUP(0)  ; Flags for W reply options
    CHAT_REPLY_C_FLAGS  DB 3 DUP(0)  ; Flags for C reply options
    CHAT_REPLY_R1_FLAGS DB 4 DUP(0)  ; Flags for R1 reply options
    CHAT_REPLY_R2_FLAGS DB 4 DUP(0)  ; Flags for R2 reply options
    
    ; Chat reply indices (for rotating through replies)
    CHAT_REPLY_W_INDEX  DB 0    ; Index for W replies (0-2)
    CHAT_REPLY_C_INDEX  DB 0    ; Index for C replies (0-2)
    CHAT_REPLY_R1_INDEX DB 0    ; Index for R1 replies (0-3)
    CHAT_REPLY_R2_INDEX DB 0    ; Index for R2 replies (0-3)
    
    ; Chat messages
    CHAT_ANALYZING      DB 0DH,0AH,0DH,0AH,'Analyzing...Please a wait a momment...$'
    CHAT_NO_GUESS       DB 0DH,0AH,'You have not started guessing the code yet.$'
    CHAT_ONE_GUESS      DB 0DH,0AH,'You have guessed only one time. Try guessing a few more times.$'
    
    ; W replies
    CHAT_W_REPLY1       DB 0DH,0AH,'You have tried the same incorrect X digit Y times.',0DH,0AH,'Consider focusing on other possibilities.$'
    CHAT_W_REPLY2       DB 0DH,0AH,'The digit X has appeared in several positions but was never marked correct.',0DH,0AH,'Try eliminating this one.$'
    CHAT_W_REPLY3       DB 0DH,0AH,'Most of your guesses include digit X, but it has not been confirmed correct.',0DH,0AH,'Try a guess without this one.$'
    
    ; C replies
    CHAT_C_REPLY1       DB 0DH,0AH,'You have not repeated digit X in position Y1 after receiving a "W". try it there.$'
    CHAT_C_REPLY2       DB 0DH,0AH,'The digit X was correct but misplaced in positions Y1 and Y2.',0DH,0AH,'It might fit in another position.$'
    CHAT_C_REPLY3       DB 0DH,0AH,0DH,0AH,'Your previous attempts suggest digit X can not be in positions Y1 or Y2.',0DH,0AH,'Try it in a new spot.$'
    
    ; R1 replies
    CHAT_R1_REPLY1      DB 0DH,0AH,'You have yet to try digit X in position Y. Give it a shot.$'
    CHAT_R1_REPLY2      DB 0DH,0AH,'You have placed digit X in every position except Y. It might belong there.$'
    CHAT_R1_REPLY3      DB 0DH,0AH,'You have guessed the code with similar digits',0DH,0AH,'but never with X. Maybe that is the missing piece.$'
    CHAT_R1_REPLY4      DB 0DH,0AH,'You have already used all digits except X. Consider if X could be the missing digit.$'
    
    ; R2 replies
    CHAT_R2_REPLY1      DB 0DH,0AH,'All correct digits have already been identified.',0DH,0AH,'Focus on placing them in the right order.$'
    CHAT_R2_REPLY2      DB 0DH,0AH,'Your guesses show a pattern',0DH,0AH,'Try breaking it by choosing an entirely new set of digits.$'
    CHAT_R2_REPLY3      DB 0DH,0AH,'You keep swapping the same two digits',0DH,0AH,'Perhaps a different combination will work.$'
    CHAT_R2_REPLY4      DB 0DH,0AH,'You are focusing on only a subset of digits.',0DH,0AH,'Try including some you have not used yet.$'
    
    ; Template variables for building chat messages
    TEMP_DIGIT          DB 'X'     ; Single character for digit placeholder
    TEMP_COUNT          DB 'Y'     ; Single character for count placeholder
    TEMP_POS1           DB '0'     ; Single character for position 1
    TEMP_POS2           DB '0'     ; Single character for position 2

    ; Quit game message
    QUIT_GAME_MSG       DB 0DH,0AH,0DH,0AH,'You chose to quit the game. Better luck next time!$'
    
    PRESS_CONTINUE_MSG  DB 0DH,0AH,'Press enter key to continue$'
    
    ; Mystery position message parts
    MYSTERY_POS_PART1  DB 0DH,0AH,'The mystery position is $'
    MYSTERY_POS_PART2  DB ', and the mystery digit is $'
    
    .CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
LOGIN_START:
    ; Reset current player on login start
    MOV CURRENT_PLAYER, 0
    
    ; Display welcome message
    LEA DX, WELCOME_MSG
    CALL PRINT_STRING
    
    ; Get username
    LEA DX, ENTER_USER_MSG
    CALL PRINT_STRING
    
    ; Read username
    LEA DX, INPUT_USER
    MOV AH, 0AH
    INT 21H
    
    ; Get password
    LEA DX, ENTER_PASS_MSG
    CALL PRINT_STRING
    
    ; Read password
    LEA DX, INPUT_PASS
    MOV AH, 0AH
    INT 21H
    
    ; Validate credentials
    CALL VALIDATE_LOGIN
    JNC LOGIN_SUCCESS
    
LOGIN_FAILED:
    LEA DX, FAILED_MSG
    CALL PRINT_STRING
    LEA DX, NEWLINE  ; Add newline after failed message
    CALL PRINT_STRING
    JMP LOGIN_START
    
LOGIN_SUCCESS:
    LEA DX, SUCCESS_MSG
    CALL PRINT_STRING
    
DASHBOARD_LOOP:
    CALL SHOW_DASHBOARD
    CMP CHOICE, 6        ; Check if user chose exit
    JE HANDLE_EXIT       ; If exit, handle it separately
    CMP CHOICE, 5        ; Check if user chose logout
    JE HANDLE_LOGOUT     ; If logout, handle it separately
    JMP DASHBOARD_LOOP   ; If not logout or exit, continue loop
    
HANDLE_LOGOUT:
    ; Save current player's statistics before logout
    CALL SAVE_PLAYER_STATS
    
    ; If in guest mode, reset all custom settings
    CMP IS_GUEST_MODE, 1
    JNE SKIP_GUEST_RESET
    
    ; Reset guest mode flag
    MOV IS_GUEST_MODE, 0
    
    ; Reset all custom settings flags
    MOV USE_CUSTOM_LENGTH, 0
    MOV USE_CUSTOM_CODE, 0
    MOV USE_CUSTOM_MUTATION, 0
    MOV USE_CUSTOM_TIME, 0
    
    ; Clear the guest gamertag
    MOV CX, 15
    MOV DI, OFFSET GUEST_GAMERTAG
    MOV AL, '$'
    REP STOSB
    
SKIP_GUEST_RESET:    ; Display logout message
    LEA DX, LOGOUT_NEW_MSG
    CALL PRINT_STRING
    
    ; Add a line gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Clear any keyboard buffer
    MOV AH, 0CH
    MOV AL, 0
    INT 21H
    
    ; Return to login screen
    JMP LOGIN_START

HANDLE_EXIT:
    ; Add a line gap before exit message
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Display exit message
    LEA DX, EXIT_MSG
    CALL PRINT_STRING
    
    ; Exit program
    JMP EXIT
    
EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP

PRINT_STRING PROC
    MOV AH, 9
    INT 21H
    RET
PRINT_STRING ENDP

GET_TIME_SECONDS PROC
    PUSH BX
    
    ; Get current time
    MOV AH, 2CH
    INT 21H
    
    ; Convert hours to seconds
    XOR AX, AX
    MOV AL, CH       ; Hours
    MOV BL, 60
    MUL BL           ; Hours * 60 = minutes
    MOV BL, 60
    MUL BL           ; Minutes * 60 = seconds from hours
    MOV BX, AX       ; Store hours-seconds in BX
    
    ; Convert minutes to seconds
    XOR AX, AX
    MOV AL, CL       ; Minutes
    PUSH BX          ; Save hours-seconds
    MOV BL, 60
    MUL BL          ; Minutes * 60 = seconds from minutes
    POP BX          ; Restore hours-seconds
    ADD BX, AX      ; Add minutes-seconds
    
    ; Add seconds
    XOR AX, AX
    MOV AL, DH       ; Seconds
    ADD BX, AX       ; Add direct seconds
    
    MOV AX, BX       ; Return seconds in AX
    
    POP BX
    RET
GET_TIME_SECONDS ENDP

VALIDATE_LOGIN PROC
    ; Compare with first user
    MOV SI, OFFSET USER1
    LEA DI, INPUT_USER + 2
    CALL COMPARE_STRINGS
    JNE TRY_USER2
    
    MOV SI, OFFSET PASS1
    LEA DI, INPUT_PASS + 2
    CALL COMPARE_STRINGS
    JNE LOGIN_INVALID
    
    ; User 1 login successful
    MOV CURRENT_PLAYER, 1
    CALL LOAD_PLAYER_STATS
    JMP LOGIN_VALID
    
TRY_USER2:
    MOV SI, OFFSET USER2
    LEA DI, INPUT_USER + 2
    CALL COMPARE_STRINGS
    JNE TRY_USER3
    
    MOV SI, OFFSET PASS2
    LEA DI, INPUT_PASS + 2
    CALL COMPARE_STRINGS
    JNE LOGIN_INVALID
    
    ; User 2 login successful
    MOV CURRENT_PLAYER, 2
    CALL LOAD_PLAYER_STATS
    JMP LOGIN_VALID
    
TRY_USER3:
    MOV SI, OFFSET USER3
    LEA DI, INPUT_USER + 2
    CALL COMPARE_STRINGS
    JNE LOGIN_INVALID
    
    MOV SI, OFFSET PASS3
    LEA DI, INPUT_PASS + 2
    CALL COMPARE_STRINGS
    JNE LOGIN_INVALID
    
    ; User 3 login successful
    MOV CURRENT_PLAYER, 3
    CALL LOAD_PLAYER_STATS
    JMP LOGIN_VALID
    
LOGIN_INVALID:
    STC     ; Set carry flag for error
    RET
    
LOGIN_VALID:
    CLC     ; Clear carry flag for success
    RET
VALIDATE_LOGIN ENDP

SHOW_DASHBOARD PROC

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING

    ; Display dashboard header
    LEA DX, DASH_HEADER
    CALL PRINT_STRING
    LEA DX, DASH_TITLE
    CALL PRINT_STRING
    LEA DX, DASH_FOOTER
    CALL PRINT_STRING
    
    ; Display menu options
    LEA DX, MENU_1
    CALL PRINT_STRING
    LEA DX, MENU_2
    CALL PRINT_STRING
    LEA DX, MENU_3
    CALL PRINT_STRING
    LEA DX, MENU_4
    CALL PRINT_STRING
    LEA DX, MENU_5
    CALL PRINT_STRING
    LEA DX, MENU_6
    CALL PRINT_STRING
    
GET_CHOICE:    
    ; Get user choice
    LEA DX, CHOICE_MSG
    CALL PRINT_STRING
    
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    MOV CHOICE, AL
    
    ; Process choice
    CMP CHOICE, 1
    JE PROCESS_START_GAME
    CMP CHOICE, 2
    JE PROCESS_SHOW_HIGHLIGHTS
    CMP CHOICE, 3
    JE PROCESS_MULTIPLAYER
    CMP CHOICE, 4
    JE PROCESS_MYSTERY_PASSES
    CMP CHOICE, 5
    JE PROCESS_LOGOUT
    CMP CHOICE, 6
    JE PROCESS_EXIT
    
    LEA DX, INVALID_CHOICE
    CALL PRINT_STRING
    JMP GET_CHOICE
    
PROCESS_START_GAME:
    CALL SHOW_GAME_MODES
    JMP DASHBOARD_END
    
PROCESS_SHOW_HIGHLIGHTS:
    CALL DISPLAY_STATISTICS
    JMP DASHBOARD_END
    
PROCESS_MULTIPLAYER:
    ; Check if in guest mode
    CMP IS_GUEST_MODE, 1
    JNE NOT_GUEST_MP_MODE
    ; If in guest mode, show message that user is already in multiplayer mode
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, ALREADY_MP_MSG
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    JMP DASHBOARD_END
    
NOT_GUEST_MP_MODE:
    ; Call the multiplayer customization procedure
    CALL SHOW_MULTIPLAYER_OPTIONS
    JMP DASHBOARD_END

PROCESS_MYSTERY_PASSES:
    CALL SHOW_MYSTERY_PASSES
    JMP DASHBOARD_END
    
PROCESS_LOGOUT:
    ; Return to main procedure which will handle logout properly
    RET

PROCESS_EXIT:
    ; Return to main procedure which will handle exit properly
    RET
    
DASHBOARD_END:
    RET
SHOW_DASHBOARD ENDP

SHOW_GAME_MODES PROC

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING

    ; Display mode selection menu
    LEA DX, MODE_HEADER
    CALL PRINT_STRING
    LEA DX, MODE_TITLE
    CALL PRINT_STRING
    LEA DX, MODE_FOOTER
    CALL PRINT_STRING
    
    ; Display mode options
    LEA DX, MODE_1
    CALL PRINT_STRING
    LEA DX, MODE_2
    CALL PRINT_STRING
    LEA DX, MODE_3
    CALL PRINT_STRING
    LEA DX, MODE_4
    CALL PRINT_STRING
    
    ; Get mode choice
    LEA DX, MODE_CHOICE
    CALL PRINT_STRING
    
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    MOV MODE_SELECT, AL
    
    ; Process mode selection
    CMP MODE_SELECT, 1
    JE START_NORMAL_MODE
    CMP MODE_SELECT, 2
    JE START_MUTATION_MODE
    CMP MODE_SELECT, 3
    JE START_TIME_MODE
    CMP MODE_SELECT, 4
    JE RETURN_DASHBOARD
    
    ; Invalid choice
    LEA DX, INVALID_CHOICE
    CALL PRINT_STRING
    RET
    
START_NORMAL_MODE:
    LEA DX, NORMAL_MSG
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    CALL NORMAL_MODE_GAME
    RET
    
START_MUTATION_MODE:
    LEA DX, MUTATION_MSG
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    CALL MUTATION_MODE_GAME
    RET
    
START_TIME_MODE:
    LEA DX, TIME_MSG
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    CALL TIME_MODE_GAME
    RET
    
RETURN_DASHBOARD:
    LEA DX, BACK_MSG
    CALL PRINT_STRING
    RET
SHOW_GAME_MODES ENDP  

NORMAL_MODE_GAME PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX     
    ; Check if in guest mode with custom code length
    CMP IS_GUEST_MODE, 1
    JNE NORMAL_GET_LENGTH
    CMP USE_CUSTOM_LENGTH, 1
    JNE NORMAL_GET_LENGTH
    
    ; Use the custom code length instead of asking from player
    MOV AL, CUSTOM_CODE_LENGTH
    MOV CODE_LENGTH, AL
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID
    
NORMAL_GET_LENGTH:
    ; Get code length from player
    LEA DX, CODE_LENGTH_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate length (3-6)
    CMP AL, MIN_CODE_LENGTH
    JB INVALID_CODE_LENGTH
    CMP AL, MAX_CODE_LENGTH
    JA INVALID_CODE_LENGTH
    
    MOV CODE_LENGTH, AL 
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID
    
INVALID_CODE_LENGTH:
    LEA DX, INVALID_LENGTH
    CALL PRINT_STRING
    JMP NORMAL_GET_LENGTH
    
LENGTH_VALID:
    ; Get start time
    CALL GET_TIME_SECONDS
    MOV START_TIME, AX
    
    ; Show guide once at the beginning of the game
    CALL SHOW_GAME_GUIDE
    
    ; Check if in guest mode with custom secret code
    CMP IS_GUEST_MODE, 1
    JNE NORMAL_GENERATE_CODE
    CMP USE_CUSTOM_CODE, 1
    JNE NORMAL_GENERATE_CODE
    
    ; Use the custom secret code instead of generating a new one
    XOR CX, CX
    MOV CL, CODE_LENGTH
    XOR SI, SI

COPY_CUSTOM_CODE:
    MOV AL, CUSTOM_CODE[SI]
    MOV SECRET_CODE[SI], AL
    INC SI
    LOOP COPY_CUSTOM_CODE
    
    JMP SKIP_CODE_GENERATION
    
NORMAL_GENERATE_CODE:
    ; Generate secret code using shared procedure
    CALL GENERATE_SECRET_CODE
    
SKIP_CODE_GENERATION:
    ; Reset guess counter
    MOV GUESS_COUNT, 0
    
GAME_LOOP:
    LEA DX, GUESS_PROMPT
    CALL PRINT_STRING
    
    ; Read input (could be a guess or keyword)
    LEA DX, PLAYER_GUESS
    MOV AH, 0AH
    INT 21H    ; Check if the input might be a keyword
    MOV AL, PLAYER_GUESS+1  ; Get actual length of input
    CMP AL, 4               ; "chat" or "quit" length
    JE MAYBE_KEYWORD
    CMP AL, 5               ; "guide" length
    JE MAYBE_KEYWORD
    CMP AL, 5               ; "rules" length
    JE MAYBE_KEYWORD
    CMP AL, 7               ; "mystery" length
    JE MAYBE_KEYWORD
    JMP VALIDATE_AS_GUESS   ; If not a potential keyword length, validate as a guess
    
MAYBE_KEYWORD:
    ; Save the registers
    PUSH SI
    PUSH DI
    
    ; Convert input to lowercase for comparison
    MOV CX, 0
    MOV CL, [PLAYER_GUESS+1]  ; Get actual length
    MOV SI, OFFSET PLAYER_GUESS+2
    
CONVERT_TO_LC:
    MOV AL, [SI]  ; Get character
    
    ; Convert uppercase to lowercase
    CMP AL, 'A'
    JB SKIP_LC_CONVERT
    CMP AL, 'Z'
    JA SKIP_LC_CONVERT
    ADD AL, 32  ; Convert to lowercase
    MOV [SI], AL
    
SKIP_LC_CONVERT:
    INC SI
    LOOP CONVERT_TO_LC
    
    ; compare with known keywords
    ; Check for "chat"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET CHAT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_CHAT_KEYWORD
    
    ; Check for "guide"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET GUIDE_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_GUIDE_KEYWORD
    
    ; Check for "rules"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET RULES_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_RULES_KEYWORD
      ; Check for "mystery"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET MYSTERY_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_MYSTERY_KEYWORD
    
    ; Check for "quit"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET QUIT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_QUIT_KEYWORD
    
    ; if it's not a recognized keyword
    POP DI
    POP SI
    JMP VALIDATE_AS_GUESS
    
HANDLE_CHAT_KEYWORD:
    POP DI
    POP SI
    ; Call chat procedure
    CALL PROCESS_CHAT
    JMP GAME_LOOP
    
HANDLE_GUIDE_KEYWORD:
    POP DI
    POP SI
    ; Display game guide
    CALL SHOW_GAME_GUIDE
    JMP GAME_LOOP
    
HANDLE_RULES_KEYWORD:
    POP DI
    POP SI
    ; Display rules for normal mode
    LEA DX, NORMAL_RULES
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
      ; Display the rest of the rule text
    LEA DX, NORMAL_RULES2
    CALL PRINT_STRING
    
    ; Print newline before returning to game loop
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    JMP GAME_LOOP
    
HANDLE_MYSTERY_KEYWORD:
    POP DI
    POP SI
    ; Call the new REVEAL_MYSTERY_DIGIT procedure
    CALL REVEAL_MYSTERY_DIGIT
    JMP GAME_LOOP

HANDLE_QUIT_KEYWORD:
    POP DI
    POP SI
    ; Reset all chat variables since user is quitting
    CALL RESET_CHAT_VARIABLES
    
    ; Display quit message
    LEA DX, QUIT_GAME_MSG
    CALL PRINT_STRING
    
    ; Display press any key message
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Calculate time played before quitting
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update game statistics - count as loss
    INC TOTAL_GAMES_INT
    INC LOSSES_INT
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    ; Return to dashboard
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
VALIDATE_AS_GUESS:
    ; Check if input length matches the required code length
    MOV AL, PLAYER_GUESS+1
    CMP AL, CODE_LENGTH
    JNE INVALID_INPUT
      ; Increment chat acknowledgement counter for valid guess
    INC CHAT_ACK_COUNT
    
    ; Check if guess is correct
    XOR CX, CX
    MOV CL, CODE_LENGTH    ; Use variable length
    MOV SI, 0
    MOV BL, 0             ; Counter for correct digits   
    
    ; Save initial state
    CALL SAVE_CHAT_COUNTS
    
    ; Reset all RWC counts for this guess
    MOV CHAT_DIGIT_R_COUNT, 0
    MOV CHAT_DIGIT_C_COUNT, 0
    MOV CHAT_DIGIT_W_COUNT, 0
    
CHECK_DIGITS:
    MOV AL, PLAYER_GUESS[SI+2]
    SUB AL, '0'
    
    ; Track digit count for chat feature
    CMP AL, 0
    JNE @NOT_DIGIT_0
    INC CHAT_DIGIT_0_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_0:
    CMP AL, 1
    JNE @NOT_DIGIT_1
    INC CHAT_DIGIT_1_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_1:
    CMP AL, 2
    JNE @NOT_DIGIT_2
    INC CHAT_DIGIT_2_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_2:
    CMP AL, 3
    JNE @NOT_DIGIT_3
    INC CHAT_DIGIT_3_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_3:
    CMP AL, 4
    JNE @NOT_DIGIT_4
    INC CHAT_DIGIT_4_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_4:
    CMP AL, 5
    JNE @NOT_DIGIT_5
    INC CHAT_DIGIT_5_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_5:
    CMP AL, 6
    JNE @NOT_DIGIT_6
    INC CHAT_DIGIT_6_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_6:
    CMP AL, 7
    JNE @NOT_DIGIT_7
    INC CHAT_DIGIT_7_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_7:
    CMP AL, 8
    JNE @NOT_DIGIT_8
    INC CHAT_DIGIT_8_COUNT
    JMP @CONTINUE_COUNT
@NOT_DIGIT_8:
    INC CHAT_DIGIT_9_COUNT
    
@CONTINUE_COUNT:    ; First check if it's a direct match (R status)
    CMP AL, SECRET_CODE[SI]
    JNE NOT_CORRECT
    INC BL
    
    ; Track R status for the digit (Correct number, Correct position)
    PUSH AX
    PUSH BX
    
    MOV AH, 0  ; Clear high byte of AX
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX  ; AX contains our digit 0-9
    
    ; Only set to R if not already R (avoid double counting)
    CMP BYTE PTR [BX], 'R'
    JE SKIP_R_COUNT
    MOV BYTE PTR [BX], 'R'
    INC CHAT_DIGIT_R_COUNT
SKIP_R_COUNT:
    
    POP BX
    POP AX
    JMP NOT_CORRECT_DONE
    
NOT_CORRECT:
    ; Check if the digit exists elsewhere in the secret code
    PUSH SI
    PUSH AX
    MOV DI, 0
    MOV AH, 0  ; Clear high byte
    
CHECK_IN_SECRET:
    MOV DL, CODE_LENGTH
    MOV DH, 0
    CMP DI, DX
    JE DIGIT_NOT_IN_SECRET
    CMP AL, SECRET_CODE[DI]
    JE DIGIT_IN_SECRET
    INC DI
    JMP CHECK_IN_SECRET
    
DIGIT_IN_SECRET:
    ; Track C status for the digit (Correct number, Wrong position)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to C if not already R (R takes precedence)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK
    
    ; Only set to C if not already C (prevent double counting)
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK
    MOV BYTE PTR [BX], 'C'
    INC CHAT_DIGIT_C_COUNT
    JMP FINISH_DIGIT_CHECK

DIGIT_NOT_IN_SECRET:
    ; Track W status for the digit (Incorrect number)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to W if not already R or C (maintain priority: R > C > W)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK
    
    ; Only set to W if not already W (prevent double counting)
    CMP BYTE PTR [BX], 'W'
    JE FINISH_DIGIT_CHECK
    MOV BYTE PTR [BX], 'W'
    INC CHAT_DIGIT_W_COUNT
    
FINISH_DIGIT_CHECK:
    POP AX
    POP SI
    
NOT_CORRECT_DONE:
    INC SI
    LOOP CHECK_DIGITS
    
    INC GUESS_COUNT
      ; Compare correct digits with code length
    CMP BL, CODE_LENGTH
    JE GAME_WON
    
    ; Add new RWC counts to stored counts
    CALL RESTORE_CHAT_COUNTS
    
    ; Show feedback
    CALL SHOW_FEEDBACK
    
    JMP GAME_LOOP
    
INVALID_INPUT:
    LEA DX, INVALID_GUESS
    CALL PRINT_STRING
    JMP GAME_LOOP
    
GAME_WON:
    ; Reset all chat variables since game is won
    CALL RESET_CHAT_VARIABLES
    
    ; Get end time in seconds using same calculation
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update statistics
    INC TOTAL_GAMES_INT
    INC WINS_INT
    MOV AL, GUESS_COUNT
    CBW
    ADD TOTAL_ATTEMPTS, AX
    
    ; Make sure code length is properly saved for current player
    CMP CURRENT_PLAYER, 1
    JNE @CHECK_PLAYER2
    MOV AL, CODE_LENGTH
    MOV P1_CODE_LENGTH, AL
    JMP @CONTINUE_GAME_WON
    
@CHECK_PLAYER2:
    CMP CURRENT_PLAYER, 2
    JNE @CHECK_PLAYER3
    MOV AL, CODE_LENGTH
    MOV P2_CODE_LENGTH, AL
    JMP @CONTINUE_GAME_WON
    
@CHECK_PLAYER3:
    CMP CURRENT_PLAYER, 3
    JNE @CONTINUE_GAME_WON
    MOV AL, CODE_LENGTH
    MOV P3_CODE_LENGTH, AL
    
@CONTINUE_GAME_WON:
    ; Update top scores
    CALL UPDATE_TOP_SCORES
    
    ; Check if player should get a Mystery Pass (every 3 wins)
    MOV AX, WINS_INT
    MOV BL, 3
    DIV BL
    CMP AH, 0  ; Check if the remainder is 0 (divisible by 3)
    JNE NO_NEW_MYSTERY_PASS
    
    ; Award a new Mystery Pass if divisible by 3
    INC MYSTERY_PASS_COUNT
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, MYSTERY_PASS_WIN
    CALL PRINT_STRING
    
NO_NEW_MYSTERY_PASS:
    
    ; Show success message
    LEA DX, SUCCESS_GAME_MSG
    CALL PRINT_STRING
    
    ; Clear any keyboard buffer
    MOV AH, 0CH
    MOV AL, 0
    INT 21H
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    ; Wait for a keypress to confirm win before returning to dashboard
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
NORMAL_MODE_GAME ENDP

GENERATE_RANDOM_POS PROC
    ; This procedure generates a random position number between 1 and CODE_LENGTH
    ; Input: CL = code length
    ; Output: AL = random position (1-based)
    PUSH BX
    PUSH DX
    
    ; Get fresh random seed
    CALL GET_TIME_SECONDS
    MOV SEED, AX
    
    ; Generate random number using LCG algorithm
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 1 and CODE_LENGTH
    XOR DX, DX
    DIV CX          ; Divide by code length in CL
    MOV AL, DL      ; Remainder is in DL (0 to length-1)
    INC AL          ; Make it 1-based (1 to length)
    
    POP DX
    POP BX
    RET
GENERATE_RANDOM_POS ENDP

REVEAL_MYSTERY_DIGIT PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
      ; Check if player has any mystery passes
    ; For guest mode, we want to ensure they have mystery passes
    CMP IS_GUEST_MODE, 1
    JNE REGULAR_PLAYER_CHECK
    
    ; If it's guest mode with no passes, initialize with 1
    CMP MYSTERY_PASS_COUNT, 0
    JNE REGULAR_PLAYER_CHECK
    MOV MYSTERY_PASS_COUNT, 1
    
REGULAR_PLAYER_CHECK:
    CMP MYSTERY_PASS_COUNT, 0
    JE NO_MYSTERY_PASSES
    
    ; Use a mystery pass
    DEC MYSTERY_PASS_COUNT
    
    ; Get fresh random seed
    CALL GET_TIME_SECONDS
    MOV SEED, AX
    
    ; Generate random position between 1 and CODE_LENGTH (1-based)
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    XOR DX, DX
    MOV CX, 0
    MOV CL, CODE_LENGTH
    DIV CX
    
    ; Now DX contains value between 0 and CODE_LENGTH-1
    MOV AX, DX
    INC AX  ; Make it 1-based for display
      ; Save the 1-based position for display (and future use)
    MOV BX, AX  
    
    ; Get the digit at that position in SECRET_CODE (convert to 0-based)
    DEC AX  ; Convert to 0-based index
    MOV SI, AX
    MOV AL, SECRET_CODE[SI]  ; Get digit
    MOV CL, AL   ; Save digit in CL for later use
    
    ; Display empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Print "The mystery position is X, and the mystery digit is Y"
    ; Print "The mystery position is " text
    LEA DX, MYSTERY_POS_PART1
    CALL PRINT_STRING
    
    ; Display position (1-based)
    MOV AX, BX  ; Get position back from BX
    CALL DISPLAY_NUMBER
    
    ; Print ", and the mystery digit is " text
    LEA DX, MYSTERY_POS_PART2
    CALL PRINT_STRING
    
    ; Display digit
    MOV DL, CL   ; Get the digit value from CL
    ADD DL, '0'  ; Convert to ASCII
    MOV AH, 2
    INT 21H
    
    ; Print newline
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    JMP REVEAL_DONE
    
NO_MYSTERY_PASSES:
    ; Show no passes message
    LEA DX, MYSTERY_PASS_NONE
    CALL PRINT_STRING
    
    ; Calculate and show how many more wins are needed for a pass
    LEA DX, MP_EARN_MSG
    CALL PRINT_STRING
    
    ; Calculate wins needed (3 - (wins % 3))
    MOV AX, WINS_INT
    MOV BL, 3
    DIV BL        ; Divide wins by 3
    
    ; If remainder is 0, they need 3 more wins (just earned one)
    CMP AH, 0
    JE NEED_THREE_WINS_REVEAL
    
    MOV AL, 3
    SUB AL, AH    ; 3 - remainder
    MOV AH, 0
    CALL DISPLAY_NUMBER
    JMP FINISH_WINS_NEEDED_REVEAL
    
NEED_THREE_WINS_REVEAL:
    MOV AX, 3
    CALL DISPLAY_NUMBER
    
FINISH_WINS_NEEDED_REVEAL:    LEA DX, MP_MORE_WINS_MSG
    CALL PRINT_STRING
    
    ; Add a line gap after the message
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
REVEAL_DONE:
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
REVEAL_MYSTERY_DIGIT ENDP

MUTATION_MODE_GAME PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Reset mutation counter
    MOV MUTATION_COUNTER, 0
    
    ; Check if in guest mode with custom mutation sequence
    CMP IS_GUEST_MODE, 1
    JNE GET_MUTATION_SEQ
    CMP USE_CUSTOM_MUTATION, 1
    JNE GET_MUTATION_SEQ
    
    ; Use the custom mutation sequence instead of asking
    MOV AL, CUSTOM_MUTATION_SEQ
    MOV MUTATION_SEQ, AL
    JMP MUT_SEQ_VALID
    
GET_MUTATION_SEQ:
    ; Get mutation sequence from player (6-9)
    LEA DX, MUT_SEQ_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate mutation sequence (6-9)
    CMP AL, 6
    JB INVALID_MUT_SEQ
    CMP AL, 9
    JA INVALID_MUT_SEQ
    
    MOV MUTATION_SEQ, AL
    JMP MUT_SEQ_VALID
    
INVALID_MUT_SEQ:
    LEA DX, INVALID_SEQ
    CALL PRINT_STRING
    JMP GET_MUTATION_SEQ
    
MUT_SEQ_VALID:
    ; Check if in guest mode with custom code length
    CMP IS_GUEST_MODE, 1
    JNE GET_LENGTH_MUT
    CMP USE_CUSTOM_LENGTH, 1
    JNE GET_LENGTH_MUT
    
    ; Use the custom code length instead of asking
    MOV AL, CUSTOM_CODE_LENGTH
    MOV CODE_LENGTH, AL
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID_MUT
    
GET_LENGTH_MUT:
    LEA DX, CODE_LENGTH_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate length (3-6)
    CMP AL, MIN_CODE_LENGTH
    JB INVALID_CODE_LENGTH_MUT
    CMP AL, MAX_CODE_LENGTH
    JA INVALID_CODE_LENGTH_MUT
    
    MOV CODE_LENGTH, AL
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID_MUT
    
INVALID_CODE_LENGTH_MUT:
    LEA DX, INVALID_LENGTH
    CALL PRINT_STRING
    JMP GET_LENGTH_MUT
    
LENGTH_VALID_MUT:
    ; Get start time
    CALL GET_TIME_SECONDS
    MOV START_TIME, AX
    
    ; Show guide once at the beginning of the game
    CALL SHOW_GAME_GUIDE
    
    ; Check if in guest mode with custom secret code
    CMP IS_GUEST_MODE, 1
    JNE GENERATE_MUT_CODE
    CMP USE_CUSTOM_CODE, 1
    JNE GENERATE_MUT_CODE
    
    ; Use the custom secret code instead of generating a new one
    XOR CX, CX
    MOV CL, CODE_LENGTH
    XOR SI, SI
COPY_CUSTOM_CODE_MUT:
    MOV AL, CUSTOM_CODE[SI]
    MOV SECRET_CODE[SI], AL
    INC SI
    LOOP COPY_CUSTOM_CODE_MUT
    
    JMP SKIP_MUT_GENERATION
    
GENERATE_MUT_CODE:
    ; Generate secret code
    CALL GENERATE_SECRET_CODE
    
SKIP_MUT_GENERATION:
    ; Reset guess counter
    MOV GUESS_COUNT, 0
    
GAME_LOOP_MUT:
    LEA DX, GUESS_PROMPT
    CALL PRINT_STRING
    
    ; Read input (could be a guess or keyword)
    LEA DX, PLAYER_GUESS
    MOV AH, 0AH
    INT 21H
      ; Check if the input might be a keyword
    MOV AL, PLAYER_GUESS+1  ; Get actual length of input
    CMP AL, 4               ; "chat" or "quit" length
    JE MAYBE_KEYWORD_MUT
    CMP AL, 5               ; "guide" length
    JE MAYBE_KEYWORD_MUT
    CMP AL, 5               ; "rules" length
    JE MAYBE_KEYWORD_MUT
    CMP AL, 7               ; "mystery" length
    JE MAYBE_KEYWORD_MUT
    JMP VALIDATE_AS_GUESS_MUT   ; If not a potential keyword length, validate as a guess
    
MAYBE_KEYWORD_MUT:
    ; Save the registers we'll need
    PUSH SI
    PUSH DI
    
    ; Convert input to lowercase for comparison
    MOV CX, 0
    MOV CL, [PLAYER_GUESS+1]  ; Get actual length
    MOV SI, OFFSET PLAYER_GUESS+2
    
CONVERT_TO_LC_MUT:
    MOV AL, [SI]  ; Get character
    
    ; Convert uppercase to lowercase
    CMP AL, 'A'
    JB SKIP_LC_CONVERT_MUT
    CMP AL, 'Z'
    JA SKIP_LC_CONVERT_MUT
    ADD AL, 32  ; Convert to lowercase
    MOV [SI], AL
    
SKIP_LC_CONVERT_MUT:
    INC SI
    LOOP CONVERT_TO_LC_MUT
    
    ; Now compare with known keywords
    ; Check for "chat"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET CHAT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_CHAT_KEYWORD_MUT
    
    ; Check for "guide"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET GUIDE_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_GUIDE_KEYWORD_MUT
    
    ; Check for "rules"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET RULES_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_RULES_KEYWORD_MUT
      ; Check for "mystery"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET MYSTERY_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_MYSTERY_KEYWORD_MUT
    
    ; Check for "quit"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET QUIT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_QUIT_KEYWORD_MUT
    
    ; If we get here, it's not a recognized keyword
    POP DI
    POP SI
    JMP VALIDATE_AS_GUESS_MUT
    
HANDLE_CHAT_KEYWORD_MUT:
    POP DI
    POP SI
    ; Call chat procedure
    CALL PROCESS_CHAT
    JMP GAME_LOOP_MUT
    
HANDLE_GUIDE_KEYWORD_MUT:
    POP DI
    POP SI
    ; Display game guide
    CALL SHOW_GAME_GUIDE
    JMP GAME_LOOP_MUT
    
HANDLE_RULES_KEYWORD_MUT:
    POP DI
    POP SI
    ; Display rules for mutation mode
    LEA DX, MUTATION_RULES
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, MUTATION_RULES2
    CALL PRINT_STRING
    
    ; Display mutation sequence
    MOV DL, MUTATION_SEQ
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, MUTATION_RULES3
    CALL PRINT_STRING
    
    ; Print newline before returning to game loop
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    JMP GAME_LOOP_MUT
    
HANDLE_MYSTERY_KEYWORD_MUT:
    POP DI
    POP SI
    ; Call the new REVEAL_MYSTERY_DIGIT procedure
    CALL REVEAL_MYSTERY_DIGIT
    JMP GAME_LOOP_MUT

HANDLE_QUIT_KEYWORD_MUT:
    POP DI
    POP SI
    ; Reset all chat variables since user is quitting
    CALL RESET_CHAT_VARIABLES
    
    ; Display quit message
    LEA DX, QUIT_GAME_MSG
    CALL PRINT_STRING
    
    ; Display press any key message
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Calculate time played before quitting
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update game statistics - count as loss
    INC TOTAL_GAMES_INT
    INC LOSSES_INT
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    ; Return to dashboard
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
VALIDATE_AS_GUESS_MUT:    ; Check if input length matches the required code length
    MOV AL, PLAYER_GUESS+1
    CMP AL, CODE_LENGTH
    JNE INVALID_INPUT_MUT
    
    ; Increment chat acknowledgement counter for valid guess
    INC CHAT_ACK_COUNT
    
    ; Check if guess is correct
    XOR CX, CX
    MOV CL, CODE_LENGTH
    MOV SI, 0
    MOV BL, 0             ; Counter for correct digits
      ; Store current RWC counts before resetting
    CALL SAVE_CHAT_COUNTS
    
    ; Reset R,C,W count for this guess
    MOV CHAT_DIGIT_R_COUNT, 0
    MOV CHAT_DIGIT_C_COUNT, 0
    MOV CHAT_DIGIT_W_COUNT, 0
    
CHECK_DIGITS_MUT:
    MOV AL, PLAYER_GUESS[SI+2]
    SUB AL, '0'
    
    ; Track digit count for chat feature
    CMP AL, 0
    JNE @NOT_DIGIT_0_MUT
    INC CHAT_DIGIT_0_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_0_MUT:
    CMP AL, 1
    JNE @NOT_DIGIT_1_MUT
    INC CHAT_DIGIT_1_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_1_MUT:
    CMP AL, 2
    JNE @NOT_DIGIT_2_MUT
    INC CHAT_DIGIT_2_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_2_MUT:
    CMP AL, 3
    JNE @NOT_DIGIT_3_MUT
    INC CHAT_DIGIT_3_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_3_MUT:
    CMP AL, 4
    JNE @NOT_DIGIT_4_MUT
    INC CHAT_DIGIT_4_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_4_MUT:
    CMP AL, 5
    JNE @NOT_DIGIT_5_MUT
    INC CHAT_DIGIT_5_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_5_MUT:
    CMP AL, 6
    JNE @NOT_DIGIT_6_MUT
    INC CHAT_DIGIT_6_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_6_MUT:
    CMP AL, 7
    JNE @NOT_DIGIT_7_MUT
    INC CHAT_DIGIT_7_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_7_MUT:
    CMP AL, 8
    JNE @NOT_DIGIT_8_MUT
    INC CHAT_DIGIT_8_COUNT
    JMP @CONTINUE_COUNT_MUT
@NOT_DIGIT_8_MUT:
    INC CHAT_DIGIT_9_COUNT
    
@CONTINUE_COUNT_MUT:
    CMP AL, SECRET_CODE[SI]
    JNE NOT_CORRECT_MUT
    INC BL
    
    ; Track R status for the digit (Correct number, Correct position)
    PUSH AX
    PUSH BX
    
    MOV AH, 0  ; Clear high byte
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX  ; AX contains our digit 0-9
    
    ; Only set to R if not already R (avoid double counting)
    CMP BYTE PTR [BX], 'R'
    JE SKIP_R_COUNT_MUT
    MOV BYTE PTR [BX], 'R'
    INC CHAT_DIGIT_R_COUNT

SKIP_R_COUNT_MUT:
    
    POP BX
    POP AX
    JMP NOT_CORRECT_DONE_MUT
    
NOT_CORRECT_MUT:
    ; Check if the digit exists elsewhere in the secret code
    PUSH SI
    PUSH AX
    MOV DI, 0
    MOV AH, 0  ; Clear high byte

CHECK_IN_SECRET_MUT:
    MOV DL, CODE_LENGTH
    MOV DH, 0
    CMP DI, DX
    JE DIGIT_NOT_IN_SECRET_MUT
    CMP AL, SECRET_CODE[DI]
    JE DIGIT_IN_SECRET_MUT
    INC DI
    JMP CHECK_IN_SECRET_MUT
    
DIGIT_IN_SECRET_MUT:
    ; Track C status (Correct number, Wrong position)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to C if not already R (R takes precedence)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_MUT
    
    ; Only set to C if not already C (prevent double counting)
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_MUT
    MOV BYTE PTR [BX], 'C'
    INC CHAT_DIGIT_C_COUNT
    JMP FINISH_DIGIT_CHECK_MUT
    
DIGIT_NOT_IN_SECRET_MUT:
    ; Track W status (Wrong number)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to W if not already R or C
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_MUT
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_MUT
    
    ; Only set to W if not already W (prevent double counting)
    CMP BYTE PTR [BX], 'W'
    JE FINISH_DIGIT_CHECK_MUT
    MOV BYTE PTR [BX], 'W'
    INC CHAT_DIGIT_W_COUNT
    
FINISH_DIGIT_CHECK_MUT:
    POP AX
    POP SI
    
NOT_CORRECT_DONE_MUT:
    INC SI
    LOOP CHECK_DIGITS_MUT
    
    INC GUESS_COUNT
    INC MUTATION_COUNTER
    
    ; Compare correct digits with code length
    CMP BL, CODE_LENGTH
    JE GAME_WON_MUT
    
    ; Show feedback
    CALL SHOW_FEEDBACK
    
    ; After showing feedback, check if it's time to mutate the code
    MOV AL, MUTATION_COUNTER
    CMP AL, MUTATION_SEQ
    JNE GAME_LOOP_MUT    ; If not time to mutate, continue the game loop
    
    ; Time to mutate the code
    MOV MUTATION_COUNTER, 0  ; Reset mutation counter
    CALL GENERATE_SECRET_CODE
    
    ; Inform player about mutation
    LEA DX, CODE_MUTATED
    CALL PRINT_STRING
    
    JMP GAME_LOOP_MUT
    
INVALID_INPUT_MUT:
    LEA DX, INVALID_GUESS
    CALL PRINT_STRING
    JMP GAME_LOOP_MUT
    
GAME_WON_MUT:
    ; Get end time in seconds
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update statistics
    INC TOTAL_GAMES_INT
    INC WINS_INT
    MOV AL, GUESS_COUNT
    CBW
    ADD TOTAL_ATTEMPTS, AX
    
    ; Update top scores
    CALL UPDATE_TOP_SCORES
    
    ; Check if player should get a Mystery Pass (every 3 wins)
    MOV AX, WINS_INT
    MOV BL, 3
    DIV BL
    CMP AH, 0  ; Check if the remainder is 0 (divisible by 3)
    JNE NO_NEW_MYSTERY_PASS_MUT
    
    ; Award a new Mystery Pass if divisible by 3
    INC MYSTERY_PASS_COUNT
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, MYSTERY_PASS_WIN
    CALL PRINT_STRING
    
NO_NEW_MYSTERY_PASS_MUT:
    
    ; Show success message
    LEA DX, SUCCESS_GAME_MSG
    CALL PRINT_STRING
      ; Clear any keyboard buffer
    MOV AH, 0CH
    MOV AL, 0
    INT 21H
    
    ; Wait for a keypress to confirm win before returning to dashboard
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
MUTATION_MODE_GAME ENDP

TIME_MODE_GAME PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Reset suffer count
    MOV SUFFER_COUNT, 0
    
    ; Display punishment type selection menu
    LEA DX, TIME_PUNISH_HEADER
    CALL PRINT_STRING
    LEA DX, TIME_PUNISH_1
    CALL PRINT_STRING
    LEA DX, TIME_PUNISH_2
    CALL PRINT_STRING
    
    ; Get punishment choice
    LEA DX, TIME_PUNISH_CHOICE
    CALL PRINT_STRING
    
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    MOV TIME_PUNISH_TYPE, AL
    
    ; Validate punishment choice
    CMP AL, 1
    JB INVALID_PUNISH
    CMP AL, 2
    JA INVALID_PUNISH
    JMP PUNISH_VALID
    
INVALID_PUNISH:
    LEA DX, INVALID_CHOICE
    CALL PRINT_STRING
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
PUNISH_VALID:
    ; Check if in guest mode with custom time limit
    CMP IS_GUEST_MODE, 1
    JNE GET_TIME_LIMIT
    CMP USE_CUSTOM_TIME, 1
    JNE GET_TIME_LIMIT
    
    ; Use custom time limit
    MOV AX, CUSTOM_TIME_LIMIT
    MOV TIME_LIMIT, AX
    JMP TIME_VALID
    
GET_TIME_LIMIT:
    LEA DX, TIME_LIMIT_PROMPT
    CALL PRINT_STRING
    
    ; Read tens digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Check for single or double digit input
    CMP AL, 1
    JB INVALID_TIME_LIMIT
    CMP AL, 9
    JA INVALID_TIME_LIMIT
    
    ; Store tens digit
    MOV AH, 0
    MOV BX, 10
    MUL BX
    MOV BX, AX
    
    ; Check for second digit
    MOV AH, 1
    INT 21H
    
    ; If it's Enter, use just the first digit * 10
    CMP AL, 13
    JE SINGLE_DIGIT_TIME
    
    ; Otherwise, validate and add the second digit
    SUB AL, '0'
    CMP AL, 0
    JB INVALID_TIME_LIMIT
    CMP AL, 9
    JA INVALID_TIME_LIMIT
    
    ; Add ones digit
    MOV AH, 0
    ADD BX, AX
    
    ; Check if time is valid (10-99)
    CMP BX, 10
    JB INVALID_TIME_LIMIT
    CMP BX, 100
    JA INVALID_TIME_LIMIT
    
    MOV TIME_LIMIT, BX
    JMP TIME_VALID
    
SINGLE_DIGIT_TIME:
    ; Check if first digit * 10 is valid
    CMP BX, 10
    JB INVALID_TIME_LIMIT
    CMP BX, 100
    JA INVALID_TIME_LIMIT
    
    MOV TIME_LIMIT, BX
    JMP TIME_VALID
    
INVALID_TIME_LIMIT:
    LEA DX, INVALID_TIME
    CALL PRINT_STRING
    JMP GET_TIME_LIMIT
    
TIME_VALID:
    ; Check if in guest mode with custom code length
    CMP IS_GUEST_MODE, 1
    JNE GET_LENGTH_TIME
    CMP USE_CUSTOM_LENGTH, 1
    JNE GET_LENGTH_TIME
    
    ; Use the custom code length instead of asking
    MOV AL, CUSTOM_CODE_LENGTH
    MOV CODE_LENGTH, AL
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID_TIME
    
GET_LENGTH_TIME:
    LEA DX, CODE_LENGTH_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate length (3-6)
    CMP AL, MIN_CODE_LENGTH
    JB INVALID_CODE_LENGTH_TIME
    CMP AL, MAX_CODE_LENGTH
    JA INVALID_CODE_LENGTH_TIME
    
    MOV CODE_LENGTH, AL
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    JMP LENGTH_VALID_TIME
    
INVALID_CODE_LENGTH_TIME:
    LEA DX, INVALID_LENGTH
    CALL PRINT_STRING
    JMP GET_LENGTH_TIME
    
LENGTH_VALID_TIME:
    ; Display timer message
    LEA DX, TIMER_START_MSG
    CALL PRINT_STRING
    
    MOV AX, TIME_LIMIT
    CALL DISPLAY_NUMBER
    
    LEA DX, TIMER_SECONDS
    CALL PRINT_STRING
    
    ; Get start time
    CALL GET_TIME_SECONDS
    MOV START_TIME, AX
    MOV TIME_START, AX
    
    ; Show guide once at the beginning of the game
    CALL SHOW_GAME_GUIDE
    
    ; Check if in guest mode with custom secret code
    CMP IS_GUEST_MODE, 1
    JNE GENERATE_TIME_CODE
    CMP USE_CUSTOM_CODE, 1
    JNE GENERATE_TIME_CODE
    
    ; Use the custom secret code instead of generating a new one
    XOR CX, CX
    MOV CL, CODE_LENGTH
    XOR SI, SI
COPY_CUSTOM_CODE_TIME:
    MOV AL, CUSTOM_CODE[SI]
    MOV SECRET_CODE[SI], AL
    INC SI
    LOOP COPY_CUSTOM_CODE_TIME
    
    JMP SKIP_TIME_GENERATION
    
GENERATE_TIME_CODE:
    ; Generate secret code
    CALL GENERATE_SECRET_CODE
    
SKIP_TIME_GENERATION:
    ; Reset guess counter
    MOV GUESS_COUNT, 0
    MOV TIMER_ACTIVE, 1
    
    ; Branch to appropriate game mode
    CMP TIME_PUNISH_TYPE, 1
    JE SUFFER_MODE
    JMP INSTANT_DEATH_MODE
    
; SUFFER MODE: Limited time per guess, but can continue after suffering
SUFFER_MODE:
    ; Reset timer for this guess
    CALL GET_TIME_SECONDS
    MOV TIME_START, AX
    
SUFFER_GAME_LOOP:
    LEA DX, GUESS_PROMPT
    CALL PRINT_STRING
    
    ; Read input (could be a guess or keyword)
    LEA DX, PLAYER_GUESS
    MOV AH, 0AH
    INT 21H
    
    ; Check if the input might be a keyword
    MOV AL, PLAYER_GUESS+1  ; Get actual length of input
    CMP AL, 4               ; "chat" length
    JE MAYBE_KEYWORD_TIME
    CMP AL, 5               ; "guide" length
    JE MAYBE_KEYWORD_TIME
    CMP AL, 5               ; "rules" length
    JE MAYBE_KEYWORD_TIME
    CMP AL, 7               ; "mystery" length
    JE MAYBE_KEYWORD_TIME
    JMP VALIDATE_SUFFER_INPUT  ; If not a potential keyword, validate as a guess
    
MAYBE_KEYWORD_TIME:
    ; Save the registers we'll need
    PUSH SI
    PUSH DI
    
    ; Convert input to lowercase for comparison
    MOV CX, 0
    MOV CL, [PLAYER_GUESS+1]  ; Get actual length
    MOV SI, OFFSET PLAYER_GUESS+2
    
CONVERT_TO_LC_TIME:
    MOV AL, [SI]  ; Get character
    
    ; Convert uppercase to lowercase
    CMP AL, 'A'
    JB SKIP_LC_CONVERT_TIME
    CMP AL, 'Z'
    JA SKIP_LC_CONVERT_TIME
    ADD AL, 32  ; Convert to lowercase
    MOV [SI], AL
    
SKIP_LC_CONVERT_TIME:
    INC SI
    LOOP CONVERT_TO_LC_TIME
    
    ; Now compare with known keywords
    ; Check for "chat"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET CHAT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_CHAT_KEYWORD_TIME
    
    ; Check for "guide"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET GUIDE_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_GUIDE_KEYWORD_TIME
    
    ; Check for "rules"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET RULES_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_RULES_KEYWORD_TIME
    ; Check for "mystery"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET MYSTERY_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_MYSTERY_KEYWORD_TIME
    
    ; Check for "quit"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET QUIT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_QUIT_KEYWORD_TIME
    
    ; If we get here, it's not a recognized keyword
    POP DI
    POP SI
    JMP VALIDATE_SUFFER_INPUT
    
HANDLE_CHAT_KEYWORD_TIME:
    POP DI
    POP SI
    ; Call chat procedure
    CALL PROCESS_CHAT
    JMP RESET_TIMER_CONTINUE
    
HANDLE_GUIDE_KEYWORD_TIME:
    POP DI
    POP SI
    ; Display game guide
    CALL SHOW_GAME_GUIDE
    JMP RESET_TIMER_CONTINUE
    
HANDLE_RULES_KEYWORD_TIME:
    POP DI
    POP SI
    ; Check punishment type to display appropriate rules
    CMP TIME_PUNISH_TYPE, 1
    JE SHOW_SUFFER_RULES_TIME
      ; Death mode rules
    LEA DX, TIME_RULES_DEATH
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, TIME_RULES_DEATH2
    CALL PRINT_STRING
    
    ; Print newline for better formatting
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    JMP RESET_TIMER_CONTINUE
    
SHOW_SUFFER_RULES_TIME:
    ; Suffer mode rules
    LEA DX, TIME_RULES_SUFFER
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, TIME_RULES_SUFFER2
    CALL PRINT_STRING
    
    ; Print newline for better formatting
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    JMP RESET_TIMER_CONTINUE
    
HANDLE_MYSTERY_KEYWORD_TIME:
    POP DI
    POP SI
    ; Call the new REVEAL_MYSTERY_DIGIT procedure
    CALL REVEAL_MYSTERY_DIGIT
    JMP RESET_TIMER_CONTINUE

HANDLE_QUIT_KEYWORD_TIME:
    POP DI
    POP SI
    ; Display quit game message
    LEA DX, QUIT_GAME_MSG
    CALL PRINT_STRING
    
    ; End the game and return to mode selection
    MOV TIMER_ACTIVE, 0
    JMP TIME_MODE_EXIT
    
RESET_TIMER_CONTINUE:
    ; Reset timer after handling keyword
    CALL GET_TIME_SECONDS
    MOV TIME_START, AX
    JMP SUFFER_GAME_LOOP
    
VALIDATE_SUFFER_INPUT:
    ; First check if timer expired for this guess
    CALL GET_TIME_SECONDS
    MOV CURRENT_TIME, AX
    SUB AX, TIME_START
    CMP AX, TIME_LIMIT
    JB SUFFER_TIME_OK
    
    ; Time expired for this guess - suffer!
    INC SUFFER_COUNT
    LEA DX, SUFFER_MSG
    CALL PRINT_STRING
    
    ; Start new timer for next guess
    CALL GET_TIME_SECONDS
    MOV TIME_START, AX
    
    ; Skip validation and continue with next guess
    JMP SUFFER_GAME_LOOP
    
SUFFER_TIME_OK:    ; Check if input length matches the required code length
    MOV AL, PLAYER_GUESS+1
    CMP AL, CODE_LENGTH
    JNE INVALID_INPUT_SUFFER
    
    ; Increment chat acknowledgement counter for valid guess
    INC CHAT_ACK_COUNT
    
    ; Check if guess is correct
    XOR CX, CX
    MOV CL, CODE_LENGTH
    MOV SI, 0
    MOV BL, 0             ; Counter for correct digits
    ; Store current RWC counts before resetting
    CALL SAVE_CHAT_COUNTS
    
    ; Reset R,C,W count for this guess
    MOV CHAT_DIGIT_R_COUNT, 0
    MOV CHAT_DIGIT_C_COUNT, 0
    MOV CHAT_DIGIT_W_COUNT, 0
    
CHECK_DIGITS_SUFFER:
    MOV AL, PLAYER_GUESS[SI+2]
    SUB AL, '0'
    
    ; Track digit count for chat feature
    CMP AL, 0
    JNE @NOT_DIGIT_0_SUFFER
    INC CHAT_DIGIT_0_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_0_SUFFER:
    CMP AL, 1
    JNE @NOT_DIGIT_1_SUFFER
    INC CHAT_DIGIT_1_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_1_SUFFER:
    CMP AL, 2
    JNE @NOT_DIGIT_2_SUFFER
    INC CHAT_DIGIT_2_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_2_SUFFER:
    CMP AL, 3
    JNE @NOT_DIGIT_3_SUFFER
    INC CHAT_DIGIT_3_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_3_SUFFER:
    CMP AL, 4
    JNE @NOT_DIGIT_4_SUFFER
    INC CHAT_DIGIT_4_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_4_SUFFER:
    CMP AL, 5
    JNE @NOT_DIGIT_5_SUFFER
    INC CHAT_DIGIT_5_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_5_SUFFER:
    CMP AL, 6
    JNE @NOT_DIGIT_6_SUFFER
    INC CHAT_DIGIT_6_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_6_SUFFER:
    CMP AL, 7
    JNE @NOT_DIGIT_7_SUFFER
    INC CHAT_DIGIT_7_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_7_SUFFER:
    CMP AL, 8
    JNE @NOT_DIGIT_8_SUFFER
    INC CHAT_DIGIT_8_COUNT
    JMP @CONTINUE_COUNT_SUFFER
@NOT_DIGIT_8_SUFFER:
    INC CHAT_DIGIT_9_COUNT
    
@CONTINUE_COUNT_SUFFER:
    CMP AL, SECRET_CODE[SI]
    JNE NOT_CORRECT_SUFFER
    INC BL
    
    ; Track R status for the digit
    PUSH AX
    PUSH BX
    
    MOV AH, 0
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    MOV BYTE PTR [BX], 'R'
    INC CHAT_DIGIT_R_COUNT
    
    POP BX
    POP AX
    JMP NOT_CORRECT_DONE_SUFFER
    
NOT_CORRECT_SUFFER:
    ; Check if the digit exists elsewhere in the secret code
    PUSH SI
    PUSH AX
    MOV DI, 0
    MOV AH, 0
    
CHECK_IN_SECRET_SUFFER:
    MOV DL, CODE_LENGTH    ; Load CODE_LENGTH to DL (8-bit register)
    MOV DH, 0              ; Clear DH to make DX a proper 16-bit value
    CMP DI, DX             ; Compare DI with DX (both 16-bit registers)
    JE DIGIT_NOT_IN_SECRET_SUFFER
    CMP AL, SECRET_CODE[DI]
    JE DIGIT_IN_SECRET_SUFFER
    INC DI
    JMP CHECK_IN_SECRET_SUFFER
    
DIGIT_IN_SECRET_SUFFER:
    ; Track C status for the digit (Correct number, Wrong position)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to C if not already R (R takes precedence)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_SUFFER
    
    ; Only set to C if not already C (prevent double counting)
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_SUFFER
    MOV BYTE PTR [BX], 'C'
    INC CHAT_DIGIT_C_COUNT
    JMP FINISH_DIGIT_CHECK_SUFFER

DIGIT_NOT_IN_SECRET_SUFFER:
    ; Track W status for the digit (Incorrect number)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to W if not already R or C (maintain priority: R > C > W)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_SUFFER
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_SUFFER
    
    ; Only set to W if not already W (prevent double counting)
    CMP BYTE PTR [BX], 'W'
    JE FINISH_DIGIT_CHECK_SUFFER
    MOV BYTE PTR [BX], 'W'
    INC CHAT_DIGIT_W_COUNT
    
FINISH_DIGIT_CHECK_SUFFER:
    POP AX
    POP SI
    
NOT_CORRECT_DONE_SUFFER:
    INC SI
    LOOP CHECK_DIGITS_SUFFER
    
    INC GUESS_COUNT
    
    ; Compare correct digits with code length
    CMP BL, CODE_LENGTH
    JE GAME_WON_TIME
    
    ; Show feedback
    CALL SHOW_FEEDBACK
    
    ; Reset timer for next guess
    CALL GET_TIME_SECONDS
    MOV TIME_START, AX
    
    JMP SUFFER_GAME_LOOP
    
INVALID_INPUT_SUFFER:
    LEA DX, INVALID_GUESS
    CALL PRINT_STRING
    
    ; Reset timer for next guess attempt
    CALL GET_TIME_SECONDS
    MOV TIME_START, AX
    
    JMP SUFFER_GAME_LOOP
    
; INSTANT DEATH MODE: Limited time for entire game
INSTANT_DEATH_MODE:
    LEA DX, GUESS_PROMPT
    CALL PRINT_STRING
    
    ; Read input (could be a guess or keyword)
    LEA DX, PLAYER_GUESS
    MOV AH, 0AH
    INT 21H
    
    ; Check if overall timer expired
    CALL GET_TIME_SECONDS
    MOV CURRENT_TIME, AX
    SUB AX, START_TIME
    CMP AX, TIME_LIMIT
    JB DEATH_TIME_OK
    
    ; Time expired - instant death
    LEA DX, DEATH_MSG
    CALL PRINT_STRING
    
    ; Update game statistics - count as loss
    INC TOTAL_GAMES_INT
    INC LOSSES_INT
    
    MOV TIMER_ACTIVE, 0
    POP DX
    POP CX
    POP BX
    POP AX
    RET

DEATH_TIME_OK:
    ; Check if the input might be a keyword
    MOV AL, PLAYER_GUESS+1  ; Get actual length of input
    CMP AL, 4               ; "chat" or "quit" length
    JE MAYBE_KEYWORD_DEATH
    CMP AL, 5               ; "guide" length
    JE MAYBE_KEYWORD_DEATH
    CMP AL, 5               ; "rules" length
    JE MAYBE_KEYWORD_DEATH
    CMP AL, 7               ; "mystery" length
    JE MAYBE_KEYWORD_DEATH
    JMP VALIDATE_DEATH_INPUT  ; If not a potential keyword, validate as a guess
    
MAYBE_KEYWORD_DEATH:
    ; Save the registers we'll need
    PUSH SI
    PUSH DI
    
    ; Convert input to lowercase for comparison
    MOV CX, 0
    MOV CL, [PLAYER_GUESS+1]  ; Get actual length
    MOV SI, OFFSET PLAYER_GUESS+2
    
CONVERT_TO_LC_DEATH:
    MOV AL, [SI]  ; Get character
    
    ; Convert uppercase to lowercase
    CMP AL, 'A'
    JB SKIP_LC_CONVERT_DEATH
    CMP AL, 'Z'
    JA SKIP_LC_CONVERT_DEATH
    ADD AL, 32  ; Convert to lowercase
    MOV [SI], AL
    
SKIP_LC_CONVERT_DEATH:
    INC SI
    LOOP CONVERT_TO_LC_DEATH
    
    ; Now compare with known keywords
    ; Check for "chat"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET CHAT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_CHAT_KEYWORD_DEATH
    
    ; Check for "guide"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET GUIDE_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_GUIDE_KEYWORD_DEATH
    
    ; Check for "rules"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET RULES_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_RULES_KEYWORD_DEATH
      ; Check for "mystery"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET MYSTERY_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_MYSTERY_KEYWORD_DEATH
    
    ; Check for "quit"
    LEA SI, PLAYER_GUESS+2
    MOV DI, OFFSET QUIT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_QUIT_KEYWORD_DEATH
    
    ; If we get here, it's not a recognized keyword
    POP DI
    POP SI
    JMP VALIDATE_DEATH_INPUT
    
HANDLE_CHAT_KEYWORD_DEATH:
    POP DI
    POP SI
    ; Call chat procedure
    CALL PROCESS_CHAT
    LEA DX, CHAT_MSG
    CALL PRINT_STRING
    JMP INSTANT_DEATH_MODE
    
HANDLE_GUIDE_KEYWORD_DEATH:
    POP DI
    POP SI
    ; Display game guide
    CALL SHOW_GAME_GUIDE
    JMP INSTANT_DEATH_MODE
    
HANDLE_RULES_KEYWORD_DEATH:
    POP DI
    POP SI
    ; Death mode rules
    LEA DX, TIME_RULES_DEATH
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, TIME_RULES_DEATH2
    CALL PRINT_STRING
    
    ; Print newline for better formatting
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    JMP INSTANT_DEATH_MODE
    
HANDLE_MYSTERY_KEYWORD_DEATH:
    POP DI
    POP SI
    ; Call the new REVEAL_MYSTERY_DIGIT procedure
    CALL REVEAL_MYSTERY_DIGIT
    JMP INSTANT_DEATH_MODE

HANDLE_QUIT_KEYWORD_DEATH:
    POP DI
    POP SI
    ; Reset all chat variables since user is quitting
    CALL RESET_CHAT_VARIABLES
    
    ; Display quit message
    LEA DX, QUIT_GAME_MSG
    CALL PRINT_STRING
    
    ; Display press any key message
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Calculate time played before quitting
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update game statistics - count as loss
    INC TOTAL_GAMES_INT
    INC LOSSES_INT
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    ; Turn off timer
    MOV TIMER_ACTIVE, 0
    
    ; Return to dashboard
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
VALIDATE_DEATH_INPUT:    ; Check if input length matches the required code length
    MOV AL, PLAYER_GUESS+1
    CMP AL, CODE_LENGTH
    JNE INVALID_INPUT_DEATH
    
    ; Increment chat acknowledgement counter for valid guess
    INC CHAT_ACK_COUNT
    
    ; Check if guess is correct
    XOR CX, CX
    MOV CL, CODE_LENGTH
    MOV SI, 0
    MOV BL, 0             ; Counter for correct digits
      ; Store current RWC counts before resetting
    CALL SAVE_CHAT_COUNTS
    
    ; Reset R,C,W count for this guess
    MOV CHAT_DIGIT_R_COUNT, 0
    MOV CHAT_DIGIT_C_COUNT, 0
    MOV CHAT_DIGIT_W_COUNT, 0
    
CHECK_DIGITS_DEATH:
    MOV AL, PLAYER_GUESS[SI+2]
    SUB AL, '0'
    
    ; Track digit count for chat feature
    CMP AL, 0
    JNE @NOT_DIGIT_0_DEATH
    INC CHAT_DIGIT_0_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_0_DEATH:
    CMP AL, 1
    JNE @NOT_DIGIT_1_DEATH
    INC CHAT_DIGIT_1_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_1_DEATH:
    CMP AL, 2
    JNE @NOT_DIGIT_2_DEATH
    INC CHAT_DIGIT_2_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_2_DEATH:
    CMP AL, 3
    JNE @NOT_DIGIT_3_DEATH
    INC CHAT_DIGIT_3_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_3_DEATH:
    CMP AL, 4
    JNE @NOT_DIGIT_4_DEATH
    INC CHAT_DIGIT_4_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_4_DEATH:
    CMP AL, 5
    JNE @NOT_DIGIT_5_DEATH
    INC CHAT_DIGIT_5_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_5_DEATH:
    CMP AL, 6
    JNE @NOT_DIGIT_6_DEATH
    INC CHAT_DIGIT_6_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_6_DEATH:
    CMP AL, 7
    JNE @NOT_DIGIT_7_DEATH
    INC CHAT_DIGIT_7_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_7_DEATH:
    CMP AL, 8
    JNE @NOT_DIGIT_8_DEATH
    INC CHAT_DIGIT_8_COUNT
    JMP @CONTINUE_COUNT_DEATH
@NOT_DIGIT_8_DEATH:
    INC CHAT_DIGIT_9_COUNT
    
@CONTINUE_COUNT_DEATH:
    CMP AL, SECRET_CODE[SI]
    JNE NOT_CORRECT_DEATH
    INC BL
    
    ; Track R status for the digit (Correct number, Correct position)
    PUSH AX
    PUSH BX
    
    MOV AH, 0  ; Clear high byte
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX  ; AX contains our digit 0-9
    
    ; Only set to R if not already R (avoid double counting)
    CMP BYTE PTR [BX], 'R'
    JE SKIP_R_COUNT_DEATH
    MOV BYTE PTR [BX], 'R'
    INC CHAT_DIGIT_R_COUNT

SKIP_R_COUNT_DEATH:
    
    POP BX
    POP AX
    JMP NOT_CORRECT_DONE_DEATH
    
NOT_CORRECT_DEATH:
    ; Check if the digit exists elsewhere in the secret code
    PUSH SI
    PUSH AX
    MOV DI, 0
    MOV AH, 0  ; Clear high byte

CHECK_IN_SECRET_DEATH:
    MOV DL, CODE_LENGTH
    MOV DH, 0
    CMP DI, DX
    JE DIGIT_NOT_IN_SECRET_DEATH
    CMP AL, SECRET_CODE[DI]
    JE DIGIT_IN_SECRET_DEATH
    INC DI
    JMP CHECK_IN_SECRET_DEATH
    
DIGIT_IN_SECRET_DEATH:
    ; Track C status (Correct number, Wrong position)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to C if not already R (R takes precedence)
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_DEATH
    
    ; Only set to C if not already C (prevent double counting)
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_DEATH
    MOV BYTE PTR [BX], 'C'
    INC CHAT_DIGIT_C_COUNT
    JMP FINISH_DIGIT_CHECK_DEATH
    
DIGIT_NOT_IN_SECRET_DEATH:
    ; Track W status (Wrong number)
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, AX
    
    ; Only set to W if not already R or C
    CMP BYTE PTR [BX], 'R'
    JE FINISH_DIGIT_CHECK_DEATH
    CMP BYTE PTR [BX], 'C'
    JE FINISH_DIGIT_CHECK_DEATH
    
    ; Only set to W if not already W (prevent double counting)
    CMP BYTE PTR [BX], 'W'
    JE FINISH_DIGIT_CHECK_DEATH
    MOV BYTE PTR [BX], 'W'
    INC CHAT_DIGIT_W_COUNT
    
FINISH_DIGIT_CHECK_DEATH:
    POP AX
    POP SI
    
NOT_CORRECT_DONE_DEATH:
    INC SI
    LOOP CHECK_DIGITS_DEATH
    
    INC GUESS_COUNT
    
    ; Compare correct digits with code length
    CMP BL, CODE_LENGTH
    JE GAME_WON_TIME
    
    ; Show feedback
    CALL SHOW_FEEDBACK
    
    JMP INSTANT_DEATH_MODE
    
INVALID_INPUT_DEATH:
    LEA DX, INVALID_GUESS
    CALL PRINT_STRING
    JMP INSTANT_DEATH_MODE
    
GAME_WON_TIME:
    ; Get end time in seconds
    CALL GET_TIME_SECONDS
    MOV END_TIME, AX
    
    ; Calculate duration
    MOV AX, END_TIME
    SUB AX, START_TIME
    MOV GAME_DURATION, AX
    
    ; Add to total time played
    ADD TOTAL_TIME_PLAYED, AX
    
    ; Update statistics
    INC TOTAL_GAMES_INT
    INC WINS_INT
    MOV AL, GUESS_COUNT
    CBW
    ADD TOTAL_ATTEMPTS, AX
    
    ; Update top scores
    CALL UPDATE_TOP_SCORES
    
    ; Check if player should get a Mystery Pass (every 3 wins)
    MOV AX, WINS_INT
    MOV BL, 3
    DIV BL
    CMP AH, 0  ; Check if the remainder is 0 (divisible by 3)
    JNE NO_NEW_MYSTERY_PASS_TIME
    
    ; Award a new Mystery Pass if divisible by 3
    INC MYSTERY_PASS_COUNT
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, MYSTERY_PASS_WIN
    CALL PRINT_STRING
    
NO_NEW_MYSTERY_PASS_TIME:
    
    ; Show success message
    LEA DX, SUCCESS_GAME_MSG
    CALL PRINT_STRING
    
    ; Show appropriate victory message based on punishment type
    CMP TIME_PUNISH_TYPE, 2
    JNE SUFFER_VICTORY
    
    ; Instant death victory message
    LEA DX, SURVIVE_MSG
    CALL PRINT_STRING
    JMP GAME_END_TIME
    
SUFFER_VICTORY:
    ; No additional message needed for suffer mode
    
GAME_END_TIME:
    ; Clear any keyboard buffer
    MOV AH, 0CH
    MOV AL, 0
    INT 21H
    
    ; Wait for a keypress to confirm win before returning to dashboard
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    ; Wait for a keypress to confirm win before returning to dashboard
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, PRESS_CONTINUE_MSG
    CALL PRINT_STRING
    
    ; Wait for a key press
    MOV AH, 1
    INT 21H
    
    MOV TIMER_ACTIVE, 0
    
TIME_MODE_EXIT:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
TIME_MODE_GAME ENDP

GENERATE_SECRET_CODE PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    
    ; Generate random seed
    MOV AH, 2CH
    INT 21H
    MOV AL, DL
    MUL DH
    MOV SEED, AX
    
    ; Generate secret code
    XOR CX, CX
    MOV CL, CODE_LENGTH    ; Use variable length
    LEA SI, SECRET_CODE
    
GEN_DIGIT_LOOP:
    ; LCG Algorithm: next = (a * seed + c) mod m
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 0-9
    MOV DX, 0
    MOV BX, 10
    DIV BX
    MOV [SI], DL
    INC SI
    LOOP GEN_DIGIT_LOOP
    
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
GENERATE_SECRET_CODE ENDP

SHOW_FEEDBACK PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Use the predefined SPACES variable instead of a loop
    LEA DX, SPACES
    CALL PRINT_STRING
    
    ; Now print the feedback codes (R, W, C) in one line
    XOR CX, CX
    MOV CL, CODE_LENGTH
    MOV SI, 0
    
PRINT_FEEDBACK:
    ; For each position, determine R, W, or C
    MOV AL, PLAYER_GUESS[SI+2]
    SUB AL, '0'
    
    ; Check if correct position (R)
    CMP AL, SECRET_CODE[SI]
    JNE CHECK_ELSEWHERE
    
    ; Found R (Correct number, Correct position)
    MOV DL, 'R'
    MOV AH, 2
    INT 21H
    JMP NEXT_POSITION
    
CHECK_ELSEWHERE:
    ; Check if number exists elsewhere (C)
    PUSH SI
    MOV BX, 0
    
CHECK_OTHER_POS:
    CMP BL, CODE_LENGTH
    JE NUMBER_NOT_FOUND
    CMP AL, SECRET_CODE[BX]
    JE NUMBER_FOUND
    INC BX
    JMP CHECK_OTHER_POS
    
NUMBER_FOUND:
    POP SI
    ; Found C (Correct number, Wrong position)
    MOV DL, 'C'
    MOV AH, 2
    INT 21H
    JMP NEXT_POSITION
    
NUMBER_NOT_FOUND:
    POP SI
    ; Found W (Incorrect number)
    MOV DL, 'W'
    MOV AH, 2
    INT 21H
    
NEXT_POSITION:
    INC SI
    LOOP PRINT_FEEDBACK
    
    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show keywords prompt instead of feedback legend
    LEA DX, KEYWORDS_PROMPT
    CALL PRINT_STRING
    
    ; Print newline at end
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
SHOW_FEEDBACK ENDP

PROCESS_KEYWORDS PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
    
    ; Read keyword input
    LEA DX, MYSTERY_PASS_INPUT  ; Reusing the buffer for keywords
    MOV AH, 0AH
    INT 21H
    
    ; Check if no input (just ENTER key)
    CMP BYTE PTR [MYSTERY_PASS_INPUT+1], 0
    JE KEYWORD_DONE
    
    ; Convert input to lowercase for easier comparison
    MOV SI, OFFSET MYSTERY_PASS_INPUT+2
    MOV CX, 0
    MOV CL, [MYSTERY_PASS_INPUT+1]  ; Get actual length
    
CONVERT_LOOP:
    MOV AL, [SI]  ; Get character
    
    ; Convert uppercase to lowercase
    CMP AL, 'A'
    JB SKIP_CONVERT
    CMP AL, 'Z'
    JA SKIP_CONVERT
    ADD AL, 32  ; Convert to lowercase (A=65, a=97)
    MOV [SI], AL
    
SKIP_CONVERT:
    INC SI
    LOOP CONVERT_LOOP
    
    ; Now compare with known keywords
    ; Check for "chat"
    LEA SI, MYSTERY_PASS_INPUT+2
    MOV DI, OFFSET CHAT_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_CHAT
    
    ; Check for "guide"
    LEA SI, MYSTERY_PASS_INPUT+2
    MOV DI, OFFSET GUIDE_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_GUIDE
    
    ; Check for "rules"
    LEA SI, MYSTERY_PASS_INPUT+2
    MOV DI, OFFSET RULES_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_RULES
    
    ; Check for "mystery"
    LEA SI, MYSTERY_PASS_INPUT+2
    MOV DI, OFFSET MYSTERY_KEYWORD
    CALL COMPARE_KEYWORDS
    JNC HANDLE_MYSTERY
    
    ; If no keyword matched, show error
    LEA DX, KEYWORD_ERROR
    CALL PRINT_STRING
    JMP KEYWORD_DONE
    
HANDLE_CHAT:
    ; Display "coming soon" message
    LEA DX, CHAT_MSG
    CALL PRINT_STRING
    JMP KEYWORD_DONE
    
HANDLE_GUIDE:
    ; Display game guide
    CALL SHOW_GAME_GUIDE
    JMP KEYWORD_DONE
    
HANDLE_RULES:
    ; Display rules for current game mode
    CMP MODE_SELECT, 1
    JE SHOW_NORMAL_RULES
    CMP MODE_SELECT, 2
    JE SHOW_MUTATION_RULES
    CMP MODE_SELECT, 3
    JE SHOW_TIME_RULES
    JMP KEYWORD_DONE
    
SHOW_NORMAL_RULES:
    ; Display rules for normal mode
    LEA DX, NORMAL_RULES
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
      ; Display the rest of the rule text
    LEA DX, NORMAL_RULES2
    CALL PRINT_STRING
    
    ; Print newline before returning
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    JMP KEYWORD_DONE
    
SHOW_MUTATION_RULES:
    LEA DX, MUTATION_RULES
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, MUTATION_RULES2
    CALL PRINT_STRING
    
    ; Display mutation sequence
    MOV DL, MUTATION_SEQ
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, MUTATION_RULES3
    CALL PRINT_STRING
    JMP KEYWORD_DONE
    
SHOW_TIME_RULES:
    ; Check punishment type
    CMP TIME_PUNISH_TYPE, 1
    JE SHOW_SUFFER_RULES
    
    ; Death mode rules
    LEA DX, TIME_RULES_DEATH
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, TIME_RULES_DEATH2
    CALL PRINT_STRING
    JMP KEYWORD_DONE
    
SHOW_SUFFER_RULES:
    ; Suffer mode rules
    LEA DX, TIME_RULES_SUFFER
    CALL PRINT_STRING
    
    ; Display code length
    MOV DL, CODE_LENGTH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    LEA DX, TIME_RULES_SUFFER2
    CALL PRINT_STRING
    JMP KEYWORD_DONE
    
HANDLE_MYSTERY:
    ; Call the new REVEAL_MYSTERY_DIGIT procedure
    CALL REVEAL_MYSTERY_DIGIT
    JMP KEYWORD_DONE
    
KEYWORD_DONE:
    ; Newline for better formatting
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
PROCESS_KEYWORDS ENDP

SHOW_GAME_GUIDE PROC
    PUSH AX
    PUSH DX
    
    ; Display the guide at the start of the game
    LEA DX, GUIDE_LEGEND1
    CALL PRINT_STRING
    LEA DX, GUIDE_LEGEND2
    CALL PRINT_STRING
    LEA DX, GUIDE_LEGEND3
    CALL PRINT_STRING
    LEA DX, GUIDE_LEGEND4
    CALL PRINT_STRING
    
    ; Print a newline at end
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show keywords prompt
    LEA DX, KEYWORDS_PROMPT
    CALL PRINT_STRING
    
    ; Print another newline
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    POP DX
    POP AX
    RET
SHOW_GAME_GUIDE ENDP

DISPLAY_STATISTICS PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Display statistics header
    LEA DX, STATS_HEADER
    CALL PRINT_STRING
    
    ; Display player name with apostrophe + "statistics" instead of old format
    LEA DX, STATS_PREFIX
    CALL PRINT_STRING
    
    ; Show the appropriate player name based on who's logged in
    CMP CURRENT_PLAYER, 1
    JE DISPLAY_PLAYER1_NAME
    CMP CURRENT_PLAYER, 2
    JE DISPLAY_PLAYER2_NAME
    CMP CURRENT_PLAYER, 3
    JE DISPLAY_PLAYER3_NAME
    CMP IS_GUEST_MODE, 1
    JE DISPLAY_GUEST_NAME
    JMP DISPLAY_NAME_DONE
    
DISPLAY_PLAYER1_NAME:
    LEA DX, USER1
    CALL PRINT_STRING
    JMP DISPLAY_NAME_END
    
DISPLAY_PLAYER2_NAME:
    LEA DX, USER2
    CALL PRINT_STRING
    JMP DISPLAY_NAME_END
    
DISPLAY_PLAYER3_NAME:
    LEA DX, USER3
    CALL PRINT_STRING
    JMP DISPLAY_NAME_END
    
DISPLAY_GUEST_NAME:
    LEA DX, GUEST_GAMERTAG
    CALL PRINT_STRING
    JMP DISPLAY_NAME_END
    
DISPLAY_NAME_END:
    LEA DX, STATS_SUFFIX
    CALL PRINT_STRING
    
DISPLAY_NAME_DONE:
    LEA DX, STATS_FOOTER
    CALL PRINT_STRING
    
    ; Display total games
    LEA DX, GAMES_PLAYED
    CALL PRINT_STRING
    MOV AX, TOTAL_GAMES_INT
    CALL DISPLAY_NUMBER
    
    ; Display wins
    LEA DX, GAMES_WON
    CALL PRINT_STRING
    MOV AX, WINS_INT
    CALL DISPLAY_NUMBER
    
    ; Display losses
    LEA DX, GAMES_LOST
    CALL PRINT_STRING
    MOV AX, LOSSES_INT
    CALL DISPLAY_NUMBER
    
    ; Display average attempts
    LEA DX, AVG_ATTEMPTS
    CALL PRINT_STRING
    
    CMP TOTAL_GAMES_INT, 0
    JE NO_GAMES
    
    MOV AX, TOTAL_ATTEMPTS
    CWD
    MOV BX, TOTAL_GAMES_INT
    DIV BX
    CALL DISPLAY_NUMBER
    
    ; Display total time played
    LEA DX, TIME_PLAYED_MSG
    CALL PRINT_STRING
    
    MOV AX, TOTAL_TIME_PLAYED
    CALL DISPLAY_NUMBER
    
    LEA DX, SECONDS_MSG
    CALL PRINT_STRING
    
    ; Show top scores for all modes
    CALL SHOW_ALL_TOP_SCORES
    JMP STATS_DONE
    
NO_GAMES:
    LEA DX, NO_STATS_MSG
    CALL PRINT_STRING
    
STATS_DONE:
    ; Add "press any key" message
    LEA DX, PRESS_KEY_MSG
    CALL PRINT_STRING
    
    ; Wait for keypress
    MOV AH, 0
    INT 16H
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_STATISTICS ENDP

SHOW_ALL_TOP_SCORES PROC
    PUSH AX
    PUSH BX
    PUSH DX
    
    ; Always show Normal Mode Header
    LEA DX, NORMAL_HEADER
    CALL PRINT_STRING

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show Normal Mode top score (or "No records found")
    CMP NORMAL_TOP1, 9999
    JE NORMAL_NO_RECORD1
    
    ; Display top 1 score
    MOV AX, NORMAL_TOP1
    CALL SHOW_SCORE
    JMP CHECK_NORMAL_TOP2
    
NORMAL_NO_RECORD1:
    ; Display "No records found" message for top 1
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_NORMAL_TOP2:
    ; Show Normal Mode second score (or "No records found")
    CMP NORMAL_TOP2, 9999
    JE NORMAL_NO_RECORD2
    
    ; Display top 2 score
    MOV AX, NORMAL_TOP2
    CALL SHOW_SCORE
    JMP CHECK_NORMAL_TOP3
    
NORMAL_NO_RECORD2:
    ; Display "No records found" message for top 2
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_NORMAL_TOP3:
    ; Show Normal Mode third score (or "No records found")
    CMP NORMAL_TOP3, 9999
    JE NORMAL_NO_RECORD3
    
    ; Display top 3 score
    MOV AX, NORMAL_TOP3
    CALL SHOW_SCORE
    JMP CHECK_MUTATION_SCORES
    
NORMAL_NO_RECORD3:
    ; Display "No records found" message for top 3
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_MUTATION_SCORES:
    ; Always show Mutation Mode Header
    LEA DX, MUTATION_HEADER
    CALL PRINT_STRING

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show Mutation Mode top score (or "No records found")
    CMP MUTATION_TOP1, 9999
    JE MUTATION_NO_RECORD1
    
    ; Display top 1 score
    MOV AX, MUTATION_TOP1
    CALL SHOW_SCORE
    JMP CHECK_MUTATION_TOP2
    
MUTATION_NO_RECORD1:
    ; Display "No records found" message for top 1
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING

CHECK_MUTATION_TOP2:
    ; Show Mutation Mode second score (or "No records found")
    CMP MUTATION_TOP2, 9999
    JE MUTATION_NO_RECORD2
    
    ; Display top 2 score
    MOV AX, MUTATION_TOP2
    CALL SHOW_SCORE
    JMP CHECK_MUTATION_TOP3
    
MUTATION_NO_RECORD2:
    ; Display "No records found" message for top 2
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_MUTATION_TOP3:
    ; Show Mutation Mode third score (or "No records found")
    CMP MUTATION_TOP3, 9999
    JE MUTATION_NO_RECORD3
    
    ; Display top 3 score
    MOV AX, MUTATION_TOP3
    CALL SHOW_SCORE
    JMP CHECK_TIME_SCORES
    
MUTATION_NO_RECORD3:
    ; Display "No records found" message for top 3
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_TIME_SCORES:
    ; Always show Time Mode Header
    LEA DX, TIME_HEADER
    CALL PRINT_STRING

    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show Time Mode top score (or "No records found")
    CMP TIME_TOP1, 9999
    JE TIME_NO_RECORD1
    
    ; Display top 1 score
    MOV AX, TIME_TOP1
    CALL SHOW_SCORE
    JMP CHECK_TIME_TOP2
    
TIME_NO_RECORD1:
    ; Display "No records found" message for top 1
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_TIME_TOP2:
    ; Show Time Mode second score (or "No records found")
    CMP TIME_TOP2, 9999
    JE TIME_NO_RECORD2
    
    ; Display top 2 score
    MOV AX, TIME_TOP2
    CALL SHOW_SCORE
    JMP CHECK_TIME_TOP3
    
TIME_NO_RECORD2:
    ; Display "No records found" message for top 2
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
CHECK_TIME_TOP3:
    ; Show Time Mode third score (or "No records found")
    CMP TIME_TOP3, 9999
    JE TIME_NO_RECORD3
    
    ; Display top 3 score
    MOV AX, TIME_TOP3
    CALL SHOW_SCORE
    JMP SCORES_DONE
    
TIME_NO_RECORD3:
    ; Display "No records found" message for top 3
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
    ; Add extra line after time mode section
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
SCORES_DONE:
    POP DX
    POP BX
    POP AX
    RET
SHOW_ALL_TOP_SCORES ENDP

SHOW_SCORE PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Save the score value immediately to BX as a temporary variable
    MOV BX, AX
    
    ; Check if the score is valid (not 9999)
    CMP BX, 9999
    JE NO_SCORE_YET
      ; Display "You cracked a X-digit code within Y seconds" in one simple line
    LEA DX, CODE_CRACKED_MSG
    CALL PRINT_STRING
      ; First check if this is a mutation mode or time mode score
    CMP BX, MUTATION_TOP1
    JE USE_MUTATION1_LENGTH
    CMP BX, MUTATION_TOP2
    JE USE_MUTATION2_LENGTH
    CMP BX, MUTATION_TOP3
    JE USE_MUTATION3_LENGTH
    CMP BX, TIME_TOP1
    JE USE_TIME1_LENGTH
    CMP BX, TIME_TOP2
    JE USE_TIME2_LENGTH
    CMP BX, TIME_TOP3
    JE USE_TIME3_LENGTH
    
    ; Not a mutation or time mode score, so print based on current player
    CMP CURRENT_PLAYER, 1
    JE USE_P1_LENGTH
    CMP CURRENT_PLAYER, 2
    JE USE_P2_LENGTH
    CMP CURRENT_PLAYER, 3
    JE USE_P3_LENGTH
    
    ; If we reach here, it's either guest mode or fallback
    CMP IS_GUEST_MODE, 1
    JNE USE_DEFAULT_CODE_LENGTH
    CMP USE_CUSTOM_LENGTH, 1
    JNE USE_DEFAULT_CODE_LENGTH
    
    ; Use custom code length for guest
    MOV DL, CUSTOM_CODE_LENGTH
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_MUTATION1_LENGTH:
    ; For mutation mode top 1, use stored code length
    MOV DL, MUTATION_LENGTH1
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH

USE_MUTATION2_LENGTH:
    ; For mutation mode top 2, use stored code length
    MOV DL, MUTATION_LENGTH2
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_MUTATION3_LENGTH:
    ; For mutation mode top 3, use stored code length
    MOV DL, MUTATION_LENGTH3
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_TIME1_LENGTH:
    ; For time mode top 1, use stored code length
    MOV DL, TIME_LENGTH1
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_TIME2_LENGTH:
    ; For time mode top 2, use stored code length
    MOV DL, TIME_LENGTH2
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_TIME3_LENGTH:
    ; For time mode top 3, use stored code length
    MOV DL, TIME_LENGTH3
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_P1_LENGTH:
    MOV DL, P1_CODE_LENGTH
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_P2_LENGTH:
    MOV DL, P2_CODE_LENGTH
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_P3_LENGTH:
    MOV DL, P3_CODE_LENGTH
    ADD DL, '0'
    JMP PRINT_CODE_LENGTH
    
USE_DEFAULT_CODE_LENGTH:
    MOV DL, '4'   ; Default code length is 4
    
PRINT_CODE_LENGTH:
    MOV AH, 2
    INT 21H
    
    ; Print "-digit code within "
    LEA DX, DIGIT_MSG
    CALL PRINT_STRING
    
    ; Retrieve the score value from BX back to AX before displaying
    MOV AX, BX
    
    ; Print the score value (time in seconds)
    CALL DISPLAY_NUMBER
    
    ; Print " seconds"
    LEA DX, SECONDS_MSG
    CALL PRINT_STRING    ; Check if this is a Time Mode score (for additional info display)
    CMP BX, TIME_TOP1
    JE TIME_SCORE_1
    CMP BX, TIME_TOP2
    JE TIME_SCORE_2
    CMP BX, TIME_TOP3
    JE TIME_SCORE_3
    JMP SCORE_DISPLAY_DONE
    
TIME_SCORE_1:
    ; For Time Mode score 1, check its punishment type is Suffer (1)
    CMP TIME_PUNISH1, 1
    JE SUFFER_DISPLAY_1
    ; Otherwise it must be Instant Death (2)
    JMP DEATH_OVERCOME_DISPLAY_1
    
SUFFER_DISPLAY_1:
    ; Display suffer count for Suffer punishment
    LEA DX, SUFFER_ENDURE_MSG
    CALL PRINT_STRING
    
    MOV AX, TIME_SUFFER1
    CALL DISPLAY_NUMBER
    
    LEA DX, SUFFER_COUNT_MSG
    CALL PRINT_STRING
    JMP SCORE_DISPLAY_DONE
    
DEATH_OVERCOME_DISPLAY_1:
    ; Display "overcoming your death" for Instant Death punishment
    LEA DX, DEATH_OVERCOME_MSG
    CALL PRINT_STRING
    JMP SCORE_DISPLAY_DONE
    
TIME_SCORE_2:
    ; For Time Mode score 2, check its punishment type is Suffer (1)
    CMP TIME_PUNISH2, 1
    JE SUFFER_DISPLAY_2
    ; Otherwise it must be Instant Death (2)
    JMP DEATH_OVERCOME_DISPLAY_2
    
SUFFER_DISPLAY_2:
    ; Display suffer count for Suffer punishment
    LEA DX, SUFFER_ENDURE_MSG
    CALL PRINT_STRING
    
    MOV AX, TIME_SUFFER2
    CALL DISPLAY_NUMBER
    
    LEA DX, SUFFER_COUNT_MSG
    CALL PRINT_STRING
    JMP SCORE_DISPLAY_DONE
    
DEATH_OVERCOME_DISPLAY_2:
    ; Display "overcoming your death" for Instant Death punishment
    LEA DX, DEATH_OVERCOME_MSG
    CALL PRINT_STRING
    JMP SCORE_DISPLAY_DONE
    
TIME_SCORE_3:
    ; For Time Mode score 3, check its punishment type is Suffer (1)
    CMP TIME_PUNISH3, 1
    JE SUFFER_DISPLAY_3
    ; Otherwise it must be Instant Death (2)
    JMP DEATH_OVERCOME_DISPLAY_3
    
SUFFER_DISPLAY_3:
    ; Display suffer count for Suffer punishment
    LEA DX, SUFFER_ENDURE_MSG
    CALL PRINT_STRING
    
    MOV AX, TIME_SUFFER3
    CALL DISPLAY_NUMBER
    
    LEA DX, SUFFER_COUNT_MSG
    CALL PRINT_STRING
    JMP SCORE_DISPLAY_DONE
    
DEATH_OVERCOME_DISPLAY_3:
    ; Display "overcoming your death" for Instant Death punishment
    LEA DX, DEATH_OVERCOME_MSG
    CALL PRINT_STRING
    
SCORE_DISPLAY_DONE:
    JMP SCORE_SHOWN
    
NO_SCORE_YET:
    LEA DX, NO_RECORD_MSG
    CALL PRINT_STRING
    
    ; Print a newline
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
SCORE_SHOWN:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
SHOW_SCORE ENDP

UPDATE_TOP_SCORES PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    MOV AX, GAME_DURATION
    
    ; Check which mode updating
    CMP MODE_SELECT, 1
    JE UPDATE_NORMAL
    CMP MODE_SELECT, 2
    JE UPDATE_MUTATION
    CMP MODE_SELECT, 3
    JE UPDATE_TIME
    JMP UPDATE_DONE  ; Skip updating if not a valid mode
    
UPDATE_NORMAL:
    ; Set up pointers for normal mode scores
    MOV BX, OFFSET NORMAL_TOP1
    JMP DO_UPDATE
    
UPDATE_MUTATION:
    ; Set up pointers for mutation mode
    MOV BX, OFFSET MUTATION_TOP1
    JMP DO_UPDATE

UPDATE_TIME:
    ; Set up pointers for time mode
    MOV BX, OFFSET TIME_TOP1
    
    ; Make sure we properly store the current punishment type for later reference
    ; This ensures that when we display scores, we know which mode they came from
DO_UPDATE:
    ; BX points to TOP1 score
    ; Compare with top 1
    CMP AX, [BX]
    JAE @CHECK_TOP2  ; If score >= TOP1, check TOP2
      ; New top 1 - shift all scores down
    PUSH AX
    MOV AX, [BX]       ; Get current TOP1
    MOV CX, [BX+2]     ; Save current TOP2 temporarily
    MOV [BX+2], AX     ; Current TOP1 → TOP2
    MOV AX, CX         ; Get saved TOP2
    MOV [BX+4], AX     ; Current TOP2 → TOP3
    
    ; For Normal Mode, shift the code lengths
    CMP MODE_SELECT, 1
    JNE @CHECK_MUTATION_SHIFT1
    MOV CL, NORMAL_LENGTH1
    MOV NORMAL_LENGTH2, CL
    MOV CL, NORMAL_LENGTH2
    MOV NORMAL_LENGTH3, CL
    JMP @SHIFT_MODE_SPECIFIC1
    
@CHECK_MUTATION_SHIFT1:
    ; For Mutation Mode, shift the code lengths
    CMP MODE_SELECT, 2
    JNE @CHECK_TIME_SHIFT1
    MOV CL, MUTATION_LENGTH1
    MOV MUTATION_LENGTH2, CL
    MOV CL, MUTATION_LENGTH2
    MOV MUTATION_LENGTH3, CL
    JMP @SHIFT_MODE_SPECIFIC1
    
@CHECK_TIME_SHIFT1:
    ; For Time Mode, shift the code lengths, punishment types and suffer counts
    CMP MODE_SELECT, 3
    JNE @SHIFT_MODE_SPECIFIC1
    
    ; Shift code lengths
    MOV CL, TIME_LENGTH1
    MOV TIME_LENGTH2, CL
    MOV CL, TIME_LENGTH2
    MOV TIME_LENGTH3, CL
    
    ; Shift punishment types
    MOV CL, TIME_PUNISH1
    MOV TIME_PUNISH2, CL
    MOV CL, TIME_PUNISH2
    MOV TIME_PUNISH3, CL
    
    ; Shift suffer counts (only relevant for Suffer punishment)
    MOV CX, TIME_SUFFER1
    MOV TIME_SUFFER2, CX
    MOV CX, TIME_SUFFER2
    MOV TIME_SUFFER3, CX
    
@SHIFT_MODE_SPECIFIC1:
    POP AX
    MOV [BX], AX       ; New score → TOP1
    ; Store current code length based on mode
    CMP MODE_SELECT, 1
    JNE @CHECK_MUTATION_STORE1
    MOV CL, CODE_LENGTH
    MOV NORMAL_LENGTH1, CL
    JMP UPDATE_DONE
    
@CHECK_MUTATION_STORE1:
    CMP MODE_SELECT, 2
    JNE @CHECK_TIME_STORE1
    MOV CL, CODE_LENGTH
    MOV MUTATION_LENGTH1, CL
    JMP UPDATE_DONE
    
@CHECK_TIME_STORE1:
    ; For Time Mode, store the current code length, punishment type and suffer count in position 1
    CMP MODE_SELECT, 3
    JNE UPDATE_DONE
    
    ; Store code length
    MOV CL, CODE_LENGTH
    MOV TIME_LENGTH1, CL
    
    ; Store punishment type
    MOV CL, TIME_PUNISH_TYPE
    MOV TIME_PUNISH1, CL
    
    CMP CL, 1          ; Is it Suffer Mode?
    JE @SET_SUFFER1
    ; Explicitly set it as Instant Death (2)
    MOV TIME_PUNISH1, 2
    JMP UPDATE_DONE
    
@SET_SUFFER1:
    MOV CX, SUFFER_COUNT
    MOV TIME_SUFFER1, CX
    
    JMP UPDATE_DONE
    
@CHECK_TOP2:
    ; Compare with top 2
    CMP AX, [BX+2]
    JAE @CHECK_TOP3  ; If score >= TOP2, check TOP3
      ; New top 2 - shift TOP2 down
    PUSH AX
    MOV AX, [BX+2]     ; Get current TOP2
    MOV [BX+4], AX     ; Current TOP2 → TOP3
    
    ; For Normal Mode, shift the code lengths for position 2->3
    CMP MODE_SELECT, 1
    JNE @CHECK_MUTATION_SHIFT2
    MOV CL, NORMAL_LENGTH2
    MOV NORMAL_LENGTH3, CL
    JMP @SHIFT_MODE_SPECIFIC2
    
@CHECK_MUTATION_SHIFT2:
    ; For Mutation Mode, shift the code lengths for position 2->3
    CMP MODE_SELECT, 2
    JNE @CHECK_TIME_SHIFT2
    MOV CL, MUTATION_LENGTH2
    MOV MUTATION_LENGTH3, CL
    JMP @SHIFT_MODE_SPECIFIC2
    
@CHECK_TIME_SHIFT2:
    ; For Time Mode, shift the code lengths, punishment types and suffer counts for position 2->3
    CMP MODE_SELECT, 3
    JNE @SHIFT_MODE_SPECIFIC2
    
    ; Shift code lengths
    MOV CL, TIME_LENGTH2
    MOV TIME_LENGTH3, CL
    
    ; Shift punishment types
    MOV CL, TIME_PUNISH2
    MOV TIME_PUNISH3, CL
      ; Shift suffer counts
    MOV CX, TIME_SUFFER2
    MOV TIME_SUFFER3, CX
    
@SHIFT_MODE_SPECIFIC2:
    POP AX
    MOV [BX+2], AX     ; New score → TOP2
      ; Store current code length based on mode
    CMP MODE_SELECT, 1
    JNE @CHECK_MUTATION_STORE2
    MOV CL, CODE_LENGTH
    MOV NORMAL_LENGTH2, CL
    JMP UPDATE_DONE
    
@CHECK_MUTATION_STORE2:
    CMP MODE_SELECT, 2
    JNE @CHECK_TIME_STORE2
    MOV CL, CODE_LENGTH
    MOV MUTATION_LENGTH2, CL
    JMP UPDATE_DONE
    
@CHECK_TIME_STORE2:
    ; For Time Mode, store current code length, punishment type and suffer count in position 2
    CMP MODE_SELECT, 3
    JNE UPDATE_DONE
    
    ; Store code length
    MOV CL, CODE_LENGTH
    MOV TIME_LENGTH2, CL
    
    ; Store punishment type
    MOV CL, TIME_PUNISH_TYPE
    MOV TIME_PUNISH2, CL
    
    CMP CL, 1          ; Is it Suffer Mode?
    JNE @SKIP_SUFFER2
    MOV CX, SUFFER_COUNT
    MOV TIME_SUFFER2, CX
    
@SKIP_SUFFER2:
    JMP UPDATE_DONE
    
@CHECK_TOP3:
    ; Compare with top 3
    CMP AX, [BX+4]
    JAE UPDATE_DONE  ; If score >= TOP3, no changes
    MOV [BX+4], AX     ; New score → TOP3
      ; Store current code length based on mode
    CMP MODE_SELECT, 1
    JNE @CHECK_MUTATION_STORE3
    MOV CL, CODE_LENGTH
    MOV NORMAL_LENGTH3, CL
    JMP UPDATE_DONE
    
@CHECK_MUTATION_STORE3:
    CMP MODE_SELECT, 2
    JNE @CHECK_TIME_STORE3
    MOV CL, CODE_LENGTH
    MOV MUTATION_LENGTH3, CL
    JMP UPDATE_DONE
    
@CHECK_TIME_STORE3:
    ; For Time Mode, store current code length, punishment type and suffer count in position 3
    CMP MODE_SELECT, 3
    JNE UPDATE_DONE
    
    ; Store code length
    MOV CL, CODE_LENGTH
    MOV TIME_LENGTH3, CL
    
    ; Store punishment type
    MOV CL, TIME_PUNISH_TYPE
    MOV TIME_PUNISH3, CL
    
    CMP CL, 1          ; Is it Suffer Mode?
    JNE UPDATE_DONE
    MOV CX, SUFFER_COUNT
    MOV TIME_SUFFER3, CX
    
UPDATE_DONE:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
UPDATE_TOP_SCORES ENDP

DISPLAY_NUMBER PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    MOV CX, 0
    MOV BX, 10
    
DIVIDE_LOOP:
    MOV DX, 0
    DIV BX
    PUSH DX
    INC CX
    CMP AX, 0
    JNE DIVIDE_LOOP
    
DISPLAY_LOOP:
    POP DX
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    LOOP DISPLAY_LOOP
    
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_NUMBER ENDP

COMPARE_STRINGS PROC
    PUSH AX
    PUSH SI
    PUSH DI
    
COMPARE_LOOP:
    MOV AL, [SI]
    CMP AL, '$'
    JE CHECK_END
    CMP AL, [DI]
    JNE NOT_EQUAL
    INC SI
    INC DI
    JMP COMPARE_LOOP
    
CHECK_END:
    CMP BYTE PTR [DI], 0DH
    JE EQUAL
    
NOT_EQUAL:
    POP DI
    POP SI
    POP AX
    STC
    RET
    
EQUAL:
    POP DI
    POP SI
    POP AX
    CLC
    RET
COMPARE_STRINGS ENDP

COMPARE_KEYWORDS PROC
    PUSH AX
    PUSH SI
    PUSH DI
    
; SI point to input, DI to keyword
COMPARE_KW_LOOP:
    MOV AL, [DI]
    CMP AL, '$'
    JE CHECK_KW_END
    CMP AL, [SI]
    JNE NOT_KW_EQUAL
    INC SI
    INC DI
    JMP COMPARE_KW_LOOP
    
CHECK_KW_END:
    ; Check if at end of input too (or enter key)
    MOV AL, [SI]
    CMP AL, 0DH
    JE KW_EQUAL
    CMP AL, 0
    JE KW_EQUAL
    
NOT_KW_EQUAL:
    POP DI
    POP SI
    POP AX
    STC
    RET
    
KW_EQUAL:
    POP DI
    POP SI
    POP AX
    CLC
    RET
COMPARE_KEYWORDS ENDP

SAVE_PLAYER_STATS PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Check which player is logged in
    CMP CURRENT_PLAYER, 1
    JE SAVE_PLAYER1
    CMP CURRENT_PLAYER, 2
    JE SAVE_PLAYER2
    CMP CURRENT_PLAYER, 3
    JE SAVE_PLAYER3
    JMP SAVE_DONE  ; No player logged in, do nothing
    
SAVE_PLAYER1:
    ; Save stats to player 1 variables
    MOV AX, TOTAL_GAMES_INT
    MOV P1_TOTAL_GAMES, AX
    MOV AX, WINS_INT
    MOV P1_WINS, AX
    MOV AX, LOSSES_INT
    MOV P1_LOSSES, AX
    MOV AX, TOTAL_ATTEMPTS
    MOV P1_TOTAL_ATTEMPTS, AX
    MOV AX, TOTAL_TIME_PLAYED
    MOV P1_TIME_PLAYED, AX
    
    ; Save code length
    MOV AL, CODE_LENGTH
    MOV P1_CODE_LENGTH, AL
      ; Save top scores
    MOV AX, NORMAL_TOP1
    MOV P1_NORMAL_TOP1, AX
    MOV AX, NORMAL_TOP2
    MOV P1_NORMAL_TOP2, AX
    MOV AX, NORMAL_TOP3
    MOV P1_NORMAL_TOP3, AX
    
    ; Save normal mode code lengths
    MOV AL, NORMAL_LENGTH1
    MOV P1_NORMAL_LENGTH1, AL
    MOV AL, NORMAL_LENGTH2
    MOV P1_NORMAL_LENGTH2, AL
    MOV AL, NORMAL_LENGTH3
    MOV P1_NORMAL_LENGTH3, AL
    
    MOV AX, MUTATION_TOP1
    MOV P1_MUTATION_TOP1, AX
    MOV AX, MUTATION_TOP2
    MOV P1_MUTATION_TOP2, AX
    MOV AX, MUTATION_TOP3
    MOV P1_MUTATION_TOP3, AX
    
    ; Save mutation mode code lengths
    MOV AL, MUTATION_LENGTH1
    MOV P1_MUTATION_LENGTH1, AL
    MOV AL, MUTATION_LENGTH2
    MOV P1_MUTATION_LENGTH2, AL
    MOV AL, MUTATION_LENGTH3
    MOV P1_MUTATION_LENGTH3, AL
    
    MOV AX, TIME_TOP1
    MOV P1_TIME_TOP1, AX
    MOV AX, TIME_TOP2
    MOV P1_TIME_TOP2, AX
    MOV AX, TIME_TOP3
    MOV P1_TIME_TOP3, AX
    
    ; Save time mode code lengths
    MOV AL, TIME_LENGTH1
    MOV P1_TIME_LENGTH1, AL
    MOV AL, TIME_LENGTH2
    MOV P1_TIME_LENGTH2, AL
    MOV AL, TIME_LENGTH3
    MOV P1_TIME_LENGTH3, AL
    
    ; Save time mode specific data
    MOV AL, TIME_PUNISH1
    MOV P1_TIME_PUNISH1, AL
    MOV AL, TIME_PUNISH2
    MOV P1_TIME_PUNISH2, AL
    MOV AL, TIME_PUNISH3
    MOV P1_TIME_PUNISH3, AL
    
    MOV AX, TIME_SUFFER1
    MOV P1_TIME_SUFFER1, AX
    MOV AX, TIME_SUFFER2
    MOV P1_TIME_SUFFER2, AX
    MOV AX, TIME_SUFFER3
    MOV P1_TIME_SUFFER3, AX
    
    ; Save mystery pass count
    MOV AL, MYSTERY_PASS_COUNT
    MOV P1_MYSTERY_PASS_COUNT, AL
    
    JMP SAVE_DONE
    
SAVE_PLAYER2:
    ; Save stats to player 2 variables
    MOV AX, TOTAL_GAMES_INT
    MOV P2_TOTAL_GAMES, AX
    MOV AX, WINS_INT
    MOV P2_WINS, AX
    MOV AX, LOSSES_INT
    MOV P2_LOSSES, AX
    MOV AX, TOTAL_ATTEMPTS
    MOV P2_TOTAL_ATTEMPTS, AX
    MOV AX, TOTAL_TIME_PLAYED
    MOV P2_TIME_PLAYED, AX
    
    ; Save code length
    MOV AL, CODE_LENGTH
    MOV P2_CODE_LENGTH, AL
      ; Save top scores
    MOV AX, NORMAL_TOP1
    MOV P2_NORMAL_TOP1, AX
    MOV AX, NORMAL_TOP2
    MOV P2_NORMAL_TOP2, AX
    MOV AX, NORMAL_TOP3
    MOV P2_NORMAL_TOP3, AX
    
    ; Save normal mode code lengths
    MOV AL, NORMAL_LENGTH1
    MOV P2_NORMAL_LENGTH1, AL
    MOV AL, NORMAL_LENGTH2
    MOV P2_NORMAL_LENGTH2, AL
    MOV AL, NORMAL_LENGTH3
    MOV P2_NORMAL_LENGTH3, AL
      MOV AX, MUTATION_TOP1
    MOV P2_MUTATION_TOP1, AX
    MOV AX, MUTATION_TOP2
    MOV P2_MUTATION_TOP2, AX
    MOV AX, MUTATION_TOP3
    MOV P2_MUTATION_TOP3, AX
    
    ; Save mutation mode code lengths
    MOV AL, MUTATION_LENGTH1
    MOV P2_MUTATION_LENGTH1, AL
    MOV AL, MUTATION_LENGTH2
    MOV P2_MUTATION_LENGTH2, AL
    MOV AL, MUTATION_LENGTH3
    MOV P2_MUTATION_LENGTH3, AL
    
    MOV AX, TIME_TOP1
    MOV P2_TIME_TOP1, AX
    MOV AX, TIME_TOP2
    MOV P2_TIME_TOP2, AX
    MOV AX, P2_TIME_TOP3
    MOV P2_TIME_TOP3, AX
    
    ; Save time mode code lengths
    MOV AL, TIME_LENGTH1
    MOV P2_TIME_LENGTH1, AL
    MOV AL, TIME_LENGTH2
    MOV P2_TIME_LENGTH2, AL
    MOV AL, TIME_LENGTH3
    MOV P2_TIME_LENGTH3, AL
    
    ; Save time mode specific data
    MOV AL, TIME_PUNISH1
    MOV P2_TIME_PUNISH1, AL
    MOV AL, TIME_PUNISH2
    MOV P2_TIME_PUNISH2, AL
    MOV AL, TIME_PUNISH3
    MOV P2_TIME_PUNISH3, AL
    
    MOV AX, TIME_SUFFER1
    MOV P2_TIME_SUFFER1, AX
    MOV AX, TIME_SUFFER2
    MOV P2_TIME_SUFFER2, AX
    MOV AX, TIME_SUFFER3
    MOV P2_TIME_SUFFER3, AX
    
    ; Save mystery pass count
    MOV AL, MYSTERY_PASS_COUNT
    MOV P2_MYSTERY_PASS_COUNT, AL
    
    JMP SAVE_DONE
    
SAVE_PLAYER3:
    ; Save stats to player 3 variables
    MOV AX, P3_TOTAL_GAMES
    MOV TOTAL_GAMES_INT, AX
    MOV AX, P3_WINS
    MOV WINS_INT, AX
    MOV AX, P3_LOSSES
    MOV LOSSES_INT, AX
    MOV AX, P3_TOTAL_ATTEMPTS
    MOV TOTAL_ATTEMPTS, AX
    MOV AX, P3_TIME_PLAYED
    MOV TOTAL_TIME_PLAYED, AX
    
    ; Save code length
    MOV AL, P3_CODE_LENGTH
    MOV CODE_LENGTH, AL
      ; Save top scores
    MOV AX, NORMAL_TOP1
    MOV P3_NORMAL_TOP1, AX
    MOV AX, NORMAL_TOP2
    MOV P3_NORMAL_TOP2, AX
    MOV AX, NORMAL_TOP3
    MOV P3_NORMAL_TOP3, AX
    
    ; Save normal mode code lengths
    MOV AL, NORMAL_LENGTH1
    MOV P3_NORMAL_LENGTH1, AL
    MOV AL, NORMAL_LENGTH2
    MOV P3_NORMAL_LENGTH2, AL
    MOV AL, NORMAL_LENGTH3
    MOV P3_NORMAL_LENGTH3, AL
    
    MOV AX, MUTATION_TOP1
    MOV P3_MUTATION_TOP1, AX
    MOV AX, P3_MUTATION_TOP2
    MOV P3_MUTATION_TOP2, AX
    MOV AX, P3_MUTATION_TOP3
    MOV P3_MUTATION_TOP3, AX
    
    ; Save mutation mode code lengths
    MOV AL, MUTATION_LENGTH1
    MOV P3_MUTATION_LENGTH1, AL
    MOV AL, MUTATION_LENGTH2
    MOV P3_MUTATION_LENGTH2, AL
    MOV AL, MUTATION_LENGTH3
    MOV P3_MUTATION_LENGTH3, AL
    
    MOV AX, TIME_TOP1
    MOV TIME_TOP1, AX
    MOV TIME_TOP2, AX
    MOV TIME_TOP3, AX
    
    ; Save time mode code lengths
    MOV AL, P3_TIME_LENGTH1
    MOV TIME_LENGTH1, AL
    MOV AL, P3_TIME_LENGTH2
    MOV TIME_LENGTH2, AL
    MOV AL, P3_TIME_LENGTH3
    MOV TIME_LENGTH3, AL
    
    ; Save time mode specific data
    MOV AL, P3_TIME_PUNISH1
    MOV TIME_PUNISH1, AL
    MOV AL, P3_TIME_PUNISH2
    MOV TIME_PUNISH2, AL
    MOV AL, P3_TIME_PUNISH3
    MOV TIME_PUNISH3, AL
    
    MOV AX, P3_TIME_SUFFER1
    MOV TIME_SUFFER1, AX
    MOV AX, P3_TIME_SUFFER2
    MOV TIME_SUFFER2, AX
    MOV AX, P3_TIME_SUFFER3
    MOV TIME_SUFFER3, AX
    
    ; Save mystery pass count
    MOV AL, P3_MYSTERY_PASS_COUNT
    MOV MYSTERY_PASS_COUNT, AL
    
SAVE_DONE:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
SAVE_PLAYER_STATS ENDP

LOAD_PLAYER_STATS PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Check which player is logged in
    CMP CURRENT_PLAYER, 1
    JE LOAD_PLAYER1
    CMP CURRENT_PLAYER, 2
    JE LOAD_PLAYER2
    CMP CURRENT_PLAYER, 3
    JE LOAD_PLAYER3
    JMP LOAD_DONE  ; No player logged in, do nothing
    
LOAD_PLAYER1:
    ; Load stats from player 1 variables
    MOV AX, P1_TOTAL_GAMES
    MOV TOTAL_GAMES_INT, AX
    MOV AX, P1_WINS
    MOV WINS_INT, AX
    MOV AX, P1_LOSSES
    MOV LOSSES_INT, AX
    MOV AX, P1_TOTAL_ATTEMPTS
    MOV TOTAL_ATTEMPTS, AX
    MOV AX, P1_TIME_PLAYED
    MOV TOTAL_TIME_PLAYED, AX
    
    ; Load player's code length
    MOV AL, P1_CODE_LENGTH
    MOV CODE_LENGTH, AL
    
    ; Update the display code length 
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
      ; Load top scores
    MOV AX, P1_NORMAL_TOP1
    MOV NORMAL_TOP1, AX
    MOV AX, P1_NORMAL_TOP2
    MOV NORMAL_TOP2, AX
    MOV AX, P1_NORMAL_TOP3
    MOV NORMAL_TOP3, AX
    
    ; Load normal mode code lengths
    MOV AL, P1_NORMAL_LENGTH1
    MOV NORMAL_LENGTH1, AL
    MOV AL, P1_NORMAL_LENGTH2
    MOV NORMAL_LENGTH2, AL
    MOV AL, P1_NORMAL_LENGTH3
    MOV NORMAL_LENGTH3, AL
    
    MOV AX, P1_MUTATION_TOP1
    MOV MUTATION_TOP1, AX
    MOV AX, P1_MUTATION_TOP2
    MOV MUTATION_TOP2, AX
    MOV AX, P1_MUTATION_TOP3
    MOV MUTATION_TOP3, AX
    
    ; Load mutation mode code lengths
    MOV AL, P1_MUTATION_LENGTH1
    MOV MUTATION_LENGTH1, AL
    MOV AL, P1_MUTATION_LENGTH2
    MOV MUTATION_LENGTH2, AL
    MOV AL, P1_MUTATION_LENGTH3
    MOV MUTATION_LENGTH3, AL
    
    MOV AX, P1_TIME_TOP1
    MOV TIME_TOP1, AX
    MOV AX, P1_TIME_TOP2
    MOV TIME_TOP2, AX
    MOV AX, P1_TIME_TOP3
    MOV TIME_TOP3, AX
    
    ; Load time mode code lengths
    MOV AL, P1_TIME_LENGTH1
    MOV TIME_LENGTH1, AL
    MOV AL, P1_TIME_LENGTH2
    MOV TIME_LENGTH2, AL
    MOV AL, P1_TIME_LENGTH3
    MOV TIME_LENGTH3, AL
    
    ; Load time mode specific data
    MOV AL, P1_TIME_PUNISH1
    MOV TIME_PUNISH1, AL
    MOV AL, P1_TIME_PUNISH2
    MOV TIME_PUNISH2, AL
    MOV AL, P1_TIME_PUNISH3
    MOV TIME_PUNISH3, AL
    
    MOV AX, P1_TIME_SUFFER1
    MOV TIME_SUFFER1, AX
    MOV AX, P1_TIME_SUFFER2
    MOV TIME_SUFFER2, AX
    MOV AX, P1_TIME_SUFFER3
    MOV TIME_SUFFER3, AX
    
    ; Load mystery pass count
    MOV AL, P1_MYSTERY_PASS_COUNT
    MOV MYSTERY_PASS_COUNT, AL
    
    JMP LOAD_DONE
    
LOAD_PLAYER2:
    ; Load stats from player 2 variables
    MOV AX, P2_TOTAL_GAMES
    MOV TOTAL_GAMES_INT, AX
    MOV AX, P2_WINS
    MOV WINS_INT, AX
    MOV AX, P2_LOSSES
    MOV LOSSES_INT, AX
    MOV AX, P2_TOTAL_ATTEMPTS
    MOV TOTAL_ATTEMPTS, AX
    MOV AX, P2_TIME_PLAYED
    MOV TOTAL_TIME_PLAYED, AX
    
    ; Load player's code length
    MOV AL, P2_CODE_LENGTH
    MOV CODE_LENGTH, AL
    
    ; Update the display code length 
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
    
    ; Load top scores
    MOV AX, P2_NORMAL_TOP1
    MOV NORMAL_TOP1, AX
    MOV AX, P2_NORMAL_TOP2
    MOV NORMAL_TOP2, AX
    MOV AX, P2_NORMAL_TOP3
    MOV NORMAL_TOP3, AX
    
    ; Load normal mode code lengths
    MOV AL, P2_NORMAL_LENGTH1
    MOV NORMAL_LENGTH1, AL
    MOV AL, P2_NORMAL_LENGTH2
    MOV NORMAL_LENGTH2, AL
    MOV AL, P2_NORMAL_LENGTH3
    MOV NORMAL_LENGTH3, AL
    
    MOV AX, P2_MUTATION_TOP1
    MOV MUTATION_TOP1, AX
    MOV AX, P2_MUTATION_TOP2
    MOV MUTATION_TOP2, AX
    MOV AX, P2_MUTATION_TOP3
    MOV MUTATION_TOP3, AX
    
    ; Load mutation mode code lengths
    MOV AL, P2_MUTATION_LENGTH1
    MOV MUTATION_LENGTH1, AL
    MOV AL, P2_MUTATION_LENGTH2
    MOV MUTATION_LENGTH2, AL
    MOV AL, P2_MUTATION_LENGTH3
    MOV MUTATION_LENGTH3, AL
    
    MOV AX, P2_TIME_TOP1
    MOV TIME_TOP1, AX
    MOV AX, P2_TIME_TOP2
    MOV TIME_TOP2, AX
    MOV AX, P2_TIME_TOP3
    MOV TIME_TOP3, AX
    
    ; Load time mode code lengths
    MOV AL, P2_TIME_LENGTH1
    MOV TIME_LENGTH1, AL
    MOV AL, P2_TIME_LENGTH2
    MOV TIME_LENGTH2, AL
    MOV AL, P2_TIME_LENGTH3
    MOV TIME_LENGTH3, AL
    
    ; Load time mode specific data
    MOV AL, P2_TIME_PUNISH1
    MOV TIME_PUNISH1, AL
    MOV AL, P2_TIME_PUNISH2
    MOV TIME_PUNISH2, AL
    MOV AL, P2_TIME_PUNISH3
    MOV TIME_PUNISH3, AL
      MOV AX, P2_TIME_SUFFER1
    MOV TIME_SUFFER1, AX
    MOV AX, P2_TIME_SUFFER2
    MOV TIME_SUFFER2, AX
    MOV AX, P2_TIME_SUFFER3
    MOV TIME_SUFFER3, AX
    
    ; Load mystery pass count
    MOV AL, P2_MYSTERY_PASS_COUNT
    MOV MYSTERY_PASS_COUNT, AL
    
    JMP LOAD_DONE
    
LOAD_PLAYER3:
    ; Load stats from player 3 variables
    MOV AX, P3_TOTAL_GAMES
    MOV TOTAL_GAMES_INT, AX
    MOV AX, P3_WINS
    MOV WINS_INT, AX
    MOV AX, P3_LOSSES
    MOV LOSSES_INT, AX
    MOV AX, P3_TOTAL_ATTEMPTS
    MOV TOTAL_ATTEMPTS, AX
    MOV AX, P3_TIME_PLAYED
    MOV TOTAL_TIME_PLAYED, AX
    
    ; Load player's code length
    MOV AL, P3_CODE_LENGTH
    MOV CODE_LENGTH, AL
    
    ; Update the display code length 
    MOV AL, CODE_LENGTH
    ADD AL, '0'
    MOV GUESS_LENGTH, AL
      ; Load top scores
    MOV AX, P3_NORMAL_TOP1
    MOV NORMAL_TOP1, AX
    MOV AX, P3_NORMAL_TOP2
    MOV NORMAL_TOP2, AX
    MOV AX, P3_NORMAL_TOP3
    MOV NORMAL_TOP3, AX
    
    ; Load normal mode code lengths
    MOV AL, P3_NORMAL_LENGTH1
    MOV NORMAL_LENGTH1, AL
    MOV AL, P3_NORMAL_LENGTH2
    MOV NORMAL_LENGTH2, AL
    MOV AL, P3_NORMAL_LENGTH3
    MOV NORMAL_LENGTH3, AL
    
    MOV AX, P3_MUTATION_TOP1
    MOV MUTATION_TOP1, AX
    MOV AX, P3_MUTATION_TOP2
    MOV MUTATION_TOP2, AX
    MOV AX, P3_MUTATION_TOP3
    MOV MUTATION_TOP3, AX
    
    ; Load mutation mode code lengths
    MOV AL, P3_MUTATION_LENGTH1
    MOV MUTATION_LENGTH1, AL
    MOV AL, P3_MUTATION_LENGTH2
    MOV MUTATION_LENGTH2, AL
    MOV AL, P3_MUTATION_LENGTH3
    MOV MUTATION_LENGTH3, AL
    
    MOV AX, TIME_TOP1
    MOV TIME_TOP1, AX
    MOV TIME_TOP2, AX
    MOV TIME_TOP3, AX
    
    ; Load time mode code lengths
    MOV AL, P3_TIME_LENGTH1
    MOV TIME_LENGTH1, AL
    MOV AL, P3_TIME_LENGTH2
    MOV TIME_LENGTH2, AL
    MOV AL, P3_TIME_LENGTH3
    MOV TIME_LENGTH3, AL
    
    ; Load time mode specific data
    MOV AL, P3_TIME_PUNISH1
    MOV TIME_PUNISH1, AL
    MOV AL, P3_TIME_PUNISH2
    MOV TIME_PUNISH2, AL
    MOV AL, P3_TIME_PUNISH3
    MOV TIME_PUNISH3, AL
    
    MOV AX, P3_TIME_SUFFER1
    MOV TIME_SUFFER1, AX
    MOV AX, P3_TIME_SUFFER2
    MOV TIME_SUFFER2, AX
    MOV AX, P3_TIME_SUFFER3
    MOV TIME_SUFFER3, AX
    
    ; Load mystery pass count
    MOV AL, P3_MYSTERY_PASS_COUNT
    MOV MYSTERY_PASS_COUNT, AL
    
LOAD_DONE:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
LOAD_PLAYER_STATS ENDP

SHOW_MULTIPLAYER_OPTIONS PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    ; Check if in guest mode
    CMP IS_GUEST_MODE, 1
    JNE SHOW_MULTI_MENU  ; If not guest mode, show normal menu

    ; if in guest mode, show the game modes directly
    CALL SHOW_GAME_MODES
    JMP GUEST_MODE_END

SHOW_MULTI_MENU:
    ; Display multiplayer header
    LEA DX, MULTI_HEADER
    CALL PRINT_STRING
    LEA DX, MULTI_TITLE
    CALL PRINT_STRING
    LEA DX, MULTI_FOOTER
    CALL PRINT_STRING
    
    ; Display customization options
    LEA DX, MULTI_1
    CALL PRINT_STRING
    LEA DX, MULTI_2
    CALL PRINT_STRING
    LEA DX, MULTI_3
    CALL PRINT_STRING
    LEA DX, MULTI_4
    CALL PRINT_STRING
    LEA DX, MULTI_5
    CALL PRINT_STRING
    LEA DX, MULTI_6
    CALL PRINT_STRING
    
MULTI_GET_CHOICE:    
    ; Get user choice
    LEA DX, MULTI_CHOICE
    CALL PRINT_STRING
    
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Process choice
    CMP AL, 1
    JE SET_CUSTOM_LENGTH
    CMP AL, 2
    JE SET_CUSTOM_CODE
    CMP AL, 3
    JE SET_CUSTOM_MUTATION
    CMP AL, 4
    JE SET_CUSTOM_TIME
    CMP AL, 5
    JE START_GUEST_MODE
    CMP AL, 6
    JE RETURN_TO_DASHBOARD
    
    ; Invalid choice
    LEA DX, INVALID_CHOICE
    CALL PRINT_STRING
    JMP MULTI_GET_CHOICE
    
SET_CUSTOM_LENGTH:
    ; Get code length from user
    LEA DX, CODE_LENGTH_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate length (3-6)
    CMP AL, MIN_CODE_LENGTH
    JB INVALID_CUSTOM_LENGTH
    CMP AL, MAX_CODE_LENGTH
    JA INVALID_CUSTOM_LENGTH
    
    ; Set custom length
    MOV CUSTOM_CODE_LENGTH, AL
    MOV USE_CUSTOM_LENGTH, 1
    
    ; Update custom code digits prompt
    ADD AL, '0'
    MOV CUSTOM_CODE_DIGITS, AL
      ; Show confirmation message
    LEA DX, CUSTOM_LENGTH_SET
    CALL PRINT_STRING
    
    MOV AL, CUSTOM_CODE_LENGTH
    MOV AH, 0
    CALL DISPLAY_NUMBER
    
    JMP SHOW_MULTI_MENU
    
INVALID_CUSTOM_LENGTH:
    LEA DX, INVALID_LENGTH
    CALL PRINT_STRING
    JMP SHOW_MULTI_MENU
    
SET_CUSTOM_CODE:
    ; Check if custom length is set, if not use default (4)
    CMP USE_CUSTOM_LENGTH, 1
    JE USE_CUSTOM_LEN_FOR_CODE
    MOV CUSTOM_CODE_LENGTH, 4
    MOV AL, '4'
    MOV CUSTOM_CODE_DIGITS, AL
    
USE_CUSTOM_LEN_FOR_CODE:
    ; Show prompt for custom code
    LEA DX, CUSTOM_CODE_PROMPT
    CALL PRINT_STRING
    
    ; Input custom code digits
    XOR CX, CX
    MOV CL, CUSTOM_CODE_LENGTH
    XOR SI, SI
    
INPUT_CUSTOM_CODE_LOOP:
    ; Get digit
    MOV AH, 1
    INT 21H
    
    ; Validate digit (0-9)
    CMP AL, '0'
    JB INVALID_CUSTOM_CODE
    CMP AL, '9'
    JA INVALID_CUSTOM_CODE
    
    ; Store digit
    SUB AL, '0'
    MOV CUSTOM_CODE[SI], AL
    INC SI
    LOOP INPUT_CUSTOM_CODE_LOOP
    
    ; Set flag
    MOV USE_CUSTOM_CODE, 1
    
    ; Show confirmation
    LEA DX, CUSTOM_CODE_SET
    CALL PRINT_STRING
    
    ; Return to multiplayer menu
    JMP SHOW_MULTI_MENU
    
INVALID_CUSTOM_CODE:
    LEA DX, INVALID_GUESS
    CALL PRINT_STRING
    JMP SET_CUSTOM_CODE
    
SET_CUSTOM_MUTATION:
    ; Get mutation sequence from user (6-9)
    LEA DX, MUT_SEQ_PROMPT
    CALL PRINT_STRING
    
    ; Read single digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Validate mutation sequence (6-9)
    CMP AL, 6
    JB INVALID_CUSTOM_MUT
    CMP AL, 9
    JA INVALID_CUSTOM_MUT
    
    ; Store custom mutation sequence
    MOV CUSTOM_MUTATION_SEQ, AL
    MOV USE_CUSTOM_MUTATION, 1
      ; Show confirmation
    LEA DX, CUSTOM_MUT_SET
    CALL PRINT_STRING
    
    MOV AL, CUSTOM_MUTATION_SEQ
    MOV AH, 0
    CALL DISPLAY_NUMBER
    
    JMP SHOW_MULTI_MENU
    
INVALID_CUSTOM_MUT:
    LEA DX, INVALID_SEQ
    CALL PRINT_STRING
    JMP SHOW_MULTI_MENU
    
SET_CUSTOM_TIME:
    ; Get time limit (10-99 seconds)
    LEA DX, TIME_LIMIT_PROMPT
    CALL PRINT_STRING
    
    ; Read tens digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    
    ; Check for single or double digit input
    CMP AL, 1
    JB INVALID_CUSTOM_TIME
    CMP AL, 9
    JA INVALID_CUSTOM_TIME
    
    ; Store tens digit
    MOV AH, 0
    MOV BX, 10
    MUL BX
    MOV BX, AX
    
    ; Check for second digit
    MOV AH, 1
    INT 21H
    
    ; If it's Enter, use just the first digit * 10
    CMP AL, 13
    JE SINGLE_DIGIT_CUSTOM_TIME
    
    ; Otherwise, validate and add the second digit
    SUB AL, '0'
    CMP AL, 0
    JB INVALID_CUSTOM_TIME
    CMP AL, 9
    JA INVALID_CUSTOM_TIME
    
    ; Add ones digit
    MOV AH, 0
    ADD BX, AX
    
    ; Check if time is valid (10-100)
    CMP BX, 10
    JB INVALID_CUSTOM_TIME
    CMP BX, 100
    JA INVALID_CUSTOM_TIME
    
    MOV CUSTOM_TIME_LIMIT, BX
    JMP CUSTOM_TIME_VALID
    
SINGLE_DIGIT_CUSTOM_TIME:
    ; Check if first digit * 10 is valid
    CMP BX, 10
    JB INVALID_CUSTOM_TIME
    CMP BX, 100
    JA INVALID_CUSTOM_TIME
    
    MOV CUSTOM_TIME_LIMIT, BX
    JMP CUSTOM_TIME_VALID
    
INVALID_CUSTOM_TIME:
    LEA DX, INVALID_TIME
    CALL PRINT_STRING
    JMP SHOW_MULTI_MENU
    
CUSTOM_TIME_VALID:
    ; Set flag
    MOV USE_CUSTOM_TIME, 1
      ; Show confirmation
    LEA DX, CUSTOM_TIME_SET
    CALL PRINT_STRING
    
    MOV AX, CUSTOM_TIME_LIMIT
    CALL DISPLAY_NUMBER
    
    JMP SHOW_MULTI_MENU
    
START_GUEST_MODE:
    ; "Logout" current player
    CALL SAVE_PLAYER_STATS
    MOV CURRENT_PLAYER, 0    ; Reset guest statistics
    XOR AX, AX
    MOV TOTAL_GAMES_INT, AX
    MOV WINS_INT, AX
    MOV LOSSES_INT, AX
    MOV TOTAL_ATTEMPTS, AX
    MOV TOTAL_TIME_PLAYED, AX
    
    ; Initialize guest variables
    MOV MYSTERY_PASS_COUNT, 1    ; Give guest a mystery pass
    MOV CHAT_ACK_COUNT, 1        ; Initialize chat acknowledgement count
    
    ; Reset chat variables to ensure they're properly initialized
    CALL RESET_CHAT_VARIABLES
    
    ; Reset top scores for guest
    MOV AX, 9999
    MOV NORMAL_TOP1, AX
    MOV NORMAL_TOP2, AX
    MOV NORMAL_TOP3, AX
    MOV MUTATION_TOP1, AX
    MOV MUTATION_TOP2, AX
    MOV MUTATION_TOP3, AX
    MOV TIME_TOP1, AX
    MOV TIME_TOP2, AX
    MOV TIME_TOP3, AX
      ; Add a line gap before welcome message
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Show welcome message
    LEA DX, WELCOME_GUEST
    CALL PRINT_STRING
    
    ; Get guest gamertag
    LEA DX, GUEST_TAG_PROMPT
    CALL PRINT_STRING
    
    ; Clear guest gamertag buffer
    MOV CX, 15
    MOV DI, OFFSET GUEST_GAMERTAG
    MOV AL, '$'
    REP STOSB
    
    ; Read guest gamertag (up to 14 characters)
    MOV CX, 0
    MOV DI, OFFSET GUEST_GAMERTAG
    
READ_GUEST_TAG:
    MOV AH, 1
    INT 21H
    
    ; Check for Enter key (end of input)
    CMP AL, 13
    JE END_GUEST_TAG
    
    ; Store character
    MOV [DI], AL
    INC DI
    INC CX
    
    ; Check if we've reached maximum length
    CMP CX, 14
    JE END_GUEST_TAG
    
    JMP READ_GUEST_TAG
    
END_GUEST_TAG:
    ; Set flag for guest mode
    MOV IS_GUEST_MODE, 1
    
    ; Initialize all necessary variables for guest mode
    MOV MYSTERY_PASS_COUNT, 1    ; Give guest a mystery pass
    MOV CHAT_ACK_COUNT, 1        ; Initialize chat acknowledgement count
    
    ; Reset chat variables to ensure they're properly initialized
    CALL RESET_CHAT_VARIABLES
    
    ; Show success message
    LEA DX, GUEST_LOGGED
    CALL PRINT_STRING
    
    ; No need for additional newline since GUEST_LOGGED already has a newline
    ; and returning to the menu which will have its own formatting
    
GUEST_MODE_END:    
    ; Make sure we restore all registers before returning
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
RETURN_TO_DASHBOARD:
    ; Return to dashboard
    LEA DX, BACK_MSG
    CALL PRINT_STRING
    POP DX
    POP CX
    POP BX
    POP AX
    RET
    
SHOW_MULTIPLAYER_OPTIONS ENDP

SHOW_MYSTERY_PASSES PROC
    PUSH AX
    PUSH BX
    PUSH DX
    
    ; Print empty line for gap
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Display Mystery Passes header
    LEA DX, STATS_HEADER
    CALL PRINT_STRING
    LEA DX, MYSTERY_HEADER
    CALL PRINT_STRING
    LEA DX, STATS_FOOTER
    CALL PRINT_STRING
    
    ; Show Mystery Pass count message
    LEA DX, MP_HAVE_MSG
    CALL PRINT_STRING
    
    MOV AL, MYSTERY_PASS_COUNT
    MOV AH, 0
    CALL DISPLAY_NUMBER
    
    LEA DX, MP_POSSESSION_MSG
    CALL PRINT_STRING
    
    ; Display how many wins needed for next pass
    LEA DX, MP_EARN_MSG
    CALL PRINT_STRING
    
    ; Calculate wins needed (3 - (wins % 3))
    MOV AX, WINS_INT
    MOV BL, 3
    DIV BL        ; Divide wins by 3
    
    ; If remainder is 0, they need 3 more wins (just earned one)
    CMP AH, 0
    JE NEED_THREE_WINS
    
    MOV AL, 3
    SUB AL, AH    ; 3 - remainder
    MOV AH, 0
    CALL DISPLAY_NUMBER
    JMP FINISH_WINS_NEEDED
    
NEED_THREE_WINS:
    MOV AX, 3
    CALL DISPLAY_NUMBER
    
FINISH_WINS_NEEDED:
    LEA DX, MP_MORE_WINS_MSG
    CALL PRINT_STRING
    
    ; Display Q&A about Mystery Pass
    LEA DX, MP_Q1
    CALL PRINT_STRING
    LEA DX, MP_A1
    CALL PRINT_STRING
    LEA DX, MP_Q2
    CALL PRINT_STRING
    LEA DX, MP_A2
    CALL PRINT_STRING
    LEA DX, MP_Q3
    CALL PRINT_STRING
    LEA DX, MP_A3
    CALL PRINT_STRING
    
    ; Add "press any key" message
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, PRESS_KEY_MSG
    CALL PRINT_STRING
    
    ; Wait for keypress
    MOV AH, 0
    INT 16H
      POP DX
    POP BX
    POP AX
    RET
SHOW_MYSTERY_PASSES ENDP

; Process chat keyword
PROCESS_CHAT PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
    
    ; For guest mode, we want to ensure chat variables are properly initialized
    CMP IS_GUEST_MODE, 1
    JNE CONTINUE_CHAT_PROCESS
    
    ; If it's guest mode, ensure chat acknowledgement count is initialized
    CMP CHAT_ACK_COUNT, 0
    JNE CONTINUE_CHAT_PROCESS
    MOV CHAT_ACK_COUNT, 1
    
CONTINUE_CHAT_PROCESS:
    ; Display analyzing message
    LEA DX, CHAT_ANALYZING
    CALL PRINT_STRING
    LEA DX, NEWLINE
    CALL PRINT_STRING
    
    ; Check the CHAT_ACK_COUNT to determine response
    MOV AL, CHAT_ACK_COUNT
    
    ; If CHAT_ACK_COUNT is 0 or 1
    CMP AL, 0
    JE CHAT_NO_GUESSES
    CMP AL, 1
    JE CHAT_SINGLE_GUESS    ; For CHAT_ACK_COUNT 2 or more
      ; Generate a random number from 0 to 9
    ; Generate fresh random seed
    MOV AH, 2CH
    INT 21H
    MOV AL, DL
    MUL DH
    MOV SEED, AX
    
    ; Generate random digit using same LCG as secret code
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 0-9
    MOV DX, 0
    MOV BX, 10
    DIV BX
    MOV AL, DL
    
RANDOM_DIGIT_CHECK:
    
    ; Check if digit count is 0
    PUSH AX
    MOV BL, AL       ; Store digit in BL
    MOV BH, 0
    MOV SI, BX
    MOV DI, OFFSET CHAT_DIGIT_0_COUNT
    ADD DI, SI
    CMP BYTE PTR [DI], 0  ; Check if count is 0
    JE GENERATE_NEW_RANDOM ; If count is 0, generate another number
    
    ; We found a digit with count > 0, now check RWC status
    MOV DI, OFFSET CHAT_DIGIT_0_RWC
    ADD DI, SI
    MOV BL, [DI]      ; Get RWC status
    POP AX            ; Restore digit value in AL
    
    ; Check if CHAT_DIGIT_R_COUNT equals code length
    CMP CHAT_DIGIT_R_COUNT, 0
    JE CHECK_RWC_STATUS     ; If no R digits yet, skip this check
    
    MOV CL, CHAT_DIGIT_R_COUNT
    CMP CL, CODE_LENGTH
    JNE CHECK_RWC_STATUS    ; If R count != code length, continue with normal checks
    
    ; If R count equals code length, use R2 replies
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
CHECK_RWC_STATUS:
    ; Check the status for the selected digit
    CMP BL, 'R'
    JE USE_R1_REPLY
    CMP BL, 'C'
    JE USE_C_REPLY
    CMP BL, 'W'
    JE USE_W_REPLY
      ; If we get here, status is 'N' (not used yet) or something else
    ; Try another random digit using same method as secret code
    ; Generate fresh random seed
    MOV AH, 2CH
    INT 21H
    MOV AL, DL
    MUL DH
    MOV SEED, AX
    
    ; Generate random digit using same LCG as secret code
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 0-9
    MOV DX, 0
    MOV BX, 10
    DIV BX
    MOV AL, DL
    
    JMP RANDOM_DIGIT_CHECK  ; Check the new number
    
USE_R1_REPLY:
    ; R count < code length, use CHAT_REPLY_R1
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
USE_C_REPLY:
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
USE_W_REPLY:
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
GENERATE_NEW_RANDOM:
    POP AX           ; Restore previous random number
    ; Generate a new random number using the same method as secret code
    ; Generate fresh random seed
    MOV AH, 2CH
    INT 21H
    MOV AL, DL
    MUL DH
    MOV SEED, AX
    
    ; Generate random digit using same LCG as secret code
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 0-9
    MOV DX, 0
    MOV BX, 10
    DIV BX
    MOV AL, DL
    
    JMP RANDOM_DIGIT_CHECK  ; Check the new number
    
@TRY_2_ACK_GT_4:
    CMP CHAT_DIGIT_2_COUNT, 0
    JE @TRY_3_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 2
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_2_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_2_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 2
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_3_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_2
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_2:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_3_ACK_GT_4:
    CMP CHAT_DIGIT_3_COUNT, 0
    JE @TRY_4_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 3
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_3_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_3_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 3
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_4_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_3
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_3:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_4_ACK_GT_4:
    CMP CHAT_DIGIT_4_COUNT, 0
    JE @TRY_9_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 4
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_4_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_4_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 4
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_9_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_4
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_4:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_9_ACK_GT_4:
    CMP CHAT_DIGIT_9_COUNT, 0
    JE @TRY_6_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 9
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_9_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_9_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 9
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_6_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_9
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_9:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_6_ACK_GT_4:
    CMP CHAT_DIGIT_6_COUNT, 0
    JE @TRY_1_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 6
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_6_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_6_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 6
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_1_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_6
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_6:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_1_ACK_GT_4:
    CMP CHAT_DIGIT_1_COUNT, 0
    JE @TRY_0_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 1
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_1_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_1_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 1
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_0_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_1
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_1:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_0_ACK_GT_4:
    CMP CHAT_DIGIT_0_COUNT, 0
    JE @TRY_8_ACK_GT_4
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 0
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_0_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_0_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 0
    CMP BYTE PTR [BX], 'R'
    JNE @TRY_8_ACK_GT_4
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_0
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_0:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@TRY_8_ACK_GT_4:
    CMP CHAT_DIGIT_8_COUNT, 0
    JE @ON_RIGHT_TRACK
    
    ; Check for C status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 8
    CMP BYTE PTR [BX], 'C'
    JNE @CHECK_8_R_ACK_GT_4
    
    CALL CHAT_REPLY_C
    JMP CHAT_DONE
    
@CHECK_8_R_ACK_GT_4:
    ; Check for R status
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 8
    CMP BYTE PTR [BX], 'R'
    JNE @ON_RIGHT_TRACK
    
    ; Check R count
    MOV AL, CHAT_DIGIT_R_COUNT
    CMP AL, CODE_LENGTH
    JAE @USE_R2_REPLY_8
    
    CALL CHAT_REPLY_R1
    JMP CHAT_DONE
    
@USE_R2_REPLY_8:
    CALL CHAT_REPLY_R2
    JMP CHAT_DONE
    
@ON_RIGHT_TRACK:
    ; Generate a new random number and try again
    ; This acts as a fallback if needed
    ; Generate fresh random seed
    MOV AH, 2CH
    INT 21H
    MOV AL, DL
    MUL DH
    MOV SEED, AX
    
    ; Generate random digit using same LCG as secret code
    MOV AX, SEED
    MOV BX, 8405h
    MUL BX
    ADD AX, 17h
    MOV SEED, AX
    
    ; Get number between 0-9
    MOV DX, 0
    MOV BX, 10
    DIV BX
    MOV AL, DL
    
    ; Try with this new random digit
    JMP RANDOM_DIGIT_CHECK
    
CHECK_OTHER_DIGITS_FOR_W:
    ; Original code for CHAT_ACK_COUNT 2 or 3
    ; Check for digits with status 'W' in priority order: 7 > 5 > 2 > 3 > 4 > 9 > 6 > 1 > 0 > 8
    
    ; Check digit 7 first
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 7  ; Point to digit 7's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_5                      ; If not, try next priority
    MOV AL, 7                            ; Pass digit 7 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_5:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 5  ; Point to digit 5's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_2                      ; If not, try next priority
    MOV AL, 5                            ; Pass digit 5 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_2:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 2  ; Point to digit 2's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_3                      ; If not, try next priority
    MOV AL, 2                            ; Pass digit 2 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_3:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 3  ; Point to digit 3's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_4                      ; If not, try next priority
    MOV AL, 3                            ; Pass digit 3 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_4:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 4  ; Point to digit 4's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_9                      ; If not, try next priority
    MOV AL, 4                            ; Pass digit 4 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_9:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 9  ; Point to digit 9's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_6                      ; If not, try next priority
    MOV AL, 9                            ; Pass digit 9 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_6:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 6  ; Point to digit 6's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_1                      ; If not, try next priority
    MOV AL, 6                            ; Pass digit 6 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_1:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 1  ; Point to digit 1's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_0                      ; If not, try next priority
    MOV AL, 1                            ; Pass digit 1 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_0:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 0  ; Point to digit 0's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE TRY_DIGIT_8                      ; If not, try last resort
    MOV AL, 0                            ; Pass digit 0 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
TRY_DIGIT_8:
    MOV BX, OFFSET CHAT_DIGIT_0_RWC + 8  ; Point to digit 8's RWC
    CMP BYTE PTR [BX], 'W'               ; Is it 'W'?
    JNE USE_LAST_RESORT                  ; If not, try last resort
    MOV AL, 8                            ; Pass digit 8 to CHAT_REPLY_W
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
USE_LAST_RESORT:
    ; If no W status found but we have at least one wrong guess, use digit 5 as fallback
    MOV CHAT_DIGIT_5_RWC, 'W'  ; Force digit 5 to have W status
    INC CHAT_DIGIT_W_COUNT
    MOV AL, 5
    
USE_FIRST_W_FOUND:
    ; Found a W digit, use it
    CALL CHAT_REPLY_W
    JMP CHAT_DONE
    
CHAT_NO_GUESSES:
    LEA DX, CHAT_NO_GUESS
    CALL PRINT_STRING
    JMP CHAT_DONE
    
CHAT_SINGLE_GUESS:
    LEA DX, CHAT_ONE_GUESS
    CALL PRINT_STRING
    JMP CHAT_DONE
    
CHAT_DONE:
    ; Reset any digit-specific variables
    CALL RESTORE_CHAT_COUNTS
    
    ; Print keywords prompt again
    LEA DX, NEWLINE
    CALL PRINT_STRING
    LEA DX, KEYWORDS_PROMPT
    CALL PRINT_STRING
      POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
PROCESS_CHAT ENDP

; Generate a random digit between 0 and n-1
; Input: CL = upper bound (exclusive)
; Output: AL = random digit between 0 and CL-1
GENERATE_RANDOM_DIGIT PROC
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Get current time for seed
    CALL GET_TIME_SECONDS
    MOV SEED, AX
    
    ; Generate random number using Linear Congruential Generator
    MOV AX, SEED
    MOV BX, 8405h    ; Multiplier
    MUL BX
    ADD AX, 17h      ; Increment
    MOV SEED, AX     ; Save updated seed
    
    ; Get modulo with the upper bound to limit range
    XOR DX, DX
    DIV CX           ; Divide by upper bound in CL
    MOV AL, DL       ; Remainder is in DL (0 to CL-1)
    
    POP DX
    POP CX
    POP BX
    RET
GENERATE_RANDOM_DIGIT ENDP

; Chat reply for W (wrong) statuses
; Input: AL - The digit (0-9) to use in the reply
CHAT_REPLY_W PROC
    PUSH AX          ; Save AX register
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
    
    ; First check if the value in AL is really a digit with status 'W'
    PUSH AX
    MOV BL, AL       ; BL = digit value (0-9)
    MOV BH, 0        ; Clear BH
    MOV SI, BX       ; SI = digit value (0-9)
    
    ; Verify that this digit really has status 'W'
    MOV BX, OFFSET CHAT_DIGIT_0_RWC
    ADD BX, SI
    CMP BYTE PTR [BX], 'W'
    JNE USE_DEFAULT_DIGIT
    POP AX
    MOV BL, AL       ; Store the digit in BL
    JMP CONTINUE_REPLY
    
USE_DEFAULT_DIGIT:
    ; If the passed digit doesn't have status 'W', use digit 5 as default
    POP AX           ; Restore original AX
    MOV BL, 5        ; Default to digit 5
    
CONTINUE_REPLY:    ; Use simple rotating index system (0, 1, 2, back to 0...)
    XOR SI, SI
    MOV AL, CHAT_REPLY_W_INDEX
    MOV SI, AX
    
    ; Save the index value in DH for later use
    MOV DH, CHAT_REPLY_W_INDEX
    
    ; Increment index for next time and wrap if needed
    INC CHAT_REPLY_W_INDEX
    CMP CHAT_REPLY_W_INDEX, 3   ; 3 W replies
    JB W_CONTINUE_REPLY
    MOV CHAT_REPLY_W_INDEX, 0   ; Reset to 0
    
W_CONTINUE_REPLY:
    ; Simple rotation system
      ; Get the count for this specific digit (AL contains the digit 0-9)
    MOV AH, 0        ; Clear high byte of AX
    MOV DI, OFFSET CHAT_DIGIT_0_COUNT
    ADD DI, AX       ; DI points to the count for this digit
    MOV CL, [DI]     ; Get count in CL
    
    ; Ensure minimum count is 2 for display purposes
    CMP CL, 2
    JAE COUNT_SUFFICIENT
    MOV CL, 2        ; Force minimum count of 2
    
COUNT_SUFFICIENT:
    ; Store the digit in TEMP_DIGIT (keep original value for array indexing)
    MOV TEMP_DIGIT, BL
    
    ; Get the actual count for this specific digit from CHAT_DIGIT_X_COUNT array
    MOV AH, 0            ; Clear high byte
    MOV AL, BL          ; AL = digit (0-9)
    MOV SI, OFFSET CHAT_DIGIT_0_COUNT
    ADD SI, AX          ; SI points to count for this digit
    MOV CL, [SI]        ; Get actual count for this digit

    ; Convert digit to ASCII for display
    ADD BYTE PTR TEMP_DIGIT, '0'
    
    ; Convert count to ASCII for display
    MOV AL, CL
    ADD AL, '0'         ; Convert count to ASCII
    MOV TEMP_COUNT, AL
    
    ; Choose appropriate reply based on saved index in DH
    CMP DH, 0
    JE W_REPLY_1
    CMP DH, 1
    JE W_REPLY_2
    JMP W_REPLY_3
    
W_REPLY_1:
    ; Print first part of the string (until X)
    LEA SI, CHAT_W_REPLY1
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print second part of the string (from after X until Y)
    CALL PRINT_UNTIL_Y
    
    ; Print the count value
    MOV DL, TEMP_COUNT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y)
    CALL PRINT_REST
    JMP W_REPLY_DONE
    
W_REPLY_2:
    ; Print first part of the string (until X)
    LEA SI, CHAT_W_REPLY2
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after X)
    CALL PRINT_REST
    JMP W_REPLY_DONE
    
W_REPLY_3:
    ; Print first part of the string (until X)
    LEA SI, CHAT_W_REPLY3
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after X)
    CALL PRINT_REST
    
W_REPLY_DONE:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX    ; Restore AX register
    RET
CHAT_REPLY_W ENDP

; Chat reply for C (correct but wrong position) statuses
CHAT_REPLY_C PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
      ; Use simple rotating index system (0, 1, 2, back to 0...)
    XOR SI, SI
    MOV AL, CHAT_REPLY_C_INDEX
    MOV SI, AX
    
    ; Save the index value in DH for later use
    MOV DH, CHAT_REPLY_C_INDEX
    
    ; Increment index for next time and wrap if needed
    INC CHAT_REPLY_C_INDEX
    CMP CHAT_REPLY_C_INDEX, 3   ; 3 C replies
    JB C_CONTINUE_REPLY
    MOV CHAT_REPLY_C_INDEX, 0   ; Reset to 0
    
C_CONTINUE_REPLY:
    ; Simple rotation system
    
    ; Find a digit with C status that was guessed the most
    MOV BX, 0        ; Current digit being checked
    MOV CX, 0        ; Max count found so far
    MOV DI, 0        ; Digit with max count
    
FIND_MOST_COMMON_C:
    ; Check if current digit has C status
    MOV SI, OFFSET CHAT_DIGIT_0_RWC
    ADD SI, BX
    CMP BYTE PTR [SI], 'C'
    JNE NEXT_C_DIGIT
    
    ; Get the count for this digit
    MOV SI, OFFSET CHAT_DIGIT_0_COUNT
    ADD SI, BX
    MOV AL, [SI]
    
    ; Check if this count is higher than current max
    CMP AL, CL
    JBE NEXT_C_DIGIT
    
    ; New max found
    MOV CL, AL
    MOV DI, BX
    
NEXT_C_DIGIT:
    INC BX
    CMP BX, 10       ; Check all 10 digits
    JNE FIND_MOST_COMMON_C
    
    ; Now DI contains the digit with C status that was guessed most
    ; And CL contains the count
    
    ; If no C digits found or all have count 0, use default digit 3
    CMP CL, 0
    JNE USE_FOUND_C_DIGIT
    MOV DI, 3        ; Use digit 3 as default
    
USE_FOUND_C_DIGIT:
    ; Store the common C digit for use in replies
    ADD DI, '0'      ; Convert to ASCII
    MOV AX, DI       ; Load 16-bit value into AX
    MOV TEMP_DIGIT, AL  ; Then use AL (8-bit) for TEMP_DIGIT
    
    ; Save SI for reply index
    PUSH SI
    
    ; Find the position of the digit in the secret code
    MOV DH, 0        ; Position counter (1-based)
    MOV SI, 0        ; Index for searching SECRET_CODE
    MOV DL, TEMP_DIGIT ; Get the digit in ASCII
    SUB DL, '0'      ; Convert to actual digit value
    
FIND_POS_IN_SECRET:
    CMP DL, SECRET_CODE[SI]
    JE FOUND_POS_IN_SECRET
    INC SI
    MOV BL, CODE_LENGTH    ; Move CODE_LENGTH (byte) to BL register
    CMP SI, BX             ; Now compare SI to BX (both 16-bit)
    JB FIND_POS_IN_SECRET
    
    ; If digit not found using position 1 as fallback
    MOV DH, 1
    JMP POSITION_FOUND
    
FOUND_POS_IN_SECRET:
    ; Found digit in secret code at position SI
    ; Convert to 1-based position
    INC SI
    ; Use AX as temporary storage
    MOV AX, SI         ; Move SI to AX
    MOV DH, AL         ; Then move AL (lower 8 bits) to DH
    
POSITION_FOUND:
    ; DH contains the 1-based position of the digit in the secret code
    
    ; Generate Y1 and Y2 values based on code length, skipping the digit's position
    MOV BL, 1          ; Start with position 1
    MOV BH, 0          ; Count of positions assigned
    
    ; Find Y1 (first position that isn't the digit's position)
FIND_Y1:
    CMP BL, DH         ; Is this the digit's position?
    JE SKIP_Y1         ; If yes, skip it
    
    ; Found Y1, convert to ASCII and store it
    ADD BL, '0'
    ; Create a string replacement - save BL's value for later usage with position info
    MOV [TEMP_POS1], BL  ; Store the first position's digit
    INC BH             ; Increment count of positions assigned
    JMP FIND_Y2
    
SKIP_Y1:
    INC BL             ; Try next position
    JMP FIND_Y1
    
    ; Find Y2 (second position that isn't the digit's position)
FIND_Y2:
    ; Start from the position after Y1
    SUB BL, '0'        ; Convert back from ASCII
    INC BL             ; Move to next position
    
FIND_Y2_LOOP:
    CMP BL, DH         ; Is this the digit's position?
    JE SKIP_Y2         ; If yes, skip it
    
    ; Found Y2, convert to ASCII and store it
    ADD BL, '0'
    MOV TEMP_POS2, BL
    JMP DONE_FINDING_POSITIONS
    
SKIP_Y2:
    INC BL                ; Try next position
    MOV AL, CODE_LENGTH   ; Move CODE_LENGTH to AL (both bytes)
    CMP BL, AL            ; Now compare BL to AL (both bytes)
    JA RESET_FOR_Y2       ; If yes, wrap around
    JMP FIND_Y2_LOOP
    
RESET_FOR_Y2:
    MOV BL, 1          ; Start from position 1 again
    JMP FIND_Y2_LOOP
    
DONE_FINDING_POSITIONS:
    ; Choose appropriate reply based on saved index in DH
    CMP DH, 0
    JE C_REPLY_1
    CMP DH, 1
    JE C_REPLY_2
    JMP C_REPLY_3
    
C_REPLY_1:
    ; Print first part of the string (until X)
    LEA SI, CHAT_C_REPLY1
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after X until Y1)
    CALL PRINT_UNTIL_Y1
    
    ; Print the position value Y1
    MOV DL, TEMP_POS1
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y1)
    CALL PRINT_REST
    JMP C_REPLY_DONE
    
C_REPLY_2:
    ; Print first part of the string (until X)
    LEA SI, CHAT_C_REPLY2
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after X until Y1)
    CALL PRINT_UNTIL_Y1
    
    ; Print the first position value
    MOV DL, TEMP_POS1
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after Y1 until Y2)
    CALL PRINT_UNTIL_Y2
    
    ; Print the second position value
    MOV DL, TEMP_POS2
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y2)
    CALL PRINT_REST
    JMP C_REPLY_DONE
    
C_REPLY_3:
    ; Print first part of the string (until X)
    LEA SI, CHAT_C_REPLY3
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after X until Y1)
    CALL PRINT_UNTIL_Y1
    
    ; Print the first position value
    MOV DL, TEMP_POS1
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after Y1 until Y2)
    CALL PRINT_UNTIL_Y2
    
    ; Print the second position value
    MOV DL, TEMP_POS2
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y2)
    CALL PRINT_REST
    
C_REPLY_DONE:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
CHAT_REPLY_C ENDP

; Chat reply 1 for R (right) statuses
CHAT_REPLY_R1 PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
      ; Use simple rotating index system (0, 1, 2, 3, back to 0...)
    XOR SI, SI
    MOV AL, CHAT_REPLY_R1_INDEX
    MOV SI, AX
    
    ; Save the index value in DH for later use
    MOV DH, CHAT_REPLY_R1_INDEX
    
    ; Increment index for next time and wrap if needed
    INC CHAT_REPLY_R1_INDEX
    CMP CHAT_REPLY_R1_INDEX, 4   ; 4 R1 replies
    JB R1_CONTINUE_REPLY
    MOV CHAT_REPLY_R1_INDEX, 0   ; Reset to 0
    
R1_CONTINUE_REPLY:
    ; Simple rotation system
    
    ; Find a digit that hasn't been guessed yet or has low count
    MOV BX, 0        ; Current digit being checked
    MOV CX, 0FFh     ; Min count found so far (start with high value)
    MOV DI, 0        ; Digit with min count
    
FIND_LEAST_GUESSED:
    ; Get the count for this digit
    MOV SI, OFFSET CHAT_DIGIT_0_COUNT
    ADD SI, BX
    MOV AL, [SI]
    
    ; Check if this count is lower than current min
    CMP AL, CL
    JAE NEXT_DIGIT_R1
    
    ; New min found
    MOV CL, AL
    MOV DI, BX
    
NEXT_DIGIT_R1:
    INC BX
    CMP BX, 10       ; Check all 10 digits
    JNE FIND_LEAST_GUESSED
      ; Now DI contains the digit with lowest guess count
    ; For position, use a random number between 1 and code length
    XOR CX, CX                 ; Clear CX register
    MOV CL, CODE_LENGTH        ; Load CODE_LENGTH into CL (8-bit register)
    CALL GENERATE_RANDOM_POS
      ; Store the suggested digit and position
    ADD DI, '0'      ; Convert digit to ASCII
    MOV AX, DI       ; Load 16-bit value into AX
    MOV TEMP_DIGIT, AL  ; Then use AL (8-bit) for TEMP_DIGIT
    
    ADD AL, '0'      ; Convert position to ASCII
    MOV TEMP_COUNT, AL
      ; Choose appropriate reply based on saved index in DH
    CMP DH, 0
    JE R1_REPLY_1
    CMP DH, 1
    JE R1_REPLY_2
    CMP DH, 2
    JE R1_REPLY_3
    JMP R1_REPLY_4
    
R1_REPLY_1:
    ; Print first part of the string (until X)
    LEA SI, CHAT_R1_REPLY1
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after X until Y)
    CALL PRINT_UNTIL_Y
    
    ; Print the position value
    MOV DL, TEMP_COUNT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y)
    CALL PRINT_REST
    JMP R1_REPLY_DONE
    
R1_REPLY_2:
    ; Print first part of the string (until X)
    LEA SI, CHAT_R1_REPLY2
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print middle part (from after X until Y)
    CALL PRINT_UNTIL_Y
    
    ; Print the position value
    MOV DL, TEMP_COUNT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after Y)
    CALL PRINT_REST
    JMP R1_REPLY_DONE
    
R1_REPLY_3:
    ; Print first part of the string (until X)
    LEA SI, CHAT_R1_REPLY3
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after X)
    CALL PRINT_REST
    JMP R1_REPLY_DONE
    
R1_REPLY_4:
    ; Print first part of the string (until X)
    LEA SI, CHAT_R1_REPLY4
    CALL PRINT_UNTIL_X
    
    ; Print the actual digit value
    MOV DL, TEMP_DIGIT
    MOV AH, 02h
    INT 21h
    
    ; Print the rest of the string (after X)
    CALL PRINT_REST
    
R1_REPLY_DONE:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
CHAT_REPLY_R1 ENDP

; Chat reply 2 for R (right) statuses
CHAT_REPLY_R2 PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
      ; Use simple rotating index system (0, 1, 2, 3, back to 0...)
    XOR SI, SI
    MOV AL, CHAT_REPLY_R2_INDEX
    MOV SI, AX
    
    ; Save the index value in DH for later use
    MOV DH, CHAT_REPLY_R2_INDEX
    
    ; Increment index for next time and wrap if needed
    INC CHAT_REPLY_R2_INDEX
    CMP CHAT_REPLY_R2_INDEX, 4   ; 4 R2 replies
    JB R2_CONTINUE_REPLY
    MOV CHAT_REPLY_R2_INDEX, 0   ; Reset to 0
    
R2_CONTINUE_REPLY:
    ; Simple rotation system
    ; Choose appropriate reply based on saved index in DH
    CMP DH, 0
    JE R2_REPLY_1
    CMP DH, 1
    JE R2_REPLY_2
    CMP DH, 2
    JE R2_REPLY_3
    JMP R2_REPLY_4
    
R2_REPLY_1:
    LEA DX, CHAT_R2_REPLY1
    CALL PRINT_STRING
    JMP R2_REPLY_DONE
    
R2_REPLY_2:
    LEA DX, CHAT_R2_REPLY2
    CALL PRINT_STRING
    JMP R2_REPLY_DONE
    
R2_REPLY_3:
    LEA DX, CHAT_R2_REPLY3
    CALL PRINT_STRING
    JMP R2_REPLY_DONE
    
R2_REPLY_4:
    LEA DX, CHAT_R2_REPLY4
    CALL PRINT_STRING
    
R2_REPLY_DONE:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
CHAT_REPLY_R2 ENDP

; Helper procedure to print a string until X character
PRINT_UNTIL_X PROC
    PUSH AX
    PUSH DX
    
PRINT_NEXT_CHAR_X:
    MOV AL, [SI]
    CMP AL, 'X'
    JE FOUND_X
    
    ; Print the current character
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    
    INC SI
    JMP PRINT_NEXT_CHAR_X
    
FOUND_X:
    ; Skip the X character (position SI now points to X)
    INC SI
    
    POP DX
    POP AX
    RET
PRINT_UNTIL_X ENDP

; Helper procedure to print from after X until Y
PRINT_UNTIL_Y PROC
    PUSH AX
    PUSH DX
    
PRINT_NEXT_CHAR_Y:
    MOV AL, [SI]
    CMP AL, 'Y'
    JE CHECK_Y_TYPE
    
    ; Not Y, print it
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    INC SI
    JMP PRINT_NEXT_CHAR_Y
    
CHECK_Y_TYPE:
    ; Check if it's Y1 or Y2 (which are different from Y)
    MOV AL, [SI+1]
    CMP AL, '1'
    JE SKIP_THIS_CHAR
    CMP AL, '2'
    JE SKIP_THIS_CHAR
    
    ; It's a regular 'Y', we found our target
    JMP FOUND_Y
    
SKIP_THIS_CHAR:
    INC SI
    JMP PRINT_NEXT_CHAR_Y
    
FOUND_Y:
    ; Skip the Y character (position SI now points to Y)
    INC SI  ; Skip Y
    
    POP DX
    POP AX
    RET
PRINT_UNTIL_Y ENDP

; Helper procedure to print from after X until Y1
PRINT_UNTIL_Y1 PROC
    PUSH AX
    PUSH DX
    
PRINT_NEXT_CHAR_Y1:
    ; Check for Y1 sequence
    MOV AL, [SI]
    CMP AL, 'Y'
    JNE NOT_Y1_START
    
    MOV AL, [SI+1]
    CMP AL, '1'
    JE FOUND_Y1
    
NOT_Y1_START:
    ; Print the current character
    MOV AL, [SI]
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    
    INC SI
    JMP PRINT_NEXT_CHAR_Y1
    
FOUND_Y1:
    ; Skip Y1 (SI now points to Y in Y1)
    INC SI  ; Skip Y
    INC SI  ; Skip 1
    
    POP DX
    POP AX
    RET
PRINT_UNTIL_Y1 ENDP

; Helper procedure to print from after Y1 until Y2
PRINT_UNTIL_Y2 PROC
    PUSH AX
    PUSH DX
    
PRINT_NEXT_CHAR_Y2:
    ; Check for Y2 sequence
    MOV AL, [SI]
    CMP AL, 'Y'
    JNE NOT_Y2_START
    
    MOV AL, [SI+1]
    CMP AL, '2'
    JE FOUND_Y2
    
NOT_Y2_START:
    ; Print the current character
    MOV AL, [SI]
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    
    INC SI
    JMP PRINT_NEXT_CHAR_Y2
    
FOUND_Y2:
    ; Skip Y2 (SI now points to Y in Y2)
    INC SI  ; Skip Y
    INC SI  ; Skip 2
    
    POP DX
    POP AX
    RET
PRINT_UNTIL_Y2 ENDP

; Helper procedure to print the rest of a string (after a placeholder)
PRINT_REST PROC
    PUSH AX
    PUSH DX
    
PRINT_NEXT_CHAR_REST:
    MOV AL, [SI]
    
    ; Check if we've reached the end of string ($)
    CMP AL, '$'
    JE END_OF_STRING
    
    ; Print the current character
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    
    INC SI
    JMP PRINT_NEXT_CHAR_REST
    
END_OF_STRING:
    POP DX
    POP AX
    RET
PRINT_REST ENDP

; Procedure to print a byte in decimal format
; Input: AL = byte to print
PRINT_BYTE_DEC PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ; Initialize variables
    MOV AH, 0       ; Clear high byte of AX (AL already has the value)
    MOV BX, 10      ; Divisor for decimal conversion
    MOV CX, 0       ; Digit counter
    
    ; Special case for zero
    CMP AL, 0
    JNE CONVERT_TO_DIGITS
    
    ; Print zero directly
    MOV DL, '0'
    MOV AH, 02h
    INT 21h
    JMP BYTE_DEC_DONE
    
CONVERT_TO_DIGITS:
    ; Divide by 10 and push remainder
    MOV DX, 0       ; Clear high word for division
    DIV BX          ; AX / 10, quotient in AX, remainder in DX
    PUSH DX         ; Push remainder (0-9)
    INC CX          ; Increment digit counter
    
    ; Check if done
    CMP AX, 0
    JNE CONVERT_TO_DIGITS
    
PRINT_DIGITS:
    ; Pop and print each digit
    POP DX          ; Pop a digit (0-9)
    ADD DL, '0'     ; Convert to ASCII
    MOV AH, 02h     ; DOS print char function
    INT 21h
    LOOP PRINT_DIGITS
    
BYTE_DEC_DONE:
    POP DX
    POP CX
    POP BX
    POP AX
    RET
PRINT_BYTE_DEC ENDP

; Procedure to save chat RWC counts before resetting
SAVE_CHAT_COUNTS PROC
    PUSH AX
    ; Store current RWC counts before anything else
    MOV AL, CHAT_DIGIT_R_COUNT
    MOV STORED_CHAT_R_COUNT, AL
    MOV AL, CHAT_DIGIT_C_COUNT
    MOV STORED_CHAT_C_COUNT, AL
    MOV AL, CHAT_DIGIT_W_COUNT
    MOV STORED_CHAT_W_COUNT, AL
    POP AX
    RET
SAVE_CHAT_COUNTS ENDP

; Procedure to restore chat RWC counts after processing
RESTORE_CHAT_COUNTS PROC
    PUSH AX
    ; Update current counts with stored counts (cumulative)
    MOV AL, CHAT_DIGIT_R_COUNT
    ADD AL, STORED_CHAT_R_COUNT
    MOV CHAT_DIGIT_R_COUNT, AL
    MOV AL, CHAT_DIGIT_C_COUNT
    ADD AL, STORED_CHAT_C_COUNT
    MOV CHAT_DIGIT_C_COUNT, AL
    MOV AL, CHAT_DIGIT_W_COUNT
    ADD AL, STORED_CHAT_W_COUNT
    MOV CHAT_DIGIT_W_COUNT, AL
      ; Reset stored counts after adding to current
    MOV STORED_CHAT_R_COUNT, 0h
    MOV STORED_CHAT_C_COUNT, 0h
    MOV STORED_CHAT_W_COUNT, 0h
    POP AX
    RET
RESTORE_CHAT_COUNTS ENDP

; Procedure to reset all chat keyword variables
RESET_CHAT_VARIABLES PROC
    PUSH AX
    PUSH BX
    PUSH CX
    
    ; Reset chat reply indices first
    MOV CHAT_REPLY_W_INDEX, 0
    MOV CHAT_REPLY_C_INDEX, 0
    MOV CHAT_REPLY_R1_INDEX, 0
    MOV CHAT_REPLY_R2_INDEX, 0
    
    ; Reset all chat digit counts (0-9)
    MOV CHAT_DIGIT_0_COUNT, 0
    MOV CHAT_DIGIT_1_COUNT, 0
    MOV CHAT_DIGIT_2_COUNT, 0
    MOV CHAT_DIGIT_3_COUNT, 0
    MOV CHAT_DIGIT_4_COUNT, 0
    MOV CHAT_DIGIT_5_COUNT, 0
    MOV CHAT_DIGIT_6_COUNT, 0
    MOV CHAT_DIGIT_7_COUNT, 0
    MOV CHAT_DIGIT_8_COUNT, 0
    MOV CHAT_DIGIT_9_COUNT, 0
    
    ; Reset all chat RWC statuses (0-9)
    MOV CHAT_DIGIT_0_RWC, 'N'
    MOV CHAT_DIGIT_1_RWC, 'N'
    MOV CHAT_DIGIT_2_RWC, 'N'
    MOV CHAT_DIGIT_3_RWC, 'N'
    MOV CHAT_DIGIT_4_RWC, 'N'
    MOV CHAT_DIGIT_5_RWC, 'N'
    MOV CHAT_DIGIT_6_RWC, 'N'
    MOV CHAT_DIGIT_7_RWC, 'N'
    MOV CHAT_DIGIT_8_RWC, 'N'
    MOV CHAT_DIGIT_9_RWC, 'N'
    
    ; Reset acknowledgement count
    MOV CHAT_ACK_COUNT, 0
    
    ; Reset RWC counts
    MOV CHAT_DIGIT_R_COUNT, 0
    MOV CHAT_DIGIT_C_COUNT, 0
    MOV CHAT_DIGIT_W_COUNT, 0
    
    ; Reset stored counts as well
    MOV STORED_CHAT_R_COUNT, 0
    MOV STORED_CHAT_C_COUNT, 0    
    MOV STORED_CHAT_W_COUNT, 0
    
    ; Reset all the chat flags to start fresh
    MOV CHAT_REPLY_W_FLAGS[0], 0
    MOV CHAT_REPLY_W_FLAGS[1], 0
    MOV CHAT_REPLY_W_FLAGS[2], 0
    
    MOV CHAT_REPLY_C_FLAGS[0], 0
    MOV CHAT_REPLY_C_FLAGS[1], 0
    MOV CHAT_REPLY_C_FLAGS[2], 0
    
    MOV CHAT_REPLY_R1_FLAGS[0], 0
    MOV CHAT_REPLY_R1_FLAGS[1], 0
    MOV CHAT_REPLY_R1_FLAGS[2], 0
    MOV CHAT_REPLY_R1_FLAGS[3], 0
    
    MOV CHAT_REPLY_R2_FLAGS[0], 0
    MOV CHAT_REPLY_R2_FLAGS[1], 0
    MOV CHAT_REPLY_R2_FLAGS[2], 0
    MOV CHAT_REPLY_R2_FLAGS[3], 0
    
    POP CX
    POP BX
    POP AX
    RET
RESET_CHAT_VARIABLES ENDP

END MAIN