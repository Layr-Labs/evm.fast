import InitECandidate.Proofs.WordStages.Source573
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody589_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody589_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody589_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody589_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody589_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody589_0, 589, 2)) (some 468) ([6, 10]) (some (6, sourceBody589_3, 589, 3))

def sourceBody589_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody589_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_4 sourceBody589_5

def sourceBody589_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_6 sourceBody589_0

def sourceBody589_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_2 sourceBody589_7

def sourceBody589_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_1 sourceBody589_8

def sourceBody589_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody589_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody589_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody589_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody589_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) sourceBody589_12 sourceBody589_13

def sourceBody589_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_14 sourceBody589_5

def sourceBody589_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody589_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody589_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody589_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_18 sourceBody589_0

def sourceBody589_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_17 sourceBody589_19

def sourceBody589_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody589_20 sourceBody589_0

def sourceBody589_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_21 sourceBody589_5

def sourceBody589_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_22 sourceBody589_0

def sourceBody589_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_16 sourceBody589_23

def sourceBody589_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_15 sourceBody589_24

def sourceBody589_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_11 sourceBody589_25

def sourceBody589_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_10 sourceBody589_26

def sourceBody589_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody589_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_28 sourceBody589_19

def sourceBody589_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_27 sourceBody589_29

def sourceBody589_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_9 sourceBody589_30

def sourceBody589_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_0 sourceBody589_31

def sourceBody589_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody589_0 sourceBody589_32

def source589 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (589, 3, sourceBody589_33)
end InitECandidate.Proofs.WordStages
