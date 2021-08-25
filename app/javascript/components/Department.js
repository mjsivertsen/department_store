import React from "react";

const Department = (props) => {
  return (
    <div>
      <h1>{`${props.department.name}`}</h1>
      <h2>{`${props.department.description}`}</h2>
    </div>
  );
};


export default Department