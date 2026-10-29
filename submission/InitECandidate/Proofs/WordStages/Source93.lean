import InitECandidate.Proofs.WordStages.Source77
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody93_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody93_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody93_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody93_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody93_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 10) sourceBody93_2 sourceBody93_3

def sourceBody93_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody93_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_4 sourceBody93_5

def sourceBody93_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody93_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody93_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody93_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody93_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_9 sourceBody93_10

def sourceBody93_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_8 sourceBody93_11

def sourceBody93_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody93_12 sourceBody93_10

def sourceBody93_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_13 sourceBody93_5

def sourceBody93_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_14 sourceBody93_10

def sourceBody93_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_7 sourceBody93_15

def sourceBody93_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_6 sourceBody93_16

def sourceBody93_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_1 sourceBody93_17

def sourceBody93_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_0 sourceBody93_18

def sourceBody93_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody93_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_20 sourceBody93_11

def sourceBody93_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody93_19 sourceBody93_21

def source93 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (93, 3, sourceBody93_22)
end InitECandidate.Proofs.WordStages
