import React from "react";
export default (props) => {
  const { subs } = props;
  return (
    <>
      <h1>Subs Component Here</h1>
      <a href="http://localhost:3000/subs/new">add sub</a>
      {subs.map((sub) => (
        <div>
          <h3>{sub.name}</h3>
          <a href={`http://localhost:3000/subs/${sub.id}`}>
            show (goes to subs#show)
          </a>
          <a href={`http://localhost:3000/subs/${sub.id}/topics`}>
            show (goes to topics#index)
          </a>
          <a href={`http://localhost:3000/subs/${sub.id}/edit`}>edit</a>
          <a href={`http://localhost:3000/subs/${sub.id}`} data-method="delete">
            delete
          </a>
        </div>
      ))}
    </>
  );
};
