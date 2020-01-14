import React, { Component } from "react";
// import PropTypes from "prop-types";


class LoginWrapper extends Component {

  render() {
    return (
      <div>
         <main className="main-content">
             {this.props.children}
        </main>
        
        </div>
    );
  }
}


export default LoginWrapper;
