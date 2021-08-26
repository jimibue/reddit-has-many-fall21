import React from "react";

const NewComment = (props) => {
  const { topic } = props;
  return (
    <div>
      <h1>New Comment</h1>
      <form action={`/topics/${topic.id}/comments`} method="post">
        <p>body</p>
        <input name="comment[body]" />
        <p>flagged</p>
        <input type="checkbox" name="comment[flagged]" />

        <button type="submit">add</button>
      </form>
    </div>
  );
};

export default NewComment;
