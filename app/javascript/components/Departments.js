import React from "react";

const Index = (props) => {
  return(
    <div>
    <h1>Departments will be listed below</h1>
    <a href={`/departments/new`}> New Department </a>

    {props.departments.map((department) => (
      <div>

        <h2>{department.name}</h2>
        <p>{department.description}</p>
        
        <div> 
          <a href={`/departments/${department.id}`}> Go to {`${department.name}`}</a>
          <a href={`/departments/${department.id}/edit`}> Edit {`${department.name}`}</a>
          <a href={`/departments/${department.id}`} data-method="delete"> Delete {`${department.name}`}</a>
        </div>
        
      </div>
    ))}
    </div>
  );
};


export default Index