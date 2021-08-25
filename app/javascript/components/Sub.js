import React from "react";

const Sub = (props) => {
  return (
    <div>
      <p>Sub</p>
      <p>{`${JSON.stringify(props.sub)}`}</p>
    </div>
  );
};

export default Sub;
