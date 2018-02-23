"Strike!" by "Christophe Rhodes"

Book 1 - The player

[ make a "Getting started" kind of room, maybe about transport?  The transport description depends on the role chosen, though ]

Role is a kind of value.  The roles are student, lecturer, administrator, manager and unknown.

A person has a role.  The role of the player is unknown.

When play begins:
	now the command prompt is "Choose your role >".

Before reading a command when the role of the player is unknown:
	say "In stories, we all have our roles to play.  In this story, you can choose your role, at least to start: are you a student, a lecturer, an administrator or a manager?".	

After reading a command when the role of the player is unknown:
	if the player's command includes "[role]":
		now the role of the player is the role understood;
		now the command prompt is ">";
		reject the player's command.

Book 2 - The encounter

The Car Park Entrance is a room.  "You are at the back of College, at the southwest end of Laurie Grove.  You can see the College car park, such as it is, through the open gateway; the normally unobstructed view to the car park, the ivy-covered back of the Richard Hoggart Building and the College Green is currently blocked by a [picket table]."

The picket table is a supporter in the Car Park Entrance.  The description is "The middle of the table holds an eye-catching display of [leaflets], decrying the axing of pensions.  The table itself looks unsteady; it is a rickety collapsible affair, probably constructed from flat-pack.  It is perhaps two metres wide, and one end supports a [tea urn], which stands next to some biodegradable [paper cups].  The other end has one of those [petition] signature sheets, currently empty."

The College Green is south of the Car Park Entrance.

Enjoying is an action applying to one thing.  Understand "enjoy [thing]" as enjoying.  A thing can be enjoyable.  A thing is usually not enjoyable.

[ enjoying these will be a thing ]
The leaflets are on the picket table.  They are plural-named.  They are enjoyable.

Check enjoying (this is the don't enjoy unenjoyable things rule):
	if the noun is not enjoyable, say "There is little to enjoy in [the noun]." instead.

Report enjoying the leaflets when the player is a manager for the first time:
	say "You enjoy reading the cartoonish leaflet, with its bright colours, simplistic assumptions, and naïve grasp of financial matters.".

Report enjoying the leaflets when the player is a manager for the second time:
	say "On closer inspection, you discover something you didn't know: that the financial projections you have been working with are based on unrealistic assumptions.  As you contemplate this, you find yourself more in sympathy with the strikers, and you begin a conversation with a picketer, which leads inexorably to...";
	end the story saying "you have joined the picket line".

[ this will dispense a liquid that is almost, but not completely, unlike tea. ]
The tea urn is on the picket table.  The description is "A large, metallic urn, with a levered dispensing attachment – you judge this will comfortably supply the picket with hot liquid throughout their stint.".

[ from Extra Supplies example ]
There is a paper cup.  It is a container. The paper cup can be full or empty.  It is empty.  The description is "[if the paper cup is empty]The cup is made of relatively strong cardboard, and unlike many ubiquitously seen on every high street, it does not appear to have a plastic lining[else]The cup is made of strong cardboard, which doesn't quite insulate your hands against the hot brown liquid contained within it; you hope that it is tea, but you are prepared to be disappointed[end if]."

The paper cups are on the picket table.  They are plural-named.  Understand "cup" or "paper cup" as the paper cups when the paper cup is not visible.  Understand "another" as a mistake. [Understand "another cup" as the paper cups.]

Instead of taking the paper cups:
	if the paper cup is off-stage:
		move the paper cup to the player;
		say "You take [a paper cup].";
	else:
		say "You don't feel it is right to deprive the picket of [a paper cup] while you already have [if the player does not carry the paper cup]access to [end if]one."

Does the player mean drinking the paper cup: it is likely.

Understand "tea" as the paper cup when the paper cup is full.

[ The block drinking rule blocks drinking, and I don't know how to override it with a more specialized check rule.
  Making the block drinking rule do nothing is a large hammer, because now we can (sort-of) drink everything instead of nothing... ]
The block drinking rule does nothing.

Check drinking the paper cup:
	if the noun is full, continue the action;
	say "Your cup does not contain liquid; slurp as you might, there's no satisfaction to be gained that way." instead.

Carry out drinking the paper cup:
	now the noun is empty.

Report drinking the paper cup for the first time (this is the first time drinking tea rule):
	say "You were right!  The brown liquid is almost completely unlike tea.";
	rule succeeds.

Report drinking the paper cup (this is the drinking tea rule):
	say "The flavour of the teaish liquid has not particularly improved since the last time."

Filling it with is an action applying to two visible things.  Understand "fill [container] with [thing]" as filling it with. 

Does the player mean filling the noun with the tea urn: it is likely. 

Carry out filling the paper cup with the tea urn:
	now the paper cup is full.

Report filling the paper cup with the tea urn for the first time:
	say "After some confused manipulation of the spigot, you successfully fill your cup with a brown liquid that, somehow, seems almost completely unlike tea.  It seems hot, though.";
	rule succeeds.

Report filling the paper cup with the tea urn:
	say "You refill the paper cup with the presumptive tea."

The petition is on the picket table.

[ Objectives:
  - for a senior manager: drive into the College;
  - for a student: get into the College, or show solidarity with the picketers;
  - for a picketer: convert a colleague to the cause. ]

