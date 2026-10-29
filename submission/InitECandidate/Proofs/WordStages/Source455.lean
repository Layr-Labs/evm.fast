import InitECandidate.Proofs.WordStages.Source439
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody455_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody455_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody455_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody455_0, 455, 2)) (some 454) ([]) (some (4, sourceBody455_1, 455, 3))

def sourceBody455_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody455_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_2 sourceBody455_3

def sourceBody455_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_4 sourceBody455_0

def sourceBody455_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_0 sourceBody455_5

def sourceBody455_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_0 sourceBody455_6

def sourceBody455_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody455_0, 455, 4)) (some 433) ([]) (some (4, sourceBody455_1, 455, 5))

def sourceBody455_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_8 sourceBody455_3

def sourceBody455_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_9 sourceBody455_0

def sourceBody455_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_0 sourceBody455_10

def sourceBody455_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_0 sourceBody455_11

def sourceBody455_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_7 sourceBody455_12

def sourceBody455_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody455_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody455_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_15 sourceBody455_0

def sourceBody455_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_14 sourceBody455_16

def sourceBody455_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody455_13 sourceBody455_17

def source455 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (455, 1, sourceBody455_18)
end InitECandidate.Proofs.WordStages
