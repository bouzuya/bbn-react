React = require 'react'
{EntryView} = require './entry-view'

class EntryDetailView extends React.Component
  constructor: (props) ->
    super props

  render: ->
    return null unless @props.entry?
    React.createElement 'div', { className: 'entry-detail' },
      React.createElement EntryView,
        entry: @props.entry
        isOpen: true
        onHeaderClick: @props.onClose

module.exports.EntryDetailView = EntryDetailView