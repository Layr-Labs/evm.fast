import InitECandidate.Proofs.WordStages.Source448
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody464_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody464_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 31#64])

def sourceBody464_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody464_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody464_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody464_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody464_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody464_4 sourceBody464_5

def sourceBody464_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody464_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_6 sourceBody464_7

def sourceBody464_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody464_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody464_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody464_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_11 sourceBody464_0

def sourceBody464_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_10 sourceBody464_12

def sourceBody464_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody464_13 sourceBody464_0

def sourceBody464_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_14 sourceBody464_7

def sourceBody464_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_15 sourceBody464_0

def sourceBody464_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_9 sourceBody464_16

def sourceBody464_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_8 sourceBody464_17

def sourceBody464_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_3 sourceBody464_18

def sourceBody464_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_2 sourceBody464_19

def sourceBody464_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody464_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 6])

def sourceBody464_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody464_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody464_0, 464, 2)) (some 463) ([4, 10]) (some (4, sourceBody464_23, 464, 3))

def sourceBody464_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_24 sourceBody464_7

def sourceBody464_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_25 sourceBody464_0

def sourceBody464_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_22 sourceBody464_26

def sourceBody464_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_21 sourceBody464_27

def sourceBody464_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody464_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody464_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_30 sourceBody464_0

def sourceBody464_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_29 sourceBody464_31

def sourceBody464_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_28 sourceBody464_32

def sourceBody464_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_0 sourceBody464_33

def sourceBody464_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_0 sourceBody464_34

def sourceBody464_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_20 sourceBody464_35

def sourceBody464_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_1 sourceBody464_36

def sourceBody464_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody464_0 sourceBody464_37

def source464 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (464, 2, sourceBody464_38)
end InitECandidate.Proofs.WordStages
