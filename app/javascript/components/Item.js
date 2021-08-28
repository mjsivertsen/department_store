import React from "react";

const Item = (props) => {
  const { item, department } = props
  return (
    <div>
      <h1>{item.name}</h1>
      <h3>${`${item.price}`}</h3>
      <p>{item.description}</p>
      <a href={`/departments/${department.id}/items/${item.id}/edit`}>Edit Item</a>
      <br/>
      <a href={`/departments/${department.id}/items`}>Return to {department.name}</a>
      <br/>
      <a href={`/departments`}>Return to Homepage</a>
    </div>
  );

};


export default Item