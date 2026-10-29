import InitECandidate.Proofs.WordStages.Source85
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody101_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody101_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody101_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody101_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody101_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 16) sourceBody101_2 sourceBody101_3

def sourceBody101_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody101_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_4 sourceBody101_5

def sourceBody101_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody101_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody101_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody101_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody101_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_9 sourceBody101_10

def sourceBody101_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_8 sourceBody101_11

def sourceBody101_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody101_12 sourceBody101_10

def sourceBody101_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_13 sourceBody101_5

def sourceBody101_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_14 sourceBody101_10

def sourceBody101_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_7 sourceBody101_15

def sourceBody101_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_6 sourceBody101_16

def sourceBody101_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_1 sourceBody101_17

def sourceBody101_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_0 sourceBody101_18

def sourceBody101_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody101_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_20 sourceBody101_11

def sourceBody101_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody101_19 sourceBody101_21

def source101 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (101, 5, sourceBody101_22)
end InitECandidate.Proofs.WordStages
