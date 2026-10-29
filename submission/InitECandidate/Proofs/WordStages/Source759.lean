import InitECandidate.Proofs.WordStages.Source743
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody759_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody759_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody759_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody759_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 758) ([0, 10, 6, 8]) (none)

def sourceBody759_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody759_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody759_3 sourceBody759_4

def sourceBody759_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody759_2 sourceBody759_5

def sourceBody759_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody759_1 sourceBody759_6

def sourceBody759_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody759_0 sourceBody759_7

def source759 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (759, 3, sourceBody759_8)
end InitECandidate.Proofs.WordStages
