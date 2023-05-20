@react.component
let make = (~id: int, ~title: string, ~isCompleted: bool) => {

  <div>
    <p>{ React.string(`Id: ${Belt.Int.toString(id)}`) }</p>
    <p>{ React.string(`${title}`) }</p>
    <div>{ React.string(`Completed?: `) }
    <input type_="checkbox" disabled=true checked=isCompleted/>
    </div>
  </div>
}