1.  Plan Application

User
- Login with email / password, unique emails. 
- Login with 'parent' code to create chores
- Views List of chores ranked by due time
- Add List of chores assigned to multiple people incl. owner
- Has a list of (many) chores
- Can mark chores completed
-= IF parent, can create new chores
-= IF parent, can assign chores to people
-== List of closed chores, closed by whom


User
has:
 name
 one chore_list - All chores assigned to it, with "complete" buttons


Chore
has:
 name
 description
 owner
 due_date
 other_owners
 
 Chore
 -----
 id   name    description    owner     due_date  



Owner_list
id

 
-create new chores
-complete/delete existing chores

----------------------------------
/index => hurro. 
/register
/login
/user_page 
 => Displays chores list.  Each chore has a 'details' button and a 'complete' button. 
 => Has a 'create chore' button that goes to /cchore
/cchore
 => Chore creation form: name, details (description), assigned to, due date. 
 => Create the chore, add the chore to the respective user's chorelist. 

2.  Office Hours Questions - Weds. 
 * LOL You're doing it wrong.  Everything on the screen is wrong. 
   - so... sucks to be me I guess? 
