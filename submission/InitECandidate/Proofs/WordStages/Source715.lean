import InitECandidate.Proofs.WordStages.Source699
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody715_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody715_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody715_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody715_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody715_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody715_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody715_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody715_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody715_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody715_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody715_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody715_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody715_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 34, 16, 28, 22, 32, 18, 30, 24, 36, 14, 26, 20]) (none)

def sourceBody715_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody715_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_12 sourceBody715_13

def sourceBody715_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_11 sourceBody715_14

def sourceBody715_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_10 sourceBody715_15

def sourceBody715_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_9 sourceBody715_16

def sourceBody715_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_8 sourceBody715_17

def sourceBody715_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_7 sourceBody715_18

def sourceBody715_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_6 sourceBody715_19

def sourceBody715_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_5 sourceBody715_20

def sourceBody715_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_4 sourceBody715_21

def sourceBody715_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_3 sourceBody715_22

def sourceBody715_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_2 sourceBody715_23

def sourceBody715_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_1 sourceBody715_24

def sourceBody715_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody715_0 sourceBody715_25

def source715 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (715, 7, sourceBody715_26)
end InitECandidate.Proofs.WordStages
