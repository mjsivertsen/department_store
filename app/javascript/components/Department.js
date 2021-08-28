import React from "react";

const Department = (props) => {
  const {department} = props
  return (
    <div>
      <h1>{department.name}</h1>
      <h2>{department.description}</h2>
    
      <div> 
          <a href={`/departments/${department.id}/items`}>Item List for {department.name}</a>
          <br/>
          <a href={`/departments/${department.id}/edit`}> Edit {`${department.name}`}</a>
          <br/>
          <a href={`/departments/${department.id}`} data-method="delete"> Delete {`${department.name}`}</a>
          <br/>
          <a href={`/departments`}>Return to Homepage</a>
       </div>
    </div>
  );
};


export default Department