import React from "react";

const Items = (props) => {

  const { items, department } = props;
  return (
    <div>
    <h1> Items List for {department.name} </h1>
    {items.map((item) => (
      <div key={item.id} className="item-card">
        <h3>{item.name}</h3>
        <p>Price: {`${item.price}`}</p>
        <p>{item.description}</p>

      </div>
    ))}
   </div>
  );
};

export default Items