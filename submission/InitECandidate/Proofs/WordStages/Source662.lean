import InitECandidate.Proofs.WordStages.Source646
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody662_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody662_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody662_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody662_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody662_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 17522657719365597833#64)

def sourceBody662_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 13107472804851548667#64)

def sourceBody662_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 5164255478447964150#64)

def sourceBody662_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 493319470278259999#64)

def sourceBody662_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody662_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody662_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_8 sourceBody662_9

def sourceBody662_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_7 sourceBody662_10

def sourceBody662_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_6 sourceBody662_11

def sourceBody662_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_5 sourceBody662_12

def sourceBody662_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_4 sourceBody662_13

def sourceBody662_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_3 sourceBody662_14

def sourceBody662_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_2 sourceBody662_15

def sourceBody662_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_1 sourceBody662_16

def sourceBody662_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody662_0 sourceBody662_17

def source662 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (662, 5, sourceBody662_18)
end InitECandidate.Proofs.WordStages
