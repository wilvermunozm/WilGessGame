import SwiftUI

struct ContentView: View {
    @State var correctAnswer = 0
    @State var score = 0
    @State var titleGame = "?"
    @State var subtitleGame = ""
    
    var body: some View {
        VStack {
            Text(titleGame)
                .font(.system(size: 40, weight: .semibold))
                .padding(.top, 100)
            Text(subtitleGame)
                .font(.system(size: 20, weight: .light))
                .padding(.bottom, 100)
            HStack{
                Spacer()
                Text("Score \(score)")
                    .font(.system(size: 15, weight: .semibold))
            }
            Button(action:{
                check(answer: 0)
            }, label: {
                Image("dog")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action:{
                check(answer: 1)
            }, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action:{
                check(answer: 2)
            }, label: {
                Image("fox")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Spacer()
        }
        .padding()
    }
    
    func check(answer: Int){
        if correctAnswer == answer {
            score += 1
            titleGame = "Success!!!"
        } else{
            titleGame = "Failed!!!"
            if(score != 0){
                score -= 1
            }
            
        }
        if (correctAnswer == 0){
            subtitleGame = "You clicked on the dog!"
        }
        else if (correctAnswer == 1){
            subtitleGame = "You clicked on the cat!"
        }
        else if (correctAnswer == 2){
            subtitleGame = "You clicked on the fox!"
        }
        randonCorrectAnswer()
    }
    
    func randonCorrectAnswer(){
        correctAnswer = Int.random(in: 0..<3)
    }
}

#Preview {
    ContentView()
}
