import InitECandidate.Proofs.WordStages.Source397
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody413_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody413_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody413_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody413_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody413_0, 413, 2)) (some 406) ([12]) (some (12, sourceBody413_2, 413, 3))

def sourceBody413_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody413_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_3 sourceBody413_4

def sourceBody413_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_5 sourceBody413_0

def sourceBody413_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_1 sourceBody413_6

def sourceBody413_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody413_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody413_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody413_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody413_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody413_10 sourceBody413_11

def sourceBody413_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_12 sourceBody413_4

def sourceBody413_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody413_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody413_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody413_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_16 sourceBody413_0

def sourceBody413_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_15 sourceBody413_17

def sourceBody413_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody413_18 sourceBody413_0

def sourceBody413_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_19 sourceBody413_4

def sourceBody413_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_20 sourceBody413_0

def sourceBody413_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_14 sourceBody413_21

def sourceBody413_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_13 sourceBody413_22

def sourceBody413_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_9 sourceBody413_23

def sourceBody413_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_8 sourceBody413_24

def sourceBody413_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody413_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_26 sourceBody413_17

def sourceBody413_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_25 sourceBody413_27

def sourceBody413_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_7 sourceBody413_28

def sourceBody413_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_0 sourceBody413_29

def sourceBody413_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody413_0 sourceBody413_30

def source413 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (413, 2, sourceBody413_31)
end InitECandidate.Proofs.WordStages
