type todo = {
  id: int,
  title: string,
  isCompleted: bool
}

type state = {
  todos: array<todo>,
  inputValue: string,
  latestId: int,
}

let initialState: state = {
  todos: [],
  inputValue: "",
  latestId: 0,
}

type actions = AddTodo | ChangeInput(string) | MarkComplete(int)

let reducer = (state, action) => {
  switch action {
  | AddTodo => {
      inputValue: "",
      todos: Belt.Array.concat(state.todos, [{
        id: state.latestId + 1,
        title: state.inputValue,
        isCompleted: false
      }]),
      latestId: state.latestId + 1
    }
  | ChangeInput(newValue) => {
      ...state,
      inputValue: newValue
    }
  | MarkComplete(index) => {
      ...state,
      todos: Belt.Array.mapWithIndex(state.todos, (arrIndex, todo) => {
        (arrIndex == index) ? { ...todo, isCompleted: !todo.isCompleted } : todo
      })
    }  
  }
}

@react.component
let default = () => {
  let (state, dispatch) = React.useReducer(reducer, initialState)

  let handleChange = event => {
    let newValue = ReactEvent.Form.target(event)["value"]
    dispatch(ChangeInput(newValue))
  }

  <div className="flex flex-col items-center gap-4 w-full max-w-screen-lg text-main">
    <Navbar />
    <div className="text-2xl font-medium"> {React.string("To-do List")} </div>
    <div className="flex flex-col items-center gap-1.5 w-full">
      <input 
        className="text-lg p-0.5 border border-secondary focus:border-main w-4/5 min-w-[280px]" 
        value={state.inputValue} 
        type_="text"
        placeholder="Enter to-do..." 
        onChange={handleChange}
      />
      <button 
        className="ml-2 hover:bg-main hover:text-bg-color p-1.5 rounded text-lg"
        onClick={_ => if (Js.String2.length(state.inputValue) > 0) { dispatch(AddTodo) } }
      > 
        {React.string("Add To-do")} 
      </button>
    </div>
    {Belt.Array.mapWithIndex(state.todos, (index, todo) => {
      <div className="w-4/5 min-w-[280px]" key={Belt.Int.toString(todo.id)} onClick={_ => dispatch(MarkComplete(index))}>
        <Todo id={todo.id} title={todo.title} isCompleted={todo.isCompleted} />
      </div>
    }) -> React.array}
  </div>
}
