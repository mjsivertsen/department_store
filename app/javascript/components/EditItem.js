import React from "react";


const EditItem = (props) => {
  const {department, item} = props;
  return(
    <div>
      <h1>Edit Item Details</h1>

      <form action={`/departments/${department.id}/items/${item.id}`} method="post">
      <input type="hidden" name="_method" value="patch" />

      <h4>Please update the item name:</h4>
      <input defaultValue={item.name} name="item[name]"/>

      <h4>Please update the item price:</h4>
      <input defaultValue={item.price} name="item[price]"/>

      <h4>Please update the item description:</h4>
      <input style={{width:"500px"}} defaultValue={item.description} name="item[description]" />

      <div style={{margin:"10px"}}>
      <button type="submit">Update</button>
      </div>
    </form>
      <a href={`/departments/${department.id}/items/${item.id}`} data-method="delete">Delete {item.name}</a>
      <br/>
      <a href={`/departments/${department.id}/items/${item.id}`}>Return to {item.name}</a>
      <br/>
      <a href={`/departments/${department.id}/items`}>Return to {department.name}</a>
      <br/>
      <a href={`/departments`}>Return to Homepage</a>
  </div>
  )
}

export default EditItem