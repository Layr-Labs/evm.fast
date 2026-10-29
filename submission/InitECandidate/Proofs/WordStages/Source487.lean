import InitECandidate.Proofs.WordStages.Source471
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody487_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody487_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody487_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody487_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody487_0, 487, 2)) (some 68) ([8]) (some (8, sourceBody487_2, 487, 3))

def sourceBody487_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody487_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_3 sourceBody487_4

def sourceBody487_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_5 sourceBody487_0

def sourceBody487_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_1 sourceBody487_6

def sourceBody487_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody487_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody487_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody487_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody487_0, 487, 4)) (some 78) ([2, 6]) (some (2, sourceBody487_10, 487, 5))

def sourceBody487_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_11 sourceBody487_4

def sourceBody487_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_12 sourceBody487_0

def sourceBody487_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_9 sourceBody487_13

def sourceBody487_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_8 sourceBody487_14

def sourceBody487_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_0 sourceBody487_15

def sourceBody487_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_0 sourceBody487_16

def sourceBody487_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody487_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody487_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_19 sourceBody487_0

def sourceBody487_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_18 sourceBody487_20

def sourceBody487_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_17 sourceBody487_21

def sourceBody487_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_7 sourceBody487_22

def sourceBody487_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_0 sourceBody487_23

def sourceBody487_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody487_0 sourceBody487_24

def source487 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (487, 1, sourceBody487_25)
end InitECandidate.Proofs.WordStages
