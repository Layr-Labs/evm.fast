import InitECandidate.Proofs.WordStages.Source764
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody780_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody780_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody780_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody780_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody780_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody780_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody780_0, 780, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody780_4, 780, 3))

def sourceBody780_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody780_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_5 sourceBody780_6

def sourceBody780_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_7 sourceBody780_0

def sourceBody780_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_3 sourceBody780_8

def sourceBody780_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_2 sourceBody780_9

def sourceBody780_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_1 sourceBody780_10

def sourceBody780_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_0 sourceBody780_11

def sourceBody780_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_0 sourceBody780_12

def sourceBody780_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody780_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody780_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_15 sourceBody780_0

def sourceBody780_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_14 sourceBody780_16

def sourceBody780_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody780_13 sourceBody780_17

def source780 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (780, 3, sourceBody780_18)
end InitECandidate.Proofs.WordStages
