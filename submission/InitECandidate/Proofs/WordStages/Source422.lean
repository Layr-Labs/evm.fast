import InitECandidate.Proofs.WordStages.Source406
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody422_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody422_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody422_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody422_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody422_0, 422, 2)) (some 421) ([8]) (some (8, sourceBody422_2, 422, 3))

def sourceBody422_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody422_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_3 sourceBody422_4

def sourceBody422_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_5 sourceBody422_0

def sourceBody422_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_1 sourceBody422_6

def sourceBody422_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_0 sourceBody422_7

def sourceBody422_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_0 sourceBody422_8

def sourceBody422_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody422_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody422_0, 422, 4)) (some 419) ([8, 4]) (some (8, sourceBody422_2, 422, 5))

def sourceBody422_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_11 sourceBody422_4

def sourceBody422_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_12 sourceBody422_0

def sourceBody422_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_10 sourceBody422_13

def sourceBody422_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_1 sourceBody422_14

def sourceBody422_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_0 sourceBody422_15

def sourceBody422_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_0 sourceBody422_16

def sourceBody422_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_9 sourceBody422_17

def sourceBody422_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody422_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody422_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_20 sourceBody422_0

def sourceBody422_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_19 sourceBody422_21

def sourceBody422_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody422_18 sourceBody422_22

def source422 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (422, 2, sourceBody422_23)
end InitECandidate.Proofs.WordStages
