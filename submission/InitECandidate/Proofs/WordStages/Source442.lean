import InitECandidate.Proofs.WordStages.Source426
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody442_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody442_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody442_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody442_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody442_0, 442, 2)) (some 439) ([6]) (some (6, sourceBody442_2, 442, 3))

def sourceBody442_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody442_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_3 sourceBody442_4

def sourceBody442_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_5 sourceBody442_0

def sourceBody442_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_1 sourceBody442_6

def sourceBody442_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody442_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody442_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody442_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody442_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody442_0, 442, 4)) (some 192) ([10, 8, 14]) (some (10, sourceBody442_11, 442, 5))

def sourceBody442_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_12 sourceBody442_4

def sourceBody442_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_13 sourceBody442_0

def sourceBody442_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_10 sourceBody442_14

def sourceBody442_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_9 sourceBody442_15

def sourceBody442_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_8 sourceBody442_16

def sourceBody442_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_0 sourceBody442_17

def sourceBody442_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_0 sourceBody442_18

def sourceBody442_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody442_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody442_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_21 sourceBody442_0

def sourceBody442_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_20 sourceBody442_22

def sourceBody442_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_19 sourceBody442_23

def sourceBody442_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_7 sourceBody442_24

def sourceBody442_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_0 sourceBody442_25

def sourceBody442_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody442_0 sourceBody442_26

def source442 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (442, 3, sourceBody442_27)
end InitECandidate.Proofs.WordStages
