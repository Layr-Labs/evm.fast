import InitECandidate.Proofs.WordStages.Source222
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody238_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody238_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody238_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody238_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody238_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody238_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody238_0, 238, 2)) (some 237) ([12, 16, 10]) (some (12, sourceBody238_4, 238, 3))

def sourceBody238_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody238_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_5 sourceBody238_6

def sourceBody238_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_7 sourceBody238_0

def sourceBody238_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_3 sourceBody238_8

def sourceBody238_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_2 sourceBody238_9

def sourceBody238_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_1 sourceBody238_10

def sourceBody238_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_0 sourceBody238_11

def sourceBody238_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_0 sourceBody238_12

def sourceBody238_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody238_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody238_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody238_0, 238, 4)) (some 236) ([12, 16, 10]) (some (12, sourceBody238_4, 238, 5))

def sourceBody238_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_16 sourceBody238_6

def sourceBody238_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_17 sourceBody238_0

def sourceBody238_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_3 sourceBody238_18

def sourceBody238_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_15 sourceBody238_19

def sourceBody238_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_14 sourceBody238_20

def sourceBody238_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_0 sourceBody238_21

def sourceBody238_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_0 sourceBody238_22

def sourceBody238_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_13 sourceBody238_23

def sourceBody238_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody238_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody238_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_26 sourceBody238_0

def sourceBody238_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_25 sourceBody238_27

def sourceBody238_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody238_24 sourceBody238_28

def source238 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (238, 5, sourceBody238_29)
end InitECandidate.Proofs.WordStages
