import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text("Score 0")
            }
            Button(action:{
                print("TEst")
            }, label: {
                Image("dog")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action:{}, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            Button(action:{}, label: {
                Image("fox")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
