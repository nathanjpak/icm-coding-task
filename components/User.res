@react.component
let make = (~username: string, ~fullName: string, ~companyName: string) => {
  <div>
    <p> { React.string(`Name: ${fullName}`)} </p>
    <p> { React.string(`Username: ${username}`)} </p>
    <p> { React.string(`Company: ${companyName}`)} </p>
  </div>
}
