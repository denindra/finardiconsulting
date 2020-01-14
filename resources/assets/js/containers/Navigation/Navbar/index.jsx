import React, { Component } from 'react';
import NavigationModel1 from './NavigationModel1';
import NavigationModel2 from './NavigationModel2'
import { Link } from "react-router-dom";
export default class index extends Component {
  render() {
    return (
        <NavigationModel2>
            <nav className="nav nav-navbar ml-auto">
        <Link className="nav-link active" to="/">Home</Link>
        <Link className="nav-link" to="/about">About</Link>
        <Link className="nav-link" to="/login">Login</Link>
        <Link className="nav-link" to="#">Contact</Link>
      </nav>
        </NavigationModel2>
        
    )
  }
}
