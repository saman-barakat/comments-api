export * from './blogApi';
import { BlogApi } from './blogApi';
export * from './commentApi';
import { CommentApi } from './commentApi';
export * from './postApi';
import { PostApi } from './postApi';
export * from './userApi';
import { UserApi } from './userApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [BlogApi, CommentApi, PostApi, UserApi];
