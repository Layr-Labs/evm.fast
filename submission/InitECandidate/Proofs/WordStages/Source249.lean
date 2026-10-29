import InitECandidate.Proofs.WordStages.Source233
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody249_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody249_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody249_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody249_0, 249, 2)) (some 248) ([]) (some (8, sourceBody249_1, 249, 3))

def sourceBody249_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody249_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_2 sourceBody249_3

def sourceBody249_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_4 sourceBody249_0

def sourceBody249_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_5

def sourceBody249_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_6

def sourceBody249_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody249_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody249_0, 249, 4)) (some 90) ([]) (some (2, sourceBody249_8, 249, 5))

def sourceBody249_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_9 sourceBody249_3

def sourceBody249_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_10 sourceBody249_0

def sourceBody249_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody249_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody249_14 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 256) ([0, 2, 6]) (none)

def sourceBody249_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_14 sourceBody249_0

def sourceBody249_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_13 sourceBody249_15

def sourceBody249_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_12 sourceBody249_16

def sourceBody249_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_11 sourceBody249_17

def sourceBody249_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_18

def sourceBody249_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_19

def sourceBody249_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_20

def sourceBody249_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_0 sourceBody249_21

def sourceBody249_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody249_7 sourceBody249_22

def source249 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (249, 1, sourceBody249_23)
end InitECandidate.Proofs.WordStages
