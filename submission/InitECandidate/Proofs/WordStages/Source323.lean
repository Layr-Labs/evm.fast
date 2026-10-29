import InitECandidate.Proofs.WordStages.Source307
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody323_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody323_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody323_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody323_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody323_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) sourceBody323_2 sourceBody323_3

def sourceBody323_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody323_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_4 sourceBody323_5

def sourceBody323_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody323_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody323_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody323_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody323_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_9 sourceBody323_10

def sourceBody323_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_8 sourceBody323_11

def sourceBody323_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody323_12 sourceBody323_10

def sourceBody323_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_13 sourceBody323_5

def sourceBody323_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_14 sourceBody323_10

def sourceBody323_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_7 sourceBody323_15

def sourceBody323_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_6 sourceBody323_16

def sourceBody323_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_1 sourceBody323_17

def sourceBody323_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_0 sourceBody323_18

def sourceBody323_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody323_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_20 sourceBody323_18

def sourceBody323_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_19 sourceBody323_21

def sourceBody323_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody323_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 4) sourceBody323_2 sourceBody323_3

def sourceBody323_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_24 sourceBody323_5

def sourceBody323_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_25 sourceBody323_16

def sourceBody323_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_1 sourceBody323_26

def sourceBody323_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_23 sourceBody323_27

def sourceBody323_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_22 sourceBody323_28

def sourceBody323_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody323_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_30 sourceBody323_11

def sourceBody323_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody323_29 sourceBody323_31

def source323 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (323, 2, sourceBody323_32)
end InitECandidate.Proofs.WordStages
