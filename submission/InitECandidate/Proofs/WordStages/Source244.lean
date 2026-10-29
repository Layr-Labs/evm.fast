import InitECandidate.Proofs.WordStages.Source228
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody244_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody244_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody244_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody244_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody244_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody244_0, 244, 2)) (some 78) ([6, 10]) (some (6, sourceBody244_3, 244, 3))

def sourceBody244_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody244_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_4 sourceBody244_5

def sourceBody244_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_6 sourceBody244_0

def sourceBody244_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_2 sourceBody244_7

def sourceBody244_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_1 sourceBody244_8

def sourceBody244_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_0 sourceBody244_9

def sourceBody244_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_0 sourceBody244_10

def sourceBody244_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody244_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody244_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody244_0, 244, 4)) (some 77) ([6, 10, 8]) (some (6, sourceBody244_3, 244, 5))

def sourceBody244_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_14 sourceBody244_5

def sourceBody244_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_15 sourceBody244_0

def sourceBody244_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_13 sourceBody244_16

def sourceBody244_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_12 sourceBody244_17

def sourceBody244_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_1 sourceBody244_18

def sourceBody244_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_0 sourceBody244_19

def sourceBody244_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_0 sourceBody244_20

def sourceBody244_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_11 sourceBody244_21

def sourceBody244_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody244_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody244_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_24 sourceBody244_0

def sourceBody244_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_23 sourceBody244_25

def sourceBody244_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody244_22 sourceBody244_26

def source244 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (244, 3, sourceBody244_27)
end InitECandidate.Proofs.WordStages
