React                 = require 'react'
CityBikeAvailability  = require './city-bike-availability'
CityBikeUse           = require './city-bike-use'
ComponentUsageExample = require '../documentation/component-usage-example'
Example = require '../documentation/example-data'


CityBikeContent = (props) ->

  render: ->
    <div className="city-bike-container">
      <CityBikeAvailability
        bikesAvailable={props.station.bikesAvailable}
        totalSpaces={props.station.bikesAvailable + props.station.spacesAvailable}/>
      <CityBikeUse/>
    </div>

CityBikeContent.displayName = "CityBikeContent"

CityBikeContent.description =
    <div>
      <p>Renders content of a citybike card</p>
      <ComponentUsageExample description="">
        <CityBikeContent station={Example.station}/>
      </ComponentUsageExample>
    </div>

CityBikeContent.propTypes =
  station: React.PropTypes.object.isRequired

module.exports = CityBikeContent