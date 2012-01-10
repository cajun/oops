class Oops.Routers.TipsRouter extends Backbone.Router
  initialize: (options) ->
    @tips = new Oops.Collections.TipsCollection()
    @tips.reset options.tips

  routes:
    "/new"      : "newTip"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newTip: ->
    @view = new Oops.Views.Tips.NewView(collection: @tips)
    $("#tips").html(@view.render().el)

  index: ->
    @view = new Oops.Views.Tips.IndexView(tips: @tips)
    $("#tips").html(@view.render().el)

  show: (id) ->
    tip = @tips.get(id)

    @view = new Oops.Views.Tips.ShowView(model: tip)
    $("#tips").html(@view.render().el)

  edit: (id) ->
    tip = @tips.get(id)

    @view = new Oops.Views.Tips.EditView(model: tip)
    $("#tips").html(@view.render().el)
