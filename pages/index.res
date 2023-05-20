@react.component
let default = () => {
  <div>
    <Next.Link href="/Users"> {React.string("Users")} </Next.Link>
    <Next.Link href="/Todo"> {React.string("Todo")} </Next.Link>
  </div>
}
