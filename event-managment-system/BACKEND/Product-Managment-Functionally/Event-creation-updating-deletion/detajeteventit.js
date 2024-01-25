const express = require('express');
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const router = express.Router();

router.get('/:id', async (req, res) => {
  const eventid = parseInt(req.params.id);
  try {
    
    const detajetEventit = await prisma.eventet.findUnique({
      where: { id: eventid },
    });

    if (!detajetEventit) {
      return res.status(404).json({ error: 'Eventi nuk u gjet' });
    }

    res.json(detajetEventit);
    
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: 'Server error' });
  }
});

module.exports = router;
