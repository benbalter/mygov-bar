jQuery ->

  user = null
  
  #Notifications
  class Notification extends Backbone.Model
  
  
  class Notifications extends Backbone.Collection
  
    model: Notification
    
  
  #Tags
  class Tag extends Backbone.Model
  
  
  class Tags extends Backbone.Collection
  
    model: Tag
    
  #User
  class User extends Backbone.Model
  
  #login/out view
  class LogInOutView extends Backbone.View
  
    el: $ '#loginout'
    
    initialize: ->
      @render()
        
    render: ->
    
      if user?
        template = 'logout'
      else
        template = 'login'
        
      $(@el).html $('#' + template + '-template' ).html()
  
  
  log_in_out_view = new LogInOutView