import InitECandidate.Proofs.WordStages.Source401
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody417_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody417_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody417_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody417_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody417_0, 417, 2)) (some 406) ([12]) (some (12, sourceBody417_2, 417, 3))

def sourceBody417_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody417_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_3 sourceBody417_4

def sourceBody417_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_5 sourceBody417_0

def sourceBody417_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_1 sourceBody417_6

def sourceBody417_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody417_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody417_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody417_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody417_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody417_10 sourceBody417_11

def sourceBody417_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_12 sourceBody417_4

def sourceBody417_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody417_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody417_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody417_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_16 sourceBody417_0

def sourceBody417_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_15 sourceBody417_17

def sourceBody417_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody417_18 sourceBody417_0

def sourceBody417_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_19 sourceBody417_4

def sourceBody417_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_20 sourceBody417_0

def sourceBody417_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_14 sourceBody417_21

def sourceBody417_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_13 sourceBody417_22

def sourceBody417_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_9 sourceBody417_23

def sourceBody417_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_8 sourceBody417_24

def sourceBody417_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody417_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody417_0, 417, 4)) (some 416) ([4]) (some (4, sourceBody417_26, 417, 5))

def sourceBody417_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_27 sourceBody417_4

def sourceBody417_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_28 sourceBody417_0

def sourceBody417_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_8 sourceBody417_29

def sourceBody417_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody417_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody417_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_32 sourceBody417_0

def sourceBody417_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_31 sourceBody417_33

def sourceBody417_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_30 sourceBody417_34

def sourceBody417_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_0 sourceBody417_35

def sourceBody417_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_0 sourceBody417_36

def sourceBody417_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_25 sourceBody417_37

def sourceBody417_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_7 sourceBody417_38

def sourceBody417_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_0 sourceBody417_39

def sourceBody417_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody417_0 sourceBody417_40

def source417 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (417, 2, sourceBody417_41)
end InitECandidate.Proofs.WordStages
