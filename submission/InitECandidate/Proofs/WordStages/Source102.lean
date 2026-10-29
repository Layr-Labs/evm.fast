import InitECandidate.Proofs.WordStages.Source86
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody102_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.var 8])

def sourceBody102_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody102_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody102_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody102_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 16) sourceBody102_2 sourceBody102_3

def sourceBody102_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody102_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_4 sourceBody102_5

def sourceBody102_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody102_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody102_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody102_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody102_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_9 sourceBody102_10

def sourceBody102_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_8 sourceBody102_11

def sourceBody102_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody102_12 sourceBody102_10

def sourceBody102_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_13 sourceBody102_5

def sourceBody102_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_14 sourceBody102_10

def sourceBody102_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_7 sourceBody102_15

def sourceBody102_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_6 sourceBody102_16

def sourceBody102_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_1 sourceBody102_17

def sourceBody102_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_0 sourceBody102_18

def sourceBody102_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody102_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_20 sourceBody102_11

def sourceBody102_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody102_19 sourceBody102_21

def source102 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (102, 5, sourceBody102_22)
end InitECandidate.Proofs.WordStages
