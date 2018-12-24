import React from 'react';
import ReactDOM from 'react-dom';
import './css/index.css';
import * as serviceWorker from './serviceWorker';
import Header from './header';
import 'bootstrap';
import 'bootstrap/js/dist/util';
import 'bootstrap/js/dist/dropdown';
import 'bootstrap/dist/css/bootstrap.min.css';
import Footer from './footer';
import Start from './start_container';
import LOAD from 'react-svg';
ReactDOM.render(
  <div className="wrapper">
    <Header />
    <Start />
    <Footer />
  </div>,
  document.getElementById('root')
);
serviceWorker.unregister();
