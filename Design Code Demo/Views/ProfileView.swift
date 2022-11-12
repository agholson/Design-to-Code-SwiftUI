//
//  ProfileView.swift
//  Design Code Demo
//
//  Created by Leone on 10/30/22.
//

import SwiftUI

struct ProfileView: View {
    
    // Defines the size for each of the cards
    let colSize = GridItem(.flexible(), spacing: 15, alignment: .center)
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            // Background color
            Color("background-gray")
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    // MARK: Profile Analytics & Heading
                    Group {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Profile Analytics")
                                    .font(.rtitle)
                                Text("@codewithchris")
                                    .font(.rsubheadline)
                            }
                            Spacer()
                            // Logo
                            Image("logo")
                                .clipShape(Circle())
                                .frame(height: 60)
                        }
                    }
                    
                    Spacer()
                    
                    // MARK: - Basic Stats Cards
                    Group {
                        SubHeading(subheadline: "Basic Stats")
                        
                        // Defines the shape for each of the cards
                        LazyVGrid(columns: Array.init(repeating: colSize, count: 3)) {
                            
                            MetricCard(number: "12,391", icon: "profile-metric-icon-follows", caption: "Follower Count")
                            MetricCard(number: "235", icon: "profile-metric-icon-comment", caption: "Total Posts")
                            MetricCard(number: "2,301", icon: "profile-metric-icon-engagement", caption: "Engagement Rate")
                            
                        }
                    }
                    // MARK: - Last 30 Days + Metrics Card Bar
                    Group {
                        SubHeading(subheadline: "In the Last 30 Days")
                        
                        MetricCardBar()
                    }
                    // MARK: - Six Cards
                    Group {
                        // Display a grid with three cards
                        LazyVGrid(columns: Array.init(repeating: colSize, count: 3)) {
                            
                            MetricCard(number: "12,391", icon: "profile-metric-icon-like", caption: "Total Likes")
                            MetricCard(number: "235", icon: "profile-metric-icon-comment", caption: "Total Posts")
                            MetricCard(number: "3:30 PM", icon: "profile-metric-icon-day", caption: "Usual Time of Posting")
                            
                        }
                        .padding(.top, 8)
                        
                        LazyVGrid(columns: Array.init(repeating: colSize, count: 3)) {
                            
                            MetricCard(number: "193", icon: "profile-metric-icon-like", caption: "Average Likes per Post")
                            MetricCard(number: "14", icon: "profile-metric-icon-comment", caption: "Avg Comments per Post")
                            MetricCard(number: "Friday", icon: "profile-metric-icon-engagement", caption: "Usual day of Posting")
                            
                        }
                        .padding(.top, 8)
                    }
                    // MARK: - 30 Most-Used Hashtags
                    Group {
                        // Display the title and icon
                        HStack {
                            SubHeading(subheadline: "30 Most Used Hashtags")
                            
                            Spacer()
                            Image(systemName: "doc.on.doc.fill")
                                .foregroundColor(Color("main-blue"))
                            
                            Button {
                                // TODO: Button action
                            } label: {
                                Text("Copy Hashtags")
                                    .font(.rcaption)
                                    .foregroundColor(Color("main-blue"))
                            }
                        }
                        // Display the hashtags here
                        HashtagCloud()
                    }
                    
                    // MARK: - Top 5 Posts by
                    Group {
                        SubHeading(subheadline: "Top 5 Posts", caption: "By Likes and Comments")
                        
                        // Top three posts
                        LazyVGrid(columns: Array.init(repeating: colSize, count: 3)) {
                            // Make it repeat three times
                            ForEach(0..<3) {_ in
                                PostCard()
                            }
                        }
                        
                        // Following other two posts
                        LazyVGrid(columns: Array.init(repeating: colSize, count: 3)) {
                            // Make it repeat twice
                            ForEach(0..<2) { _ in
                                PostCard()
                            }
                        }
                        
                    }
                    
                    // MARK: - Common Hashtags of Top 5 Posts
                    Group {
                        // Display the title and icon
                        HStack {
                            SubHeading(subheadline: "Common Hashtags", caption: "Of the top 5 Posts")
                            
                            Spacer()
                            Image(systemName: "doc.on.doc.fill")
                                .foregroundColor(Color("main-blue"))
                            
                            Button {
                                // TODO: Button action
                            } label: {
                                Text("Copy Hashtags")
                                    .font(.rcaption)
                                    .foregroundColor(Color("main-blue"))
                            }
                        }
                        // Display the hashtags here
                        HashtagCloud()
                    }
                    
                    Spacer()
                    
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

