import InitECandidate.Proofs.WordStages.Source242
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody258_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody258_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody258_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody258_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody258_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody258_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody258_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody258_0, 258, 2)) (some 235) ([12, 18, 10, 14]) (some (12, sourceBody258_5, 258, 3))

def sourceBody258_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody258_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_6 sourceBody258_7

def sourceBody258_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_8 sourceBody258_0

def sourceBody258_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_4 sourceBody258_9

def sourceBody258_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_3 sourceBody258_10

def sourceBody258_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_2 sourceBody258_11

def sourceBody258_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_1 sourceBody258_12

def sourceBody258_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_0 sourceBody258_13

def sourceBody258_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_0 sourceBody258_14

def sourceBody258_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody258_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody258_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody258_0, 258, 4)) (some 236) ([12, 18, 10]) (some (12, sourceBody258_5, 258, 5))

def sourceBody258_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_18 sourceBody258_7

def sourceBody258_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_19 sourceBody258_0

def sourceBody258_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_17 sourceBody258_20

def sourceBody258_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_2 sourceBody258_21

def sourceBody258_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_16 sourceBody258_22

def sourceBody258_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_0 sourceBody258_23

def sourceBody258_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_0 sourceBody258_24

def sourceBody258_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_15 sourceBody258_25

def sourceBody258_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody258_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody258_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_28 sourceBody258_0

def sourceBody258_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_27 sourceBody258_29

def sourceBody258_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody258_26 sourceBody258_30

def source258 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (258, 5, sourceBody258_31)
end InitECandidate.Proofs.WordStages
