import InitECandidate.Proofs.WordStages.Source739
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody755_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody755_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody755_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody755_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody755_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody755_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody755_0, 755, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody755_4, 755, 3))

def sourceBody755_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody755_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_5 sourceBody755_6

def sourceBody755_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_7 sourceBody755_0

def sourceBody755_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_3 sourceBody755_8

def sourceBody755_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_2 sourceBody755_9

def sourceBody755_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_1 sourceBody755_10

def sourceBody755_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_0 sourceBody755_11

def sourceBody755_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_0 sourceBody755_12

def sourceBody755_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody755_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody755_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_15 sourceBody755_0

def sourceBody755_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_14 sourceBody755_16

def sourceBody755_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody755_13 sourceBody755_17

def source755 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (755, 3, sourceBody755_18)
end InitECandidate.Proofs.WordStages
