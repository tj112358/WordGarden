//
//  ContentView.swift
//  WordGarden
//
//  Created by Thea Yocum on 1/29/26.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"]
    @State private var gameStatusMessage = "How many guesses to uncover the hidden word?"
    @State private var currentWord = 0
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    
    var body: some View {
        VStack {
            HStack{
                VStack (alignment: .leading){
                    Text("Words guessed: \(wordsGuessed)")
                    Text("Words missed: \(wordsMissed)")
                }
                Spacer()
                VStack (alignment: .trailing){
                    Text("Words to guess: \(wordsToGuess.count - (wordsGuessed + wordsMissed))")
                    Text("Words in game: \(wordsToGuess.count)")
                }
            }
            .padding(.horizontal)
            Spacer()
            Text(gameStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            //TODO: switch to wordsToGuess(currentWord)
            Text("_ _ _ _ _")
                .font(.title)
            
            if playAgainHidden {
                
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    Button("Guess a letter") {
                        //TODO: Guess a button action here
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            } else {
                
                Button("Another word?") {
                    //TODO: annother word action here
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            }
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
