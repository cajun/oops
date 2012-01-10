Oops.Views.Tips ||= {}

class Oops.Views.Tips.ShowView extends Backbone.View
  template: JST["backbone/templates/tips/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
