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
      <h3>{`${item.price}`}</h3>
      <p>{item.description}</p>
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