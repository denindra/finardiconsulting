import React, { Component } from 'react';
import { Link } from "react-router-dom";

export default class Login extends Component {
    render(){
        return(
            <div className="h-fullscreen py-0">
        {/* desktop and largescreen start*/}
        <section className="container-fluid">
          <div className="row h-full">
            <div className="col-lg-6 col-sm-12 hidden-lg-down" style={{backgroundImage: 'url(https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/login-image.png)', height: '100%', maxWidth: '100%'}}>
              <div className="h-fullscreen" > </div>
            </div>
            <div className="col-lg-6 col-sm-12 bg-white">
              <div className="h-fullscreen center-vh">
                <div className="container">
                    <div className="section-dialog">
                      <header className="pb-10 text-center"> <Link to="/"><img className="logo-default pb-5" src="http://ncommerce.id/assets/src/assets/img/logo.png" style={{width: '300px'}} alt="logo" /></Link>
                        <p className="text-center text-muted fs-13 pt-0">Don't have an account? <a href="http://ncommerce.id/signup">Signup</a></p>
                      </header>
                      <form action="" method="post" acceptCharset="utf-8">
                        <div className="form-group">
                          <input className="form-control" type="email" name="email" placeholder="Email" required /> 
                        </div>
                        <div className="form-group">
                          <input className="form-control" type="password" name="password" placeholder="Password" required /> 
                        </div>
                        <button className="btn btn-block btn-round btn-primary" type="submit">Login</button>
                        <div className="form-group flexbox pt-30 py-10">
                          <label className="custom-control custom-checkbox">
                            <input type="checkbox" className="custom-control-input" defaultChecked /> <span className="custom-control-indicator" /> <span className="custom-control-description">Remember me</span> 
                          </label> 
                          <a className="text-muted hover-primary fs-13" href="http://ncommerce.id/forgotpassword">Forgot password?
                          </a> 
                        </div>
                      </form>
                    </div>      
                </div>
              </div>
            </div>
          </div>
        </section>
        {/* desktop and largescreen ends*/}
      </div>
        )
    }
}