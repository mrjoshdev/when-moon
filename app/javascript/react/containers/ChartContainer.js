import React, { Component } from 'react';
import ReactDOM from "react-dom";
import Chart from "react-google-charts";

const data = [
  ["Cryptocurrency", "Current Price", { role: "style" }],
  ["BTC", 600, "color: gray"],
  ["ETH", 200, "color: #76A7FA"],
  ["LTC", 50, "color: blue"],
  ["ETC", 10, "stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF"],
];



class ChartContainer extends Component {
  constructor(props) {
  super(props);
  this.state = {
    symbol: "",
    crypto_array: []
    }
  }

  componentDidMount(){
    fetch (`https://api.coinmarketcap.com/v2/ticker/`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({crypto_array: body})
    })
  }

  render() {
    let counter = 0
    let dataCrypto = [["Symbol", "Price"]]
    if(this.state.crypto_array.length != 0){
      let counter = 0;
      dataCrypto.push([[counter, this.state.crypto_array.data["1"]["symbol"], this.state.crypto_array.data["1"]["quotes"]["USD"]["price"]]])
      console.log(dataCrypto)
      counter = counter + 1;
      let length = this.state.crypto_array.length
      // while (counter < length) {
      //   dataCrypto.push([counter+1, parseInt(this.state.crypto_array[counter])])
      //   console.log(dataCrypto)
      //   counter = counter + 1;
      // }
    }
    return (
      <div>
        <h1 className="chart-header user-info">Cryptocurrency Prices</h1>
        <div className="chart-div">
          <div className="App">
            <Chart
              chartType="Bar"
              className="chart"
              width="80%"
              height="400px"
              data={dataCrypto}
              />
          </div>
      </div>
    </div>
    )
  }
}
export default ChartContainer;
