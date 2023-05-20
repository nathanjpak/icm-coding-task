// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";

function User(props) {
  var borderClassString = props.isLastElement ? "" : "shadow-bottom-border md:shadow-bottom-border-md";
  return React.createElement("div", {
              className: "text-main py-3 md:text-xl md:py-6 " + borderClassString + ""
            }, React.createElement("p", {
                  className: "text-xl font-semibold md:text-3xl"
                }, props.fullName), React.createElement("div", undefined, React.createElement("p", {
                      className: "inline text-secondary"
                    }, "Username: "), React.createElement("p", {
                      className: "inline"
                    }, props.username)), React.createElement("div", undefined, React.createElement("p", {
                      className: "inline text-secondary"
                    }, "Company: "), React.createElement("p", {
                      className: "inline"
                    }, props.companyName)));
}

var make = User;

export {
  make ,
}
/* react Not a pure module */
