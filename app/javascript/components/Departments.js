import React from "react";

const Index = (props) => {
  return(
    <div>
    <h1> Welcome to the Zelda Shop </h1>
    <p>Please see all departments listed below.</p>
    <a href={`/departments/new`}> New Department </a>

    {props.departments.map((department) => (
      <div>

        <h2>{department.name}</h2>
        <p>{department.description}</p>
        
        <div> 
          <a href={`/departments/${department.id}/items`}>Item List for {department.name}</a>
          <br/>
          <a href={`/departments/${department.id}/edit`}> Edit {department.name}</a>
          <br/>
          <a href={`/departments/${department.id}`} data-method="delete"> Delete {department.name}</a>
        </div>
        
      </div>
    ))}
    
    </div>
  );
};


export default Index