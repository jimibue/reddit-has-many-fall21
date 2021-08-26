import React from "react";

const Topic = (props) => {
  const { topic, comments } = props;

  // const isFlagged = (flagged) => {
  //   // if (flagged) {
  //   //   return "red";
  //   // } else {
  //   //   return "black";
  //   // }

  //   return flagged ? "red" : "black";
  // };

  const renderComments = () => {
    return comments.map((comment) => {
      return (
        <div style={{ color: comment.flagged ? "red" : "black" }}>
          <h1>{comment.body}</h1>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>{topic.name}</h1>
      <a href={`/topics/${topic.id}/comments/new`}>new</a>
      {renderComments()}
    </div>
  );
};

export default Topic;
