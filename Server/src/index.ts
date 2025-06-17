import express, {  Request, Response , Application } from 'express';
import dotenv from 'dotenv';

//For env File
dotenv.config({"path": "../.env"});

const app: Application = express();
const port = process.env.PORT;

app.get('/', (req: Request, res: Response) => {
    res.send('Welcome to Express & TypeScript Server');
});

app.listen(port, () => {
    console.log(`Leaderboard is up and running`);
});
