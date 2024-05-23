import { IsEmail, IsNotEmpty, MinLength } from "class-validator";

export class CreateuserDto {
    @IsNotEmpty()
    @IsEmail()
    email: string;

    @IsNotEmpty()
    @MinLength(6)
    password: string;

    @IsNotEmpty()
    name: string;

    @IsNotEmpty()
    role: 'trainer' | 'trainee';

}