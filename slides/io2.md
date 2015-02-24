##Waiting...

<img src="https://www.altamiracorp.com/blog/146/files/waiting.png">

- Very expensive to scale this with threads
- Most threads will just be waiting for I/O
- Lot of context switching overhead

Note:
Node assumes that if you are an I/O bound app, you spend a lot of time waiting.
Here, the green bars are the actual time your app is doing something.
Gray bars represent the time spent while waiting.
Here is what happens in this example:
1) route a request, then
wait wait wait
2) query a db
wait wait wait
3) process results
wait wait
4) log to a file
wait wait
5) format and send the response

Now that we have the problem in front of us, let's see what Node is and how it can help us solve it.
