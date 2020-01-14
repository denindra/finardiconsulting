import React, { Component } from 'react'
import {LogoDark, LogoLight} from '../../../../components/Brands'
export default class index extends Component {
  render() {
    return (
      <div>
        <nav className="navbar navbar-expand-lg navbar-dark">
        <div className="container">
          <div className="navbar-left">
            <button className="navbar-toggler" type="button">☰</button>
            <a className="navbar-brand" href="#">
              <LogoDark alt="logo" classname="light" />
              <LogoLight />
            </a>
          </div>
          <section className="navbar-mobile">
            {this.props.children}
          </section></div></nav>
      </div>
    )
  }
}
