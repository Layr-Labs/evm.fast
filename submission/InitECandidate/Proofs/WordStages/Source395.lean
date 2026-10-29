import InitECandidate.Proofs.WordStages.Source379
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody395_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody395_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody395_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody395_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody395_0, 395, 2)) (some 68) ([12]) (some (12, sourceBody395_2, 395, 3))

def sourceBody395_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody395_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_3 sourceBody395_4

def sourceBody395_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_5 sourceBody395_0

def sourceBody395_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_1 sourceBody395_6

def sourceBody395_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody395_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody395_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody395_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody395_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody395_0, 395, 4)) (some 77) ([4, 10, 8]) (some (4, sourceBody395_11, 395, 5))

def sourceBody395_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_12 sourceBody395_4

def sourceBody395_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_13 sourceBody395_0

def sourceBody395_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_10 sourceBody395_14

def sourceBody395_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_9 sourceBody395_15

def sourceBody395_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_8 sourceBody395_16

def sourceBody395_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_0 sourceBody395_17

def sourceBody395_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_0 sourceBody395_18

def sourceBody395_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody395_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody395_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_21 sourceBody395_0

def sourceBody395_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_20 sourceBody395_22

def sourceBody395_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_19 sourceBody395_23

def sourceBody395_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_7 sourceBody395_24

def sourceBody395_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_0 sourceBody395_25

def sourceBody395_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody395_0 sourceBody395_26

def source395 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (395, 2, sourceBody395_27)
end InitECandidate.Proofs.WordStages
