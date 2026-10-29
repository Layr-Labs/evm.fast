import InitECandidate.Proofs.WordStages.Source843
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody859_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody859_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 200#64)

def sourceBody859_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody859_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody859_0, 859, 2)) (some 68) ([8]) (some (8, sourceBody859_2, 859, 3))

def sourceBody859_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody859_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_3 sourceBody859_4

def sourceBody859_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_5 sourceBody859_0

def sourceBody859_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_1 sourceBody859_6

def sourceBody859_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody859_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 200#64)

def sourceBody859_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody859_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody859_0, 859, 4)) (some 78) ([2, 6]) (some (2, sourceBody859_10, 859, 5))

def sourceBody859_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_11 sourceBody859_4

def sourceBody859_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_12 sourceBody859_0

def sourceBody859_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_9 sourceBody859_13

def sourceBody859_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_8 sourceBody859_14

def sourceBody859_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_0 sourceBody859_15

def sourceBody859_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_0 sourceBody859_16

def sourceBody859_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody859_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody859_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_19 sourceBody859_0

def sourceBody859_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_18 sourceBody859_20

def sourceBody859_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_17 sourceBody859_21

def sourceBody859_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_7 sourceBody859_22

def sourceBody859_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_0 sourceBody859_23

def sourceBody859_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody859_0 sourceBody859_24

def source859 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (859, 1, sourceBody859_25)
end InitECandidate.Proofs.WordStages
