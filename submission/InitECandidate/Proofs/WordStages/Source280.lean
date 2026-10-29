import InitECandidate.Proofs.WordStages.Source264
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody280_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody280_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody280_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody280_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 11684671#64)

def sourceBody280_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody280_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16, 6, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody280_0, 280, 2)) (some 279) ([10, 18, 4]) (some (10, sourceBody280_4, 280, 3))

def sourceBody280_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody280_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_5 sourceBody280_6

def sourceBody280_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_7 sourceBody280_0

def sourceBody280_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_3 sourceBody280_8

def sourceBody280_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_2 sourceBody280_9

def sourceBody280_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_1 sourceBody280_10

def sourceBody280_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody280_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody280_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody280_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody280_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 18, 4, 12]

def sourceBody280_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_16 sourceBody280_0

def sourceBody280_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_15 sourceBody280_17

def sourceBody280_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_14 sourceBody280_18

def sourceBody280_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_13 sourceBody280_19

def sourceBody280_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_12 sourceBody280_20

def sourceBody280_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_11 sourceBody280_21

def sourceBody280_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_22

def sourceBody280_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_23

def sourceBody280_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_24

def sourceBody280_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_25

def sourceBody280_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_26

def sourceBody280_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_27

def sourceBody280_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_28

def sourceBody280_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody280_0 sourceBody280_29

def source280 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (280, 2, sourceBody280_30)
end InitECandidate.Proofs.WordStages
