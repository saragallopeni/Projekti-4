const express = require('express');
const fileUpload = require('express-fileupload');
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const path = require('path');

const router = express.Router();

router.use(fileUpload());

router.post('/', async (req, res) => {
  try {
    const {
      titulli,
      pershkrimi,
      status,
      nisja,
      perfundimi,
      start_registration,
      end_registration,
      kapaciteti,
      mbajtja,
      vendndodhja,
    } = req.body;

    const photoFile = req.files ? req.files.photo : null;

    if (!photoFile) {
      return res.status(400).json({ error: 'Asnje foto nuk u ngarkua' });
    }

    const photoFileName = `${Date.now()}_photo.jpg`;
    const photoPath = path.join(__dirname, 'fotot', photoFileName);

    photoFile.mv(photoPath, async (err) => {
      if (err) {
        console.error('Error:', err);
        return res.status(500).json({ error: 'Deshtim ne ngarkim te fotove' });
      }

      const prismaFormattedStartDate = startDate ? startDate.toISOString() : null;
      const prismaFormattedEndDate = endDate ? endDate.toISOString() : null;

      try {
        const createdEvent = await prisma.eventet.create({
          data: {
            photo: photoFileName,
            titulli,
            pershkrimi,
            status,
            nisja,
            perfundimi,
            start_registration: prismaFormattedStartDate,
            end_registration: prismaFormattedEndDate,
            mbajtja,
            kapaciteti: parseInt(kapaciteti, 10),
            vendndodhja,
          },
        });

        res.json({ message: 'Eventi u shtua me sukses', krijo: createdEvent, photoFileName});
      } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ error: 'Server error' });
      }
    });
  } catch (error) {
    console.error('Error:', error);
    res.status(500).json({ error: 'Server error' });
  }
});

module.exports = router;
