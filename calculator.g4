/* Assignment 1: Grammar for a calculator 
   Class: Programming languages
   Author: Ashley Fitzgerald
   Student ID: 2015118779
   Date: 16/09/17
*/

grammar calculator;


start : declaration* assign*;
 

declaration : 'var' ID (',' ID)* ':'  TYPE ';';


assign: ID '=' expr ';' ;


expr : term (('-'| '+') term)*;
term : factor (('*'| '/') factor)*;
factor:  '('expr')'  |( ID|NUM);


PLUS : '+';
MINUS:'-';
DIV: '/';
MULT: '*';
    

TYPE: 'integer'|'real';
ID : [a-z];
NUM :[0-9]+ | ( [0-9]+ '.' [0-9]+);
WS : [ \t\r\n]+ -> skip ;
