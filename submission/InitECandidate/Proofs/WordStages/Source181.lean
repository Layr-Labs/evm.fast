import InitECandidate.Proofs.WordStages.Source165
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody181_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody181_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody181_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody181_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody181_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody181_2 sourceBody181_3

def sourceBody181_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody181_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_4 sourceBody181_5

def sourceBody181_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody181_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody181_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody181_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody181_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_9 sourceBody181_10

def sourceBody181_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_8 sourceBody181_11

def sourceBody181_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody181_12 sourceBody181_10

def sourceBody181_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_13 sourceBody181_5

def sourceBody181_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_14 sourceBody181_10

def sourceBody181_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_7 sourceBody181_15

def sourceBody181_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_6 sourceBody181_16

def sourceBody181_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_1 sourceBody181_17

def sourceBody181_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_0 sourceBody181_18

def sourceBody181_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody181_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody181_10, 181, 2)) (some 172) ([10]) (some (10, sourceBody181_20, 181, 3))

def sourceBody181_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_21 sourceBody181_5

def sourceBody181_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_22 sourceBody181_10

def sourceBody181_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_0 sourceBody181_23

def sourceBody181_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 6])

def sourceBody181_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody181_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_26 sourceBody181_10

def sourceBody181_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_25 sourceBody181_27

def sourceBody181_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_24 sourceBody181_28

def sourceBody181_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_10 sourceBody181_29

def sourceBody181_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_10 sourceBody181_30

def sourceBody181_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody181_19 sourceBody181_31

def source181 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (181, 2, sourceBody181_32)
end InitECandidate.Proofs.WordStages
