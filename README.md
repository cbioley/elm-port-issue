# Disclaimer: Elm n00b

## Subject: Ports

I would expect to get '42' because the `init` function defines a command which
ask JS for a value.

If you look in the console, JS is effectively receiving the value during the
init phase.

I don't get why the subscription does not kick in (but it works if you click
on the button).

### Install

```
npm install
elm package install
```

### Test

```
npm start
open http://localhost:8080
```
