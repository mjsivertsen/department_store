import React from "react";

const Items = (props) => {

  const { items, department } = props;
  return (
    <div>
    <h1>{department.name} </h1>
    <p>{department.description}</p>

    <a href={`/departments/${department.id}/items/new`}>Create New Item</a>        
    <br/>
    <a href={`/departments/${department.id}/edit`}> Edit {department.name}</a>
    <br/>
    <a href={`/departments/${department.id}`} data-method="delete"> Delete {department.name}</a>
    <br/>
    <a href={`/departments`}>Return to Homepage</a>

    {items.map((item) => (
      <div key={item.id} className="item-card">
        <h3>{item.name}</h3>
        <p>Price: {`${item.price}`}</p>
        <p>{item.description}</p>
        <a href={`/departments/${department.id}/items/${item.id}`}>View {item.name}</a>
        <br/>
        <a href={`/departments/${department.id}/items/${item.id}/edit`}>Edit {item.name}</a>
      </div>
    ))}
   </div>
  );
};

export default Items