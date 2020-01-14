import React, { Component } from "react";
// import PropTypes from "prop-types";

import Navbar from '../containers/Navigation/Navbar';
import Footer from '../containers/Navigation/Footer'


class MainWrapper_page extends Component {
//   static propTypes = {
//     children: PropTypes.element.isRequired
//   }

  render() {
    return (
      <div>       
        <Navbar /> 
        <main className="main-content">
   
        {this.props.children}
        </main>
          <Footer />
        </div>
    );
  }
}


export default MainWrapper_page;
