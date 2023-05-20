@react.component
let make = (~id: int, ~title: string, ~isCompleted: bool) => {
  let isCompletedString = switch isCompleted {
                            | true => "Yes"
                            | false => "No"
                            }

  <div>
    <p>{ React.string(`Id: ${Belt.Int.toString(id)}`) }</p>
    <p>{ React.string(`${title}`) }</p>
    <p>{ React.string(`Completed? ${isCompletedString}`) }</p>
  </div>
}