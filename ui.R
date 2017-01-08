library(shiny)
library(shinythemes)
library(leaflet)
library(readr)
library(ggplot2)
source('readdata.R')


navbarPage("災難",
           theme = shinytheme("flatly"),
           
           tabPanel("typhoon",
                    titlePanel("Old Faithful Geyser Data"),
                    
                    sidebarLayout(
                      sidebarPanel(
                        
                        
                        selectInput("typhoon", "颱風:",
                                    c("薇帕颱風 (Wipha)" = "01_Wipha",
                                      "夏浪颱風 (Halong)" = "02_Halong",
                                      "卡玫基颱風 (Kalmaegi)" = "06_Kalmaegi",
                                      "雷馬遜颱風 (Rammasun Manila)" = "08_Rammasun_Manila"
                                    )),
                        
                        sliderInput("day_T",
                                    "DAY:",
                                    min = 1,
                                    max = 60,
                                    value = 1)
                      ),
                      
                      mainPanel(
                        tabsetPanel(
                          tabPanel("地圖",
                                   tableOutput("data_T")
                          ),
                          tabPanel("統計圖表",
                                   plotOutput("hist_ty")
                                   
                          ),
                          tabPanel("災難介紹")
                        )
                      )
                    )       
           ),
           
           tabPanel("earthquakes",
                    titlePanel("Old Faithful Geyser Data"),
                    
                    sidebarLayout(
                      sidebarPanel(
                        
                        
                        selectInput("earth", "地震:",
                                    c("保和地震 (Bohol)" = "12_Bohol",
                                      "伊基克地震 (Iquique)" = "13_Iquique",
                                      "南納帕地震 (South Napa)" = "14_Napa"
                                    )),
                        
                        sliderInput("day_E",
                                    "DAY:",
                                    min = 1,
                                    max = 35,
                                    value = 1)
                      ),
                      
                      mainPanel(
                        tabsetPanel(
                          tabPanel("地圖",
                                   tableOutput("data_E")
                          ),
                          tabPanel("統計圖表",
                                  plotOutput("hist_eq")         
                                   
                          ),
                          tabPanel("災難介紹")
                        )
                      )
                    )       
                    
           ),
           
           tabPanel("winter storms",
                    titlePanel("Old Faithful Geyser Data"),
                    
                    sidebarLayout(
                      sidebarPanel(
                        
                        
                        selectInput("winter", "暴風雪:",
                                    c("Norfolk" = "21_Norfolk",
                                      "Hamburg" = "22_Hamburg",
                                      "Atlanta" = "23_Atlanta"
                                    )),
                        
                        sliderInput("day_W",
                                    "DAY:",
                                    min = 1,
                                    max = 40,
                                    value = 1)
                      ),
                      
                      mainPanel(
                        tabsetPanel(
                          tabPanel("地圖",
                                   tableOutput("data_W")
                          ),
                          tabPanel("統計圖表",
                                  plotOutput("hist_st")                 
                          ),
                          tabPanel("災難介紹")
                        )
                      )
                    )       
                    
           ),
           
           tabPanel("thunderstorms",
                    titlePanel("Old Faithful Geyser Data"),
                    
                    sidebarLayout(
                      sidebarPanel(
                        
                        
                        selectInput("thunder", "雷雨:",
                                    c("Phoenix" = "31_Phoenix",
                                      "Detroit" = "32_Detroit",
                                      "Baltimore" = "33_Baltimore"
                                    )),
                        
                        sliderInput("day_Thun",
                                    "DAY:",
                                    min = 1,
                                    max = 35,
                                    value = 1)
                      ),
                      
                      mainPanel(
                        tabsetPanel(
                          tabPanel("地圖",
                                   tableOutput("data_Thun")
                          ),
                          tabPanel("統計圖表",
                                   plotOutput("hist_td")         
                          ),
                          tabPanel("災難介紹")
                        )
                      )
                    )       
                    
           ),
           
           tabPanel("wildfires",
                    titlePanel("Old Faithful Geyser Data"),
                    
                    sidebarLayout(
                      sidebarPanel(
                        
                        
                        selectInput("fire", "森林大火:",
                                    c("AuFire1" = "41_AuFire1",
                                      "AuFire2" = "42_AuFire2"
                                    )),
                        
                        sliderInput("day_F",
                                    "DAY:",
                                    min = 1,
                                    max = 35,
                                    value = 1)
                      ),
                      
                      mainPanel(
                        tabsetPanel(
                          tabPanel("地圖",
                                   tableOutput("data_F")
                          ),
                          tabPanel("統計圖表",
                                   plotOutput("hist_fr")                   
                          ),
                          tabPanel("災難介紹")
                        )
                      )
                    )       
                    
           )
)

