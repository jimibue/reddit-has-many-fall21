import React from "react";

export default (props) => {
  const { topics, sub } = props;
  return (
    <>
      <h1>Topics Page from {sub.name} sub</h1>
      <a href={`/subs/${sub.id}`}>back to sub show</a>
      <a href={`/`}>back to subs</a>
      <a href={`/subs/${sub.id}/topics/new`}>topic new</a>
      {topics.map((topic) => (
        <div key={topic.id} className="topic-card">
          <h3>{topic.name}</h3>
          <p>{topic.body}</p>
          <a href={`/subs/${sub.id}/topics/${topic.id}`}>
            show topic (topic show method)
          </a>
          <a href={`/topics/${topic.id}/comments`}>
            show topic (comments index method)
          </a>
          <a href={`/subs/${sub.id}/topics/${topic.id}/edit`}>edit topic</a>
          <a href={`/subs/${sub.id}/topics/${topic.id}`} data-method="delete">
            delete topic
          </a>
        </div>
      ))}
    </>
  );
};
