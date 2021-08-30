import React from "react";

const Item = (props) => {
  const { department, item, comments } = props;
  
  const renderComments = () => {
    return comments.map((comment) => {
      return(
        <div style={{border:"2px solid grey", width:"500px"}}>
          <h4> Purchased by:</h4>
          <p>{comment.purchased_by}</p>
          <h4>Comment:</h4>
          <br/>
          <p>{comment.body}</p>
        </div>
        )
      });
    };
  return (
    <div>
      <h1>{item.name}</h1>
      <h3>{`${item.price}`}</h3>
      <p>{item.description}</p>
      {renderComments()}
    <a href={`/departments/${department.id}/items/${item.id}/edit`}>Edit {item.name}</a>
    <br/>
    <a href={`/departments/${department.id}/items/${item.id}`} data-method="delete">Delete {item.name}</a>
    <br/>
    <a href={`/departments/${department.id}/items`}>Return to {department.name}</a>
    <br/>
    <a href={`/departments`}>Return to Homepage</a>
    </div> 
    );
  };


export default Item