const express = require('express');
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const router = express.Router();


router.post('/:eventId/user/:userId/register', async (req, res) => {
  const eventId = parseInt(req.params.eventId);
  const userId = parseInt(req.params.userId);

  try {
    if (!eventId) {
      return res.status(400).json({ message: 'Eventi nuk u gjet' });
    }

    if (!userId) {
      return res.status(400).json({ message: 'Perdoruesi me id ' + userId + 'nuk gjindet ne kete databaze' });
    }

    const theUser = await prisma.user.findUnique({
      where: { id: userId },
      select: { eventId: true },
    });

    if (theUser.eventId !== null) {
      return res.status(409).json({ message: 'Nuk ka vend ne eventin ' + eventId });
    }

    await prisma.user.update({
      where: { id: userId },
      data: {
        eventId
      },
    });    

    await prisma.eventet.update({
      where: { id: eventId },
      data: {
        kapaciteti: {
          decrement: 1,
        },
      },
    });

    res.status(201).json({ message: 'Jeni rregjistruar me sukses' });
  } catch (error) {
    console.log('Errori:', error);
    res.status(500).json({ error: 'Server error', message: error.message });
  }
});

module.exports = router;
