import React from "react";
import { Route, Switch } from "react-router-dom";
// import Layout from '../Layout/index';
import MainWrapper_page from "./MainWrapper";
import LoginWrapper from './LoginWrapper'

import HomePage from "../Scenes/Home";
import AboutPage from '../Scenes/About';
import LoginPage from '../Scenes/Login';

const LoginWrappers = () => (
  
  <LoginWrapper>
      <Switch>
       <Route path="/login" name="login" component={LoginPage} />
      </Switch>
   
  </LoginWrapper>
);

const MainWrappers = () => (
  <MainWrapper_page>
      <Switch>
        <Route exact  path="/" name="home" component={HomePage} />
        <Route path="/about" name="about" component={AboutPage} />
       </Switch>
   
  </MainWrapper_page>
);
const Router = () => (
  
      <Switch>
        <Route exact  path="/"  component={MainWrappers} />
        <Route  path="/about" name="about" component={MainWrappers} />
        <Route path="/login" name="login" component={LoginWrappers} />
      </Switch>
);




export default Router;
