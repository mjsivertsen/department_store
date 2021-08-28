import React from "react";

const Item = (props) => {
  const { item, department } = props
  return (
    <div>
      <h1>{item.name}</h1>
      <h3>${`${item.price}`}</h3>
      <p>{item.description}</p>
    </div>
  );

};


export default Item