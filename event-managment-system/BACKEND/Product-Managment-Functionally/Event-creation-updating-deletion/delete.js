const express = require('express');
const router = express.Router();
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

router.delete('/:id', async (req, res) => {

  const deleteId = parseInt(req.params.id); 

    try {
      console.log('Fshirja e eventit me id:', deleteId);
      const deleteEvent = await prisma.eventet.delete({
        where: { id: deleteId }
      });
      
      if (!deleteEvent) {
        res.status(404).json({ error: 'Eventi nuk u gjet' });
      }

      res.json({ message: 'Eventi u fshi me sukses', deleteEvent });

    } catch (error) {
      console.log(error);
      res.status(500).json({ error: 'Internal Server Error' });
    }
});

module.exports = router;
