import InitECandidate.Proofs.WordStages.Source79
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody95_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody95_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody95_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody95_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody95_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody95_0, 95, 2)) (some 94) ([10, 8]) (some (10, sourceBody95_3, 95, 3))

def sourceBody95_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody95_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_4 sourceBody95_5

def sourceBody95_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_6 sourceBody95_0

def sourceBody95_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_2 sourceBody95_7

def sourceBody95_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_1 sourceBody95_8

def sourceBody95_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody95_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody95_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_11 sourceBody95_0

def sourceBody95_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_10 sourceBody95_12

def sourceBody95_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_9 sourceBody95_13

def sourceBody95_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_0 sourceBody95_14

def sourceBody95_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_0 sourceBody95_15

def sourceBody95_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_0 sourceBody95_16

def sourceBody95_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody95_0 sourceBody95_17

def source95 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (95, 3, sourceBody95_18)
end InitECandidate.Proofs.WordStages
