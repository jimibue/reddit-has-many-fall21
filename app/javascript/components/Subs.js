import React from "react";
export default (props) => {
  const { subs } = props;
  return (
    <>
      <h1>Subs Component Here</h1>

      <a href="subs/new">add sub</a>
      {subs.map((sub) => (
        <div>
          <h3>{sub.name}</h3>
          <a href={`/subs/${sub.id}`}>show (goes to subs#show)</a>
          <a href={`/subs/${sub.id}/topics`}>show (goes to topics#show)</a>
          <a href={`/subs/${sub.id}/edit`}>edit</a>
          <a href={`/subs/${sub.id}`} data-method="delete">
            delete
          </a>
        </div>
      ))}
    </>
  );
};
