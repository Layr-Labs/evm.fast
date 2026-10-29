import InitECandidate.Proofs.WordStages.Source451
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody467_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody467_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody467_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody467_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody467_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16, 6, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody467_0, 467, 2)) (some 146) ([10, 18]) (some (10, sourceBody467_3, 467, 3))

def sourceBody467_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody467_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_4 sourceBody467_5

def sourceBody467_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_6 sourceBody467_0

def sourceBody467_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_2 sourceBody467_7

def sourceBody467_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_1 sourceBody467_8

def sourceBody467_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody467_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody467_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody467_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody467_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 18, 4, 12]

def sourceBody467_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_14 sourceBody467_0

def sourceBody467_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_13 sourceBody467_15

def sourceBody467_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_12 sourceBody467_16

def sourceBody467_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_11 sourceBody467_17

def sourceBody467_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_10 sourceBody467_18

def sourceBody467_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_9 sourceBody467_19

def sourceBody467_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_20

def sourceBody467_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_21

def sourceBody467_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_22

def sourceBody467_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_23

def sourceBody467_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_24

def sourceBody467_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_25

def sourceBody467_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_26

def sourceBody467_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody467_0 sourceBody467_27

def source467 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (467, 2, sourceBody467_28)
end InitECandidate.Proofs.WordStages
