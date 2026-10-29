import InitECandidate.Proofs.WordStages.Source338
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody354_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody354_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody354_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody354_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody354_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 4) sourceBody354_2 sourceBody354_3

def sourceBody354_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody354_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_4 sourceBody354_5

def sourceBody354_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody354_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody354_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody354_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody354_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_9 sourceBody354_10

def sourceBody354_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_8 sourceBody354_11

def sourceBody354_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody354_12 sourceBody354_10

def sourceBody354_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_13 sourceBody354_5

def sourceBody354_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_14 sourceBody354_10

def sourceBody354_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_7 sourceBody354_15

def sourceBody354_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_6 sourceBody354_16

def sourceBody354_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_1 sourceBody354_17

def sourceBody354_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_0 sourceBody354_18

def sourceBody354_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody354_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_20 sourceBody354_11

def sourceBody354_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody354_19 sourceBody354_21

def source354 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (354, 2, sourceBody354_22)
end InitECandidate.Proofs.WordStages
