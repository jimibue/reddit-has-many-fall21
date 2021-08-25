import React from "react";

const Subs = (props) => {
  return (
    <div>
      <p>Subs</p>
      <p>{`${JSON.stringify(props.subs)}`}</p>
    </div>
  );
};

export default Subs;
