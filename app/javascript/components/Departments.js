import React from "react";

const Index = (props) => {
  return(
    <div>
    <h1>Departments will be listed below</h1>

    {props.departments.map((department) => (
      <div>

        <h2>{department.name}</h2>
        <p>{department.description}</p>

        
      </div>
    ))}
    </div>
  );
};


export default Index