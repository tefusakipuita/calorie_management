


// 最新のデータとグラフ

import SwiftUI

struct DataView: View {
    
    // MARK: - Property
    
    @State var showNewDataModal = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Background
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            
            VStack (spacing: 0) {
                
                // MARK: - Rectangle Data View
                RectangleDataView(showNewDataModal: $showNewDataModal)
                    .padding(.top, 60)
                
                
                // MARK: - Check Data Graph
                ZStack {
                    // MARK: - Background Rular
                    BackGroundRularView()
                    
                    // MARK: - Each Curve Graph
                    
                } //: ZStack
                
                
                Spacer(minLength: 0)
            } //: VStack
            
            
            
            
            
            // MARK: - Rectangle Data Modal
            if showNewDataModal {
                NewDataModal(showNewDataModal: $showNewDataModal)
            }
            
        } //: ZStack
        
    }
}

// MARK: - Preview

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
        DataView().previewDevice("iPhone 8")
    }
}
