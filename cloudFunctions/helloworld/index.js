exports.main = async (req, res) => {
  res.status(200).send(`hello world ${process.env.SAMPLE_TEXT}.`);
};
