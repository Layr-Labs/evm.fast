import InitECandidate.Proofs.WordStages.Source479
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody495_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody495_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody495_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody495_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody495_0, 495, 2)) (some 493) ([12]) (some (12, sourceBody495_2, 495, 3))

def sourceBody495_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody495_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_3 sourceBody495_4

def sourceBody495_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_5 sourceBody495_0

def sourceBody495_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_1 sourceBody495_6

def sourceBody495_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody495_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody495_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody495_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody495_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody495_10 sourceBody495_11

def sourceBody495_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_12 sourceBody495_4

def sourceBody495_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody495_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody495_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody495_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_16 sourceBody495_0

def sourceBody495_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_15 sourceBody495_17

def sourceBody495_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody495_18 sourceBody495_0

def sourceBody495_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_19 sourceBody495_4

def sourceBody495_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_20 sourceBody495_0

def sourceBody495_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_14 sourceBody495_21

def sourceBody495_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_13 sourceBody495_22

def sourceBody495_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_9 sourceBody495_23

def sourceBody495_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_8 sourceBody495_24

def sourceBody495_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3000#64)

def sourceBody495_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_26 sourceBody495_17

def sourceBody495_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_25 sourceBody495_27

def sourceBody495_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_7 sourceBody495_28

def sourceBody495_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_0 sourceBody495_29

def sourceBody495_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody495_0 sourceBody495_30

def source495 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (495, 2, sourceBody495_31)
end InitECandidate.Proofs.WordStages
