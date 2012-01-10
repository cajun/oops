Oops.Views.Tips ||= {}

class Oops.Views.Tips.NewView extends Backbone.View
  template: JST["backbone/templates/tips/new"]

  events:
    "submit #new-tip": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (tip) =>
        @model = tip
        window.location.hash = "/#{@model.id}"

      error: (tip, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
