Oops.Views.Tips ||= {}

class Oops.Views.Tips.EditView extends Backbone.View
  template : JST["backbone/templates/tips/edit"]

  events :
    "submit #edit-tip" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (tip) =>
        @model = tip
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
