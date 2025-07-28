# Rails Pacman webapp
Ruby on rails webapp to play pacman in single player and multiplayer mode. Fork for usage on Ugreen Nas systems (Linux) via Portainer. Multiplayer also now includes ghosts and is functional. 

![Landing Page](./app/assets/images/landing-page.png)

## Table of contents
* [Description](#description)
* [Features](#features)
* [Prerequisites](#prerequisites)
* [Setup](#setup)
* [Status](#status)
* [Credits](#credits)

## Description
A webapp to play Pacman in single player and multiplayer mode, maintain statistics of games played, view leaderboards etc. This project was developed out of love for the classic game pacman and to understand the concepts of real-time multiplayer gameplaying.

### Technologies used
* Backend - Ruby on Rails 
* Frontend - Bulma CSS framework
* Redis, for a real time gameplaying experience.

## Features

Following features have been implemented:
* Play single player mode Pacman as guest (without user account).
* Play Multiplayer Mode, where two players can race with each other to finish all the pellets first :D
* Mutiplayer now includes ghosts which can be seen by both players
* Create user account and save your games.
* Maintain user game statistics - high score, no of wins total games played etc.
* View Leaderboards (Based on no of total wins, high score and total score).

Following features are currently in development:
* A multiplayer mode where 2-4 players will play in the same maze. Players will receive power pellets randomly which will enable them to eat other players. The one with the highest score wins! 
* Adding supercool sound effects to the game.

## Prerequisites
* Ruby >=2.7.2
* Rails 6.1.3.1
* Redis >=3.0

Check your version using ```ruby -v ``` and ```rails -v```

## Setup

### Using Docker

Build a docker image and run it using docker-compose. This is especially useful if your system does not meet above dependencies.
```
docker-compose build
docker-compose up
```
The project is now hosted on ```http://127.0.0.1:3000```

### Step by Step

Portainer Setup
1. Configure docker-compose.yml as required
2. Add Stack from Repo with following env variables
RAILS_ENV=production
DATABASE_URL=postgres://postgres:password@pacman_db:5432 #Change password as set in docker-compose.yml
SECRET_KEY_BASE=[xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx] #64 character long min
config.hosts="xx.xx.xx" #If using Cloudflared put link here

