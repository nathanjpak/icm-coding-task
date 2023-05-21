@react.component
let make = (~id: int, ~title: string, ~isCompleted: bool) => {

  let checkMarkClassString = isCompleted ? "after:absolute after:h-5 after:w-8 after:bottom-1/4 after:border-b-8 after:border-l-8 after:-rotate-45" : ""
  let checkBoxClassString = `h-8 w-8 border relative ${checkMarkClassString}`

  <div className="hover:bg-main/20 flex w-full py-2 items-center divide-x divide-secondary">
    <div className="grow basis-0 text-center">{ React.string(`Id: ${Belt.Int.toString(id)}`) }</div>
    <div className="grow basis-1/2 text-xl px-2">{ React.string(`${title}`) }</div>
    <div className="grow basis-0 flex justify-center">
      <div className={checkBoxClassString} />
    </div>
  </div>
}