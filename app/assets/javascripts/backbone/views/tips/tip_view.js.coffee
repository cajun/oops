Oops.Views.Tips ||= {}

class Oops.Views.Tips.TipView extends Backbone.View
  template: JST["backbone/templates/tips/tip"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
