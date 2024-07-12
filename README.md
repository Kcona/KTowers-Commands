# KTowers game manual
## 1. Join the server
Make the production team and preferably the players too join the Minecraft server.

## 2. Reload
Do ``/reload`` to reload the datapacks and ensure that everything is working correctly.

## 3. Join the teams
Make each user join their corresponding team.

 - To join the **production** team do: ``/team join production <User>``

- To join the **Blue** team do: ``/execute as <Player> run function ktowers:join/blue``

- To join the **Red** team do: ``/execute as <Player> run function ktowers:join/red``

## 4. Ensure everything is ready
- The production team is ready
- Camera is ready, refer to the [documentation](https://github.com/Kcona/CameraShortcuts).
- If you are streaming ensure everything is working properly.

## 5. Start the game
Do ``/function ktowers:game/start`` to start the game. Players will automatically be sent to their respective bases and the game will commence.

If one team has more points than the other after 1h 20min and the automatic win condition has not been met then you will have to concede the victory manually by doing ``/function ktowers:game/win_blue`` or ``/function ktowers:game/win_red`` depending on which team won.

If there is a draw after 1h 20min the Golden Point time will start, it has a duration of 10 additional minutes. If a point is scored during the Golden Point time you will have to give the victory manually, same commands as the case before.

If there is a draw even after the Golden Point time then you will have to procede with the arena deathmatch. Here is a how-to:

1. Do ``/function ktowers:arena/prepare``. Players will be sent to their deliberation rooms. There they will decide which players will play in the arena.
2. After all players have been selected you will have to commence the deathmatch against by doing ``/function ktowers:arena/start``. This will send the figthers to the arena, the non-fighters to their boxes of the coliseum and will start a countdown after which the deathmatch will trully commence.
3. One player will be the last standing or be the last one to die, this represents which team is the winner. You will have to concede the victory manually.
