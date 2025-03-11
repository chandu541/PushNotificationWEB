importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");



firebase.initializeApp({
  apiKey: "AIzaSyBMzX5ZnaRjgkiiYH7E25LQa1tUTWUoh6Q",
  authDomain: "macweb-27e4b.firebaseapp.com",
  projectId: "macweb-27e4b",
  storageBucket: "macweb-27e4b.firebasestorage.app",
  messagingSenderId: "515276168080",
  appId: "1:515276168080:web:eab717150b260ae3a5f115",
  measurementId: "G-9K37MQJFJH"
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
//   Notification.requestPermission().then(function (permission) {
//     if (permission === "granted") {
//         var notification = new Notification("To Do", {
//             body: " - Task",
//             icon: "/images/logo.png",
//             sound: "default"
//         });
//     }
//     else {
//     }
// });
  console.log("onBackgroundMessage", message);
});












// const messaging = firebase.messaging();

// // Optional:
// messaging.onBackgroundMessage((message) => {

// //   Notification.requestPermission().then(function (permission) {
// //     if (permission === "granted") {
// //         var notification = new Notification("To Do", {
// //             body: " - Task",
// //             icon: "/images/logo.png",
// //             sound: "default"
// //         });
// //     }
// //     else {
// //     }
// // });

//   console.log("onBackgroundMessage", message);
// });