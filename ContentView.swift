import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var userInput = ""
    
    var body: some View {
        VStack {
            Text("Hello")
                .font(.system(size: 70))
                .fontWeight(.heavy)
            Text("there!")
                .font(.system(size: 70))
                .fontWeight(.heavy)
            
            Image("hellocat")
                .resizable()
                .scaledToFit()
            
            TextField("Enter your text", text: $userInput)
                .padding()
                .font(.system(.title, design: .rounded))
                .border(.blue, width: 1.0)
                .padding()
            
            Button { 
                let utterance = AVSpeechUtterance(string: userInput)
                utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            
        
            
            } label: { 
                Text("Speak")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(20)
        }
    }
}
