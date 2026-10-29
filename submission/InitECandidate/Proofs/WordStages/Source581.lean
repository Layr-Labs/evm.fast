import InitECandidate.Proofs.WordStages.Source565
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody581_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody581_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody581_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody581_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody581_0, 581, 2)) (some 470) ([6]) (some (6, sourceBody581_2, 581, 3))

def sourceBody581_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody581_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_3 sourceBody581_4

def sourceBody581_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_5 sourceBody581_0

def sourceBody581_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_1 sourceBody581_6

def sourceBody581_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_7

def sourceBody581_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_8

def sourceBody581_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody581_0, 581, 4)) (some 572) ([]) (some (6, sourceBody581_2, 581, 5))

def sourceBody581_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_10 sourceBody581_4

def sourceBody581_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_11 sourceBody581_0

def sourceBody581_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody581_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody581_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody581_0, 581, 6)) (some 477) ([2]) (some (2, sourceBody581_14, 581, 7))

def sourceBody581_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_15 sourceBody581_4

def sourceBody581_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_16 sourceBody581_0

def sourceBody581_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_13 sourceBody581_17

def sourceBody581_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_18

def sourceBody581_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_19

def sourceBody581_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody581_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody581_0, 581, 8)) (some 490) ([2]) (some (2, sourceBody581_14, 581, 9))

def sourceBody581_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_22 sourceBody581_4

def sourceBody581_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_23 sourceBody581_0

def sourceBody581_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_21 sourceBody581_24

def sourceBody581_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_25

def sourceBody581_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_26

def sourceBody581_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_20 sourceBody581_27

def sourceBody581_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody581_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody581_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_30 sourceBody581_0

def sourceBody581_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_29 sourceBody581_31

def sourceBody581_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_28 sourceBody581_32

def sourceBody581_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_12 sourceBody581_33

def sourceBody581_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_34

def sourceBody581_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_0 sourceBody581_35

def sourceBody581_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody581_9 sourceBody581_36

def source581 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (581, 1, sourceBody581_37)
end InitECandidate.Proofs.WordStages
