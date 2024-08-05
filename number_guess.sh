#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GUESS_GAME() {
  # random number between 1 and 1000
  NUMBER=$(( 1 + RANDOM % 1000 ))
  # insert new game
  NEW_GAME=$($PSQL "INSERT INTO games(user_id, number) VALUES($USER_ID, $NUMBER)")
  NEW_GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games")
  # declare guess variable
  GUESS=""
  # declare tries variable
  TRIES=0
  # request input
  echo "Guess the secret number between 1 and 1000:"
  while [[ $GUESS != $NUMBER ]]
  do
    read GUESS
    # check guess for integer
    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      # icrease tries counter
      TRIES=$(($TRIES + 1))
      # if guess is incorrect
      if [[ $GUESS -gt $NUMBER ]]
      then
        echo "It's lower than that, guess again:"
      elif [[ $GUESS -lt $NUMBER ]]
      then
        echo "It's higher than that, guess again:"
      else
        # update tries
        UPDATE_TRIES=$($PSQL "UPDATE games SET tries=$TRIES WHERE game_id=$NEW_GAME_ID")
        # correct message
        echo "You guessed it in $TRIES tries. The secret number was $NUMBER. Nice job!"
      fi
    else
      echo "That is not an integer, guess again:"
    fi
  done
}

# username input
echo "Enter your username:"
read USERNAME
# check database for user
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
# does not exist
if [[ -z $USER_ID ]]
then
  # insert user
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  if [[ $INSERT_USER == "INSERT 0 1" ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    GUESS_GAME
  fi
else
  # welcome and display game stats
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_TRIES=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_TRIES guesses."
  GUESS_GAME
fi
