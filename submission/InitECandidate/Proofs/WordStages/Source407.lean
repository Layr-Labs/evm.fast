import InitECandidate.Proofs.WordStages.Source391
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody407_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody407_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody407_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody407_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody407_0, 407, 2)) (some 406) ([12]) (some (12, sourceBody407_2, 407, 3))

def sourceBody407_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody407_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_3 sourceBody407_4

def sourceBody407_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_5 sourceBody407_0

def sourceBody407_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_1 sourceBody407_6

def sourceBody407_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody407_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody407_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody407_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody407_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody407_10 sourceBody407_11

def sourceBody407_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_12 sourceBody407_4

def sourceBody407_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody407_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody407_0, 407, 4)) (some 394) ([]) (some (12, sourceBody407_2, 407, 5))

def sourceBody407_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_15 sourceBody407_4

def sourceBody407_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_16 sourceBody407_0

def sourceBody407_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody407_17 sourceBody407_0

def sourceBody407_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_18 sourceBody407_4

def sourceBody407_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_19 sourceBody407_0

def sourceBody407_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_14 sourceBody407_20

def sourceBody407_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_13 sourceBody407_21

def sourceBody407_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_9 sourceBody407_22

def sourceBody407_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_8 sourceBody407_23

def sourceBody407_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody407_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody407_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_26 sourceBody407_0

def sourceBody407_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_25 sourceBody407_27

def sourceBody407_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_24 sourceBody407_28

def sourceBody407_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_7 sourceBody407_29

def sourceBody407_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_0 sourceBody407_30

def sourceBody407_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody407_0 sourceBody407_31

def source407 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (407, 2, sourceBody407_32)
end InitECandidate.Proofs.WordStages
