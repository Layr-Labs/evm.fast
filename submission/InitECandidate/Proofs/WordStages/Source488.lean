import InitECandidate.Proofs.WordStages.Source472
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody488_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody488_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody488_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody488_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody488_0, 488, 2)) (some 74) ([8]) (some (8, sourceBody488_2, 488, 3))

def sourceBody488_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody488_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_3 sourceBody488_4

def sourceBody488_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_5 sourceBody488_0

def sourceBody488_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_1 sourceBody488_6

def sourceBody488_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody488_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody488_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody488_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody488_0, 488, 4)) (some 78) ([2, 6]) (some (2, sourceBody488_10, 488, 5))

def sourceBody488_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_11 sourceBody488_4

def sourceBody488_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_12 sourceBody488_0

def sourceBody488_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_9 sourceBody488_13

def sourceBody488_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_8 sourceBody488_14

def sourceBody488_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_0 sourceBody488_15

def sourceBody488_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_0 sourceBody488_16

def sourceBody488_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody488_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody488_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_19 sourceBody488_0

def sourceBody488_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_18 sourceBody488_20

def sourceBody488_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_17 sourceBody488_21

def sourceBody488_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_7 sourceBody488_22

def sourceBody488_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_0 sourceBody488_23

def sourceBody488_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody488_0 sourceBody488_24

def source488 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (488, 1, sourceBody488_25)
end InitECandidate.Proofs.WordStages
