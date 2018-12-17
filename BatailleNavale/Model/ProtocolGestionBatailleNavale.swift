//
//  ProtocolGestionBatailleNavale.swift
//  BatailleNavale
//
//  Created by formation2 on 17/12/2018.
//  Copyright © 2018 diginamic. All rights reserved.
//

import Foundation

protocol GestionBatailleNavale {
        
// create players and their own gameboard
func initializeGame(player1: String, player2: String)

// place boats randomly on the board
func placeBoatRandomly()

//place all boats of current player on the gameboard and do the same for the other player when finished
func placeBoat(x: Character, y: Int, orientation: Orientation, boatLength: Int) throws

//get remaining boat positions of current player
func remainingBoatPositions() -> [Int]

//start a new game with the same players
func beginGameWithSamePlayers()

//fire's at the x and y position
func fire(x: Character, Int: Int)

//get players of the current game
func getPlayers() -> [Player]

//get the gameboard of the player with the id
func getGameBoard(id: Int) -> GameBoard

//get current player
func getCurrentPlayer() -> Player

//get current player gameboard
func getCurrentPlayerGameBoard() -> GameBoard

//get the player who win the game
func getWinner() -> Player

// return true if the game is ended
func isGameEnded() -> Bool

}
