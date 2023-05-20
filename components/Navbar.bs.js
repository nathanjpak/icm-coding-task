// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Link from "next/link";

function Navbar(props) {
  return React.createElement("div", {
              className: "flex justify-between w-full text-secondary"
            }, React.createElement(Link, {
                  href: "/Users",
                  className: "py-1 px-4 hover:text-main",
                  children: "Users"
                }), React.createElement(Link, {
                  href: "/Todos",
                  className: "py-1 px-4 hover:text-main",
                  children: "Todos"
                }));
}

var make = Navbar;

export {
  make ,
}
/* react Not a pure module */