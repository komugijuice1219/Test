

//
//  ContentView.swift
//  IOSFirstApp_26
//
//  Created by cmStudent on 2024/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    init() {
        UIPageControl.appearance()
            .currentPageIndicatorTintColor = .black
        UIPageControl.appearance()
            .pageIndicatorTintColor =
            .gray.withAlphaComponent(0.5)
    }
    
    var body: some View {
        TabView(selection: $selectedTag) {
            DisneyTabView()
                .tabItem {
                    Label("disney", systemImage: "lasso.badge.sparkles")
            }.tag(1)
            
            FilmTabView()
                .tabItem {
                Label("film", systemImage: "camera.fill")
            }.tag(2)
            
            MealTabView()
                .tabItem {
                Label("meal", systemImage: "cup.and.saucer")
            }.tag(3)
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

struct DisneyTabView:View {
    var body: some View{
        VStack {
          
            Image(systemName: "sparkles")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("[Disney Sea]").font(.system(size: 20))
           
                .padding(.bottom)
            Image("disney")
                .resizable(resizingMode: .stretch)
                .frame(width: 320,height: 590)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 20)
                .padding(.bottom)
            
            Text("[TEXT]").font(.system(size: 20))
            
               
        }
    }
}

struct FilmTabView:View {
    var body: some View{
        VStack {
            Image(systemName: "film.fill")
                .foregroundColor(.gray)
            
            Text("[フィルム写真]").font(.system(size: 20))
                .padding(.bottom)
            Image("film2")
                .resizable(resizingMode: .stretch)
                .frame(width: 320,height: 590)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 20)
                .padding(.bottom)
//            Image(systemName: "cloud.sun")
//                .resizable()
//                .frame(width: 100,height: 100)
            Text("[TEXT]").font(.system(size: 20))
        }
    }
}

struct MealTabView:View {
    var body: some View{
        VStack {
            Image(systemName: "fork.knife")
                .foregroundColor(.orange)
            Text("[料理＆ドラマ]").font(.system(size: 20))
                .padding(.bottom)
            Image("meal")
                .resizable(resizingMode: .stretch)
                .frame(width: 320,height: 590)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 20)
                .padding(.bottom)
           
            Text("[TEXT]").font(.system(size: 20))
        }
    }
}

#Preview {
    ContentView()
}
#Preview {
    DisneyTabView()
}
#Preview {
    FilmTabView()
}
#Preview {
    MealTabView()
}
