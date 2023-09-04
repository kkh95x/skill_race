const functions = require('firebase-functions');
const nodemailer = require('nodemailer');
const admin = require('firebase-admin');
admin.initializeApp();

const gmailEmail = functions.config().gmail.email;
const gmailPassword = functions.config().gmail.password;
const mailTransport = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: gmailEmail,
    pass: gmailPassword,
  },
});

exports.sendOTP = functions.https.onCall(async (data, context) => {
  

  const email = data.email;
  const otp = generateRandomOTP(); // Implement your own OTP generation logic

  const mailOptions = {
    from: 'skill.race.app@gmail.com',
    to: email,
    subject: 'Your OTP Code',
    text: `Your OTP code for your email ${email} is: ${otp}`,
  };

  try {
    await mailTransport.sendMail(mailOptions);
    return { success: true, message: 'OTP sent successfully' };
  } catch (error) {
    return { success: false, message: 'Failed to send OTP' };
  }
});
