import InitECandidate.Proofs.WordStages.Source839
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody855_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody855_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody855_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody855_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody855_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) sourceBody855_2 sourceBody855_3

def sourceBody855_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody855_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_4 sourceBody855_5

def sourceBody855_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody855_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody855_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody855_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody855_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_9 sourceBody855_10

def sourceBody855_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_8 sourceBody855_11

def sourceBody855_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody855_12 sourceBody855_10

def sourceBody855_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_13 sourceBody855_5

def sourceBody855_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_14 sourceBody855_10

def sourceBody855_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_7 sourceBody855_15

def sourceBody855_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_6 sourceBody855_16

def sourceBody855_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_1 sourceBody855_17

def sourceBody855_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_0 sourceBody855_18

def sourceBody855_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody855_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_20 sourceBody855_11

def sourceBody855_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody855_19 sourceBody855_21

def source855 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (855, 2, sourceBody855_22)
end InitECandidate.Proofs.WordStages
