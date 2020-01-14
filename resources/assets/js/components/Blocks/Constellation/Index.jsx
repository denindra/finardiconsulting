import React from 'react'

export const Blockswithbg = (props) => (
    <section className="section text-center section-inverse py-120 hidden-sm-down" style={{backgroundImage: 'url('+props.urlBg+')', backgroundPosition: 'center 18%', backgroundRepeat: 'no-repeat', background: 'cover', backgroundSize: '100%'}} data-overlay={6}>
        <div className="container">
          {props.children}
        </div>
      </section>
);
