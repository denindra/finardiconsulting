import React, { Component } from 'react'

export default class index extends Component {
  render() {
    return (
      <div>
          <footer className="footer">
        <div className="container">
          <div className="row gap-y align-items-center">
            <div className="col-md-6 text-center text-md-left">
              <small>© TheThemeio 2019, All rights reserved.</small>
            </div>
            <div className="col-md-6 text-center text-md-right">
              <div className="social">
                <a className="social-facebook" href="#"><i className="fa fa-facebook" /></a>
                <a className="social-twitter" href="#"><i className="fa fa-twitter" /></a>
                <a className="social-instagram" href="#"><i className="fa fa-instagram" /></a>
                <a className="social-youtube" href="#"><i className="fa fa-youtube" /></a>
              </div>
            </div>
          </div>
        </div>
      </footer>
      </div>
    )
  }
}
