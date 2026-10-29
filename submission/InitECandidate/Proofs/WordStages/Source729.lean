import InitECandidate.Proofs.WordStages.Source713
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody729_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody729_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody729_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody729_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody729_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody729_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody729_0, 729, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody729_4, 729, 3))

def sourceBody729_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody729_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_5 sourceBody729_6

def sourceBody729_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_7 sourceBody729_0

def sourceBody729_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_3 sourceBody729_8

def sourceBody729_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_2 sourceBody729_9

def sourceBody729_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_1 sourceBody729_10

def sourceBody729_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_0 sourceBody729_11

def sourceBody729_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_0 sourceBody729_12

def sourceBody729_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody729_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody729_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_15 sourceBody729_0

def sourceBody729_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_14 sourceBody729_16

def sourceBody729_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody729_13 sourceBody729_17

def source729 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (729, 3, sourceBody729_18)
end InitECandidate.Proofs.WordStages
