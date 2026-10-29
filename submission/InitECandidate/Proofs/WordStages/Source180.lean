import InitECandidate.Proofs.WordStages.Source164
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody180_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody180_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 175) ([0, 4]) (none)

def sourceBody180_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody180_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody180_1 sourceBody180_2

def sourceBody180_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody180_0 sourceBody180_3

def source180 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (180, 2, sourceBody180_4)
end InitECandidate.Proofs.WordStages
