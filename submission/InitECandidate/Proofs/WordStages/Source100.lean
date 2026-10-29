import InitECandidate.Proofs.WordStages.Source84
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody100_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody100_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody100_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody100_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody100_1 sourceBody100_2

def sourceBody100_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody100_0 sourceBody100_3

def source100 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (100, 5, sourceBody100_4)
end InitECandidate.Proofs.WordStages
