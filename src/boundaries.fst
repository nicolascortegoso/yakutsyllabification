%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Author:          Cortegoso-Vissio, Nicolas; Zakharov, Victor Pavlovich
%  University:      SPBGU, Saint-Petersburg State University
%  Department:      Mathematical linguistics
%  Title:           Syllable boundaries
%  Last review:     26/03/2024

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%% 1. SYLLABLES BOUNDARY DEFINITION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% A syllable is defines by a nucleus, and optionally preceded by a consonant onset and/or a consonant coda.

% The transducers implement 3 main types of joints:
% <s> start, can only be attached to the left of a syllable;
% <i> middle, can be attached to the left or to the right of a syllable;
% <e> end, can be attached only to the right of a syllable.

% The joints are attached to syllables to the left and to the right to define its relative position in the word form:
% <s>...<e>   stand-alone syllables;
% <s>...<i>   staring syllables;
% <i>...<i>   middle syllables;
% <i>...<e>   ending syllables.


% The middle joint <i> is further specified by two elements:
% - a Latin letter in the range a-s to model consonant combinations between syllables or a 'v' to signalize a vowel;
% - a number in the range 1-6 to model vowel harmony.

% The middle joint markers fulfill a different function depending they are located to the left or to the right of a
% syllable:
% to the left  - the ending consonant and vowel pattern that the current syllable is able to follow;
% to the right - the ending consonant and vowel pattern that the current syllable introduces.



% Intermediate vowel matrix --------------------------------------------------------------------------------------------

#VI# = <iv1> <iv2> <iv3> <iv4> <iv5> <iv6>


% Intermediate consonant matrix ----------------------------------------------------------------------------------------

#CI01# = <ia1> <ia2> <ia3> <ia4> <ia5> <ia6>
#CI02# = <ib1> <ib2> <ib3> <ib4> <ib5> <ib6>
#CI03# = <ic1> <ic2> <ic3> <ic4> <ic5> <ic6>
#CI04# = <id1> <id2> <id3> <id4> <id5> <id6>
#CI05# = <ie1> <ie2> <ie3> <ie4> <ie5> <ie6>
#CI06# = <if1> <if2> <if3> <if4> <if5> <if6>
#CI07# = <ig1> <ig2> <ig3> <ig4> <ig5> <ig6>
#CI08# = <ih1> <ih2> <ih3> <ih4> <ih5> <ih6>
#CI09# = <ii1> <ii2> <ii3> <ii4> <ii5> <ii6>
#CI10# = <ij1> <ij2> <ij3> <ij4> <ij5> <ij6>
#CI11# = <ik1> <ik2> <ik3> <ik4> <ik5> <ik6>
#CI12# = <il1> <il2> <il3> <il4> <il5> <il6>
#CI13# = <im1> <im2> <im3> <im4> <im5> <im6>
#CI14# = <in1> <in2> <in3> <in4> <in5> <in6>
#CI15# = <io1> <io2> <io3> <io4> <io5> <io6>
#CI16# = <ip1> <ip2> <ip3> <ip4> <ip5> <ip6>
#CI17# = <iq1> <iq2> <iq3> <iq4> <iq5> <iq6>
#CI18# = <ir1> <ir2> <ir3> <ir4> <ir5> <ir6>
#CI19# = <is1> <is2> <is3> <is4> <is5> <is6>

#CI# = #CI01# #CI02# #CI03# #CI04# #CI05# #CI06# #CI07# #CI08# #CI09# #CI10# \
       #CI11# #CI12# #CI13# #CI14# #CI15# #CI16# #CI17# #CI18# #CI19#



#boundaries# = #VI# #CI#

