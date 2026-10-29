import InitECandidate.Proofs.WordStages.Source697
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody713_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody713_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody713_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody713_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody713_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody713_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody713_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody713_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody713_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody713_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody713_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody713_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody713_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 710) ([0, 34, 16, 28, 22, 32, 18, 30, 24, 36, 14, 26, 20]) (none)

def sourceBody713_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody713_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_12 sourceBody713_13

def sourceBody713_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_11 sourceBody713_14

def sourceBody713_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_10 sourceBody713_15

def sourceBody713_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_9 sourceBody713_16

def sourceBody713_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_8 sourceBody713_17

def sourceBody713_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_7 sourceBody713_18

def sourceBody713_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_6 sourceBody713_19

def sourceBody713_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_5 sourceBody713_20

def sourceBody713_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_4 sourceBody713_21

def sourceBody713_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_3 sourceBody713_22

def sourceBody713_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_2 sourceBody713_23

def sourceBody713_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_1 sourceBody713_24

def sourceBody713_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody713_0 sourceBody713_25

def source713 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (713, 7, sourceBody713_26)
end InitECandidate.Proofs.WordStages
