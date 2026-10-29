import InitECandidate.Proofs.WordStages.Source389
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody405_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody405_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody405_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody405_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody405_0, 405, 2)) (some 404) ([12]) (some (12, sourceBody405_2, 405, 3))

def sourceBody405_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody405_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_3 sourceBody405_4

def sourceBody405_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_5 sourceBody405_0

def sourceBody405_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_1 sourceBody405_6

def sourceBody405_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody405_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody405_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody405_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody405_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody405_10 sourceBody405_11

def sourceBody405_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_12 sourceBody405_4

def sourceBody405_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody405_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody405_0, 405, 4)) (some 394) ([]) (some (12, sourceBody405_2, 405, 5))

def sourceBody405_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_15 sourceBody405_4

def sourceBody405_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_16 sourceBody405_0

def sourceBody405_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody405_17 sourceBody405_0

def sourceBody405_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_18 sourceBody405_4

def sourceBody405_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_19 sourceBody405_0

def sourceBody405_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_14 sourceBody405_20

def sourceBody405_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_13 sourceBody405_21

def sourceBody405_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_9 sourceBody405_22

def sourceBody405_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_8 sourceBody405_23

def sourceBody405_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody405_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody405_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_26 sourceBody405_0

def sourceBody405_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_25 sourceBody405_27

def sourceBody405_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_24 sourceBody405_28

def sourceBody405_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_7 sourceBody405_29

def sourceBody405_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_0 sourceBody405_30

def sourceBody405_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody405_0 sourceBody405_31

def source405 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (405, 2, sourceBody405_32)
end InitECandidate.Proofs.WordStages
