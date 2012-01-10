class Oops.Models.Tip extends Backbone.Model
  paramRoot: 'tip'

  defaults:
    explaination: null
    fobar: null
    user: null

class Oops.Collections.TipsCollection extends Backbone.Collection
  model: Oops.Models.Tip
  url: '/tips'
