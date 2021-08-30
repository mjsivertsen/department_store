import React from "react";

const NewComment = (props) => {
  const {department, item} = props;
  return (
    <div>
      <h1>New Comment</h1>
      <form action={`/departments/${department.id}/items/${item.id}/comments`} method="post">
        <input name="comment[purchased_by]" placeholder="Your Name Here"/>
        <input style={{width:"500px"}} name="comment[body]" placeholder="Comment Here"/>
        <button type="submit">Submit Comment</button>
      </form>
    </div>
  );
};

export default NewComment