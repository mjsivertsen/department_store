import React from "react";

const EditDepartment = (props) => {
  const { department } = props;
  return (
    <div>
      <h1>Edit Your Department</h1>
      <p>Please udpate the department name if desired.</p>
      
      <form action={`/departments/${department.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
      
      <h4>Please update the department name:</h4>
      <input defaultValue={department.name} name="department[name]" />

      <h4>Please enter the department description:</h4>
      <input defaultValue={department.description} name="department[description]" />

      <div style={{margin:"10px"}}>
      <button type="submit">Update</button>
      </div>

      <div>
        <a href={`/departments`}>Return to Homepage</a>
        <a href={`/departments/${department.id}`} data-method="delete"> Delete {`${department.name}`}</a>
      </div>
      
      </form>
    </div>
  );
};

export default EditDepartment