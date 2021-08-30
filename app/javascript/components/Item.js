import React from "react";

const Item = (props) => {
  const { department, item, comments } = props;
  
  const renderComments = () => {
    return comments.map((comment) => {
      return(
        <div style={{border:"2px solid grey", height:"200px", width:"500px"}}>
          <h5> Purchased by:</h5>
          <p>{comment.purchased_by}</p>
          <h5>Comment:</h5>
          <p>{comment.body}</p>
        </div>
        )
      });
    };
    const NewComment = (props) => {
      return (
        <div>
          <form action={`/departments/${department.id}/items/${item.id}/comments`} method="post">
            <input name="comment[purchased_by]" placeholder="Your Name Here"/>
            <br/>
            <input style={{width:"500px"}} name="comment[body]" placeholder="Comment Here"/>
            <br/>
            <button type="submit">Submit Comment</button>
          </form>
        </div>
      );
    };
  return (
    <div>
      <h1>{item.name}</h1>
      <h2>Price: {`${item.price}`}</h2>
      <h3>Description: {`${item.description}`}</h3>
      {renderComments()}
      <h4>Leave a Comment!</h4>
      {NewComment()}
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