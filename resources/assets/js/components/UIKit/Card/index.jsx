import React from 'react';

export const Card = (props) => (
    <div className="card border">
            <div className="card-body">
                <div className="row">
                <div className="col-lg-2 text-center">
                  <i className={props.icon}></i>
                    </div>
                    <div className="col-lg-10">
                  <div className="feature-description">
                    <h5 className="fw-700 card-title">{props.title}</h5>
                   {props.children}
                    <p className="fw-700"><a href={props.link}>Pelajari lebih lanjut</a></p>
                    <br />
                  </div>
                    </div>
                </div>
                </div>
            </div>
);
