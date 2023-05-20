type todo = {
  id: int,
  title: string,
  isCompleted: bool
}

type state = {
  todos: array<todo>,
  inputValue: string,
}

let initialState: state = {
  todos: [],
  inputValue: "",
}

type actions = AddTodo | ChangeInput(string) | MarkComplete(int)

let reducer = (state, action) => {
  switch action {
  | AddTodo => {
      inputValue: "",
      todos: Belt.Array.concat(state.todos, [{
        id: Belt.Array.length(state.todos) + 1,
        title: state.inputValue,
        isCompleted: false
      }])
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

  <div>
    <div> {React.string("Todo List")} </div>
    <input value={state.inputValue} type_="text" onChange={handleChange} />
    <button onClick={_ => if (Js.String2.length(state.inputValue) > 0) { dispatch(AddTodo) } }> {React.string("Add Todo")} </button>
    {Belt.Array.mapWithIndex(state.todos, (index, todo) => {
      <div onClick={_ => dispatch(MarkComplete(index))}>
        <Todo key={Belt.Int.toString(todo.id)} id={todo.id} title={todo.title} isCompleted={todo.isCompleted} />
      </div>
    }) -> React.array}
  </div>
}
