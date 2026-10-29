import InitECandidate.Proofs.WordStages.Source752
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody768_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody768_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody768_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody768_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody768_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody768_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody768_0, 768, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody768_4, 768, 3))

def sourceBody768_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody768_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_5 sourceBody768_6

def sourceBody768_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_7 sourceBody768_0

def sourceBody768_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_3 sourceBody768_8

def sourceBody768_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_2 sourceBody768_9

def sourceBody768_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_1 sourceBody768_10

def sourceBody768_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_0 sourceBody768_11

def sourceBody768_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_0 sourceBody768_12

def sourceBody768_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody768_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody768_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_15 sourceBody768_0

def sourceBody768_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_14 sourceBody768_16

def sourceBody768_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody768_13 sourceBody768_17

def source768 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (768, 3, sourceBody768_18)
end InitECandidate.Proofs.WordStages
