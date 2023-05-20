type tUserCompany = {
  name: string
}

type tUserData = {
  id: int,
  username: string,
  name: string,
  company: tUserCompany
}

type response
@val external fetch: string => promise<response> = "fetch"
@send external json: response => promise<array<tUserData>> = "json"

@react.component
let default = () => {
  let (usersArray, setUsersArray) = React.useState(_ => []);

  React.useEffect0(() => {
    let url = "https://jsonplaceholder.typicode.com/users"

    let updateUsers = async url => {
      let response = await fetch(url)
      let json = await response->json
      setUsersArray(_ => json)
    }

    updateUsers(url) -> ignore
    
    None
  }, );

  let listOfUsers = 
    {Belt.Array.mapWithIndex(usersArray, (index, user) => <User 
      key={Belt.Int.toString(user.id)} 
      username=user.username 
      fullName=user.name 
      companyName=user.company.name 
      isLastElement={index + 1 == Belt.Array.length(usersArray)}
    />)}

  let loading = <div className="text-main">
    {React.string("Fetching Users...")}
  </div>

  let result = (Belt.Array.length(usersArray) > 0) ? React.array(listOfUsers) : loading
  <div className="flex flex-col items-center w-full max-w-screen-lg">
    <Navbar />
    <div className="flex flex-col">
      result
    </div>
  </div>
}
