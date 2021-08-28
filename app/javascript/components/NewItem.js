import React from "react";

const NewItem = (props) => {
  const {department} = props
  return (
    <div>
      <h1>Submit New Item for Sale</h1>

      <form action={`/departments/${department.id}/items`} method="post">
        <p>Please enter item name</p>
        <input name="item[name]" placeholder="Super Cool Item"/>
        <p>Please enter item price</p>
        <input name="item[price]" placeholder="$uper Cool Price"/>
        <p>Please enter item description</p>
        <input style={{width:"500px"}} name="item[description]" placeholder="Super Cool Description"/>
        <br/>
        <button style={{margin:"6px"}} type="submit">Create Item</button>
      </form>

    </div>
  );
};

export default NewItem