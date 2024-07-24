---
[<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tic Tac Toe</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .board {
            display: grid;
            grid-template-columns: repeat(3, 100px);
            grid-gap: 5px;
            margin-top: 20px;
        }
        .cell {
            width: 100px;
            height: 100px;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            cursor: pointer;
            border: 1px solid #ccc;
            transition: background-color 0.3s;
        }
        .cell.win {
            background-color: yellow;
            animation: blink 1s infinite;
        }
        .menu {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .menu button {
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        @keyframes blink {
            0% { background-color: yellow; }
            50% { background-color: orange; }
            100% { background-color: yellow; }
        }
    </style>
</head>
<body>
    <div class="menu" id="menu">
        <button id="playerVsPlayer">Két játékos</button>
        <button id="playerVsRobot">Robot ellen</button>
    </div>
    <div class="board" id="board">
        <div class="cell" data-index="0"></div>
        <div class="cell" data-index="1"></div>
        <div class="cell" data-index="2"></div>
        <div class="cell" data-index="3"></div>
        <div class="cell" data-index="4"></div>
        <div class="cell" data-index="5"></div>
        <div class="cell" data-index="6"></div>
        <div class="cell" data-index="7"></div>
        <div class="cell" data-index="8"></div>
    </div>

    <audio id="backgroundMusic" loop>
        <source src="relaxing-music.mp3" type="audio/mp3">
        Your browser does not support the audio element.
    </audio>

    <script src="script.js"></script>
</body>
</html>
Uploading Untitled-4.html…]()
