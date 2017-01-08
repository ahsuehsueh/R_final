source('readdata.R')

#確認資料會不會跟著選擇的颱風進行篩選
output$data_E <- renderTable({
  
  dt2_E = dt_E[dt_E$days==input$day_E, ]
  dt2_E = dt2_E[dt2_E$disaster.event==input$earth, ]
  dt2_E
  
})

output$hist_eq <- renderPlot({
  hist=sum_eq[sum_eq$name == input$earth,]
  
  canvas <- ggplot(hist,aes(x=day,y=count))+geom_histogram(stat='identity')
  canvas
})
