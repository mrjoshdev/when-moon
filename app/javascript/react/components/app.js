import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import ReactDOM from "react-dom";
import ChartContainer from "../containers/ChartContainer";

const App = (props) => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path='/' component={ChartContainer} />
      </Router>
    </div>
  );
}

export default App;
