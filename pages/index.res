@react.component
let default = () => {
  <div>
    <Next.Link href="/Users"> {React.string("Users")} </Next.Link>
    <Next.Link href="/Todos"> {React.string("Todos")} </Next.Link>
  </div>
}
