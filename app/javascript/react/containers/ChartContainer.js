import React, { Component } from 'react';
import ReactDOM from "react-dom";
import Chart from "react-google-charts";

const data = [
  ["Cryptocurrency", "Current Price", { role: "style" }],
  ["BTC", 600, "color: gray"],
  ["ETH", 200, "color: #76A7FA"],
  ["LTC", 50, "color: blue"],
  ["ETC", 10, "stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF"]
];

class ChartContainer extends Component {
  constructor(props) {
  super(props);
  this.state = {
    cryptocurrency_array: []
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
    this.setState({cryptocurrency_array: body})
  })
}
  render() {
    debugger
    // const data = (this.state.cryptocurrency_array || {}).data
    // let relevantData =
    // for (const key in data) {
    //   const currency = data[key]
    //
    //   if(currency) {
    //     console.log(currency.symbol)
    //   }

    // }
    let counter = 0;
    let dataCrypto = ["symbol", "price"]
    let length = this.state.cryptocurrency_array.length
    while (counter < length) {
      dataCrypto.push([parseInt(this.state.cryptocurrency_array["data"][1]["qoutes"]["USD"]["symbol"], this.state.cryptocurrency_array["data"][1]["qoutes"]["USD"]["price"])])
      console.log(dataCrypto)
      counter = counter + 1;
    }
    return (
      <div className="App">
      <Chart
      chartType="Bar"
      width="80%"
      height="400px"
      data={dataCrypto}
      align="center" />
      </div>
    )
  }
}
export default ChartContainer;
