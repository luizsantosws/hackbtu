import express from 'express';
import fetch from 'node-fetch';
import dotenv from 'dotenv';
import cors from 'cors';

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());

const METEOMATICS_USER = process.env.METEOMATICS_USER;
const METEOMATICS_PASS = process.env.METEOMATICS_PASS;
const BASE = 'https://api.meteomatics.com';

if(!METEOMATICS_USER || !METEOMATICS_PASS){
  console.warn('Warning: METEOMATICS_USER or METEOMATICS_PASS not set. Set them in .env');
}

app.get('/meteomatics/*', async (req, res) => {
  try{
    const path = req.params[0]; // everything after /meteomatics/
    const url = `${BASE}/${path}`;
    const auth = 'Basic ' + Buffer.from(`${METEOMATICS_USER}:${METEOMATICS_PASS}`).toString('base64');
    const resp = await fetch(url, { headers: { 'Authorization': auth } });
    const contentType = resp.headers.get('content-type') || '';
    const body = await resp.text();
    res.set('Content-Type', contentType);
    res.status(resp.status).send(body);
  }catch(err){
    console.error(err);
    res.status(500).send({error: String(err)});
  }
});

const port = process.env.PORT || 3000;
app.listen(port, ()=>console.log(`Meteomatics proxy running on http://localhost:${port}`));
