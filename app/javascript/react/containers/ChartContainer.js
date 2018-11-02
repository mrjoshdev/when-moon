import React, { Component } from 'react';
import ReactDOM from "react-dom";
import Chart from "react-google-charts";

const data = [
  ["Cryptocurrency", "Current Price", { role: "style" }],
  ["BTC", 600, "color: gray"],
  ["ETH", 200, "color: #76A7FA"],
  ["LTC", 50, "color: blue"],
  ["ETC", 10, "stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF"],
  [
    "2050",
    28,
    "stroke-color: #871B47; stroke-opacity: 0.6; stroke-width: 8; fill-color: #BC5679; fill-opacity: 0.2"
  ]
];
class ChartContainer extends Component {
  render() {
    return (
      <div className="App">
        <Chart chartType="Bar" width="80%" height="400px" data={data} align="center" />
      </div>
    )
  }
}
export default ChartContainer;
