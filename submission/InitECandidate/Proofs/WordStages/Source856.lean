import InitECandidate.Proofs.WordStages.Source840
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody856_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody856_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody856_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody856_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody856_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) sourceBody856_2 sourceBody856_3

def sourceBody856_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody856_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_4 sourceBody856_5

def sourceBody856_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody856_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody856_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody856_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody856_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_9 sourceBody856_10

def sourceBody856_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_8 sourceBody856_11

def sourceBody856_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody856_12 sourceBody856_10

def sourceBody856_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_13 sourceBody856_5

def sourceBody856_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_14 sourceBody856_10

def sourceBody856_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_7 sourceBody856_15

def sourceBody856_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_6 sourceBody856_16

def sourceBody856_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_1 sourceBody856_17

def sourceBody856_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_0 sourceBody856_18

def sourceBody856_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody856_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_20 sourceBody856_11

def sourceBody856_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody856_19 sourceBody856_21

def source856 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (856, 2, sourceBody856_22)
end InitECandidate.Proofs.WordStages
