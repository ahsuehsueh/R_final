source('readdata.R')

#確認資料會不會跟著選擇的颱風進行篩選
output$data_T <- renderTable({

  dt2 = dt[dt$days==input$day_T, ]
  dt2 = dt2[dt2$disaster.event==input$typhoon, ]
  dt2
  
})

output$hist_ty <- renderPlot({
  hist=sum_ty[sum_ty$name == input$typhoon,]
  
  canvas <- ggplot(hist,aes(x=day,y=count))+geom_histogram(stat='identity')
  canvas
})



