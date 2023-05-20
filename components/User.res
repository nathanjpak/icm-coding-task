@react.component
let make = (~username: string, ~fullName: string, ~companyName: string, ~isLastElement: bool) => {
  let borderClassString = (isLastElement) ? "" : "shadow-bottom-border md:shadow-bottom-border-md";

  <div className={`text-main py-3 md:text-xl md:py-6 ${borderClassString}`}>
    <p className="text-xl font-semibold md:text-3xl"> { React.string(fullName)} </p>
    <div>
      <p className="inline text-secondary"> { React.string(`Username: `)}  </p>
      <p className="inline"> { React.string(username) } </p>
    </div>
    <div>
      <p className="inline text-secondary"> { React.string(`Company: `)}  </p>
      <p className="inline"> { React.string(companyName) } </p>
    </div>
  </div>
}
