import InitECandidate.Proofs.WordStages.Source461
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody477_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody477_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody477_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody477_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody477_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody477_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody477_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody477_0, 477, 2)) (some 476) ([12, 4, 10, 8]) (some (12, sourceBody477_5, 477, 3))

def sourceBody477_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody477_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_6 sourceBody477_7

def sourceBody477_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_8 sourceBody477_0

def sourceBody477_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_4 sourceBody477_9

def sourceBody477_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_3 sourceBody477_10

def sourceBody477_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_2 sourceBody477_11

def sourceBody477_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_1 sourceBody477_12

def sourceBody477_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_0 sourceBody477_13

def sourceBody477_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_0 sourceBody477_14

def sourceBody477_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody477_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody477_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_17 sourceBody477_0

def sourceBody477_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_16 sourceBody477_18

def sourceBody477_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody477_15 sourceBody477_19

def source477 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (477, 2, sourceBody477_20)
end InitECandidate.Proofs.WordStages
