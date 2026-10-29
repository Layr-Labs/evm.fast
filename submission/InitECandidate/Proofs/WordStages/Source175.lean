import InitECandidate.Proofs.WordStages.Source159
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody175_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 55#64)

def sourceBody175_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody175_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody175_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody175_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 4) sourceBody175_2 sourceBody175_3

def sourceBody175_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody175_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_4 sourceBody175_5

def sourceBody175_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody175_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody175_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody175_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody175_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_9 sourceBody175_10

def sourceBody175_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_8 sourceBody175_11

def sourceBody175_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody175_12 sourceBody175_10

def sourceBody175_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_13 sourceBody175_5

def sourceBody175_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_14 sourceBody175_10

def sourceBody175_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_7 sourceBody175_15

def sourceBody175_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_6 sourceBody175_16

def sourceBody175_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_1 sourceBody175_17

def sourceBody175_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_0 sourceBody175_18

def sourceBody175_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody175_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody175_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody175_10, 175, 2)) (some 172) ([10]) (some (10, sourceBody175_21, 175, 3))

def sourceBody175_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_22 sourceBody175_5

def sourceBody175_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_23 sourceBody175_10

def sourceBody175_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_20 sourceBody175_24

def sourceBody175_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 6])

def sourceBody175_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody175_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_27 sourceBody175_10

def sourceBody175_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_26 sourceBody175_28

def sourceBody175_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_25 sourceBody175_29

def sourceBody175_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_10 sourceBody175_30

def sourceBody175_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_10 sourceBody175_31

def sourceBody175_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody175_19 sourceBody175_32

def source175 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (175, 2, sourceBody175_33)
end InitECandidate.Proofs.WordStages
