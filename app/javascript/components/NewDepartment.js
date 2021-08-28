import React from "react";

const NewDepartment = () => {
  return (
    <div>
      <h1>Create a new department</h1>

    <form action="/departments" method="post">
      <p> Enter the department name:</p>
      <input name="department[name]" />
      <p> Enter the department description: </p>
      <input style={{width:"500px"}} name="department[description]" />
      
      <div style={{margin:"10px"}}>
      <button type="submit">Create Department</button>
      </div>

      <a href={`/departments`}>Return to Homepage</a>
    
    </form>
    </div>
  );
  };

  export default NewDepartment