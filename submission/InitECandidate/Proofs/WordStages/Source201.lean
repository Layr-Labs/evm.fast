import InitECandidate.Proofs.WordStages.Source185
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody201_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody201_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody201_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody201_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody201_1 sourceBody201_2

def sourceBody201_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody201_0 sourceBody201_3

def source201 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (201, 1, sourceBody201_4)
end InitECandidate.Proofs.WordStages
