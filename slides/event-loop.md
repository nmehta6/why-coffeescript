##Node.js Event Loop

<img src="/images/event-loop.png">

Note:
- Here is the conceptual model.

- There is a queue of tasks that need to be executed.

- The event loop will grab something from the top of the queue and execute it.

- Once it finishes the task, it pulls out the next event from the queue and executes it.
