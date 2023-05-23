import { make as Todo } from "../../components/Todo.bs.js";

describe('Todo component', () => {
  it('should display the proper id', () => {
    cy.mount(<Todo id={201} title={"Test Todo"} isCompleted={false} />);
    
    cy.contains("201");
  })
})