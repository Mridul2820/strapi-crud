module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '1964cf3933b0523895b563fc47425959'),
  },
});
