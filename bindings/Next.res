module Link = {
  @module("next/link") @react.component
  external make: (
    ~href: string=?,
    ~_as: string=?,
    ~className: string=?,
    ~replace: bool=?,
    ~shallow: bool=?,
    ~passHref: bool=?,
    ~scroll: bool=?,
    ~children: React.element,
  ) =>
  React.element = "default"
}
