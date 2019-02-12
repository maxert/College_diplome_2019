import React, { Component } from 'react';
import './css/start.css';
import DoorUI from './js/button';
import axios from 'axios';
import SVG from 'react-svg';
class Start extends Component {
  constructor(props) {
    super(props);
    this.state = {
      masive: [],
    };
    // Request API.
  }
  componentDidMount() {
    axios
      .get(`http://localhost:1337/blockeds?id=1`)
      .then(response => {
        // Handle success.
        this.setState({ masive: response.data });
      })
      .catch(error => {
        // Handle error.
        console.log('An error occurred:', error);
      });
  }
  componentDidUpdate(){
  
    const name=this.svg;
    console.log(name);
  
   }
  render() {
    const listItems = this.state.masive.map((masive, i) => (
      <div className="container" key={i}>
        <h1>
          <span>ComputerBOX </span>
          {masive.oglav}
        </h1>
        <div className="d-flex button_size">
          <p>{masive.text_one}</p>
          <p>{masive.text_two}</p>
        </div>
        <div className="click_svg">
          <DoorUI />
          <div className="modal_computer">
            <SVG ref={svg=>{this.svg=svg}} src="../img/computer.svg" />
          </div>
        </div>
      </div>
    ));

    return (
      <div className="section_center">
        <div className="background" />
        {listItems}
      </div>
    );
  }
}
export default Start;
