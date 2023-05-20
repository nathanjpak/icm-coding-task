@react.component
let make = () => {
  <div className="flex justify-between w-full text-secondary">
    <Next.Link className="py-1 px-4 hover:text-main" href="/Users">{ React.string("Users") }</Next.Link>
    <Next.Link className="py-1 px-4 hover:text-main" href="/Todos">{ React.string("Todos") }</Next.Link>
  </div>
}