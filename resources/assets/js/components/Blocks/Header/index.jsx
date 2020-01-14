import React from 'react';

export const Header =(props) =>(
    <header className="header text-white" style={{backgroundColor:props.colorBg}} data-overlay={8}>
   <div className="container-fluid text-center">
      <div className="row">
         <div className="col-lg-8 mx-auto">
            <h1>Get A Job <span className="text-primary" data-typing="At TheThemeio, Remotely, As Developer , As Designer" /></h1>
            <p className="lead-2 mt-5">You have got the change to work and thrive with us. We are a small group of developers who wants to make a family!</p>
            <hr className="w-60px my-7" />
            <a className="btn btn-lg btn-round btn-white" href="#">Open Positions</a>
         </div>
      </div>
   </div>
</header>
)