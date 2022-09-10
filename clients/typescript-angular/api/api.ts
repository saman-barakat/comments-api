export * from './blog.service';
import { BlogService } from './blog.service';
export * from './comment.service';
import { CommentService } from './comment.service';
export * from './post.service';
import { PostService } from './post.service';
export * from './user.service';
import { UserService } from './user.service';
export const APIS = [BlogService, CommentService, PostService, UserService];
