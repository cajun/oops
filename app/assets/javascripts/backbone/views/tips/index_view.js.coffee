Oops.Views.Tips ||= {}

class Oops.Views.Tips.IndexView extends Backbone.View
  template: JST["backbone/templates/tips/index"]

  initialize: () ->
    @options.tips.bind('reset', @addAll)

  addAll: () =>
    @options.tips.each(@addOne)

  addOne: (tip) =>
    view = new Oops.Views.Tips.TipView({model : tip})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(tips: @options.tips.toJSON() ))
    @addAll()

    return this
