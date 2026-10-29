import InitECandidate.Proofs.WordStages.Source721
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody737_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody737_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody737_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody737_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 734) ([0, 10, 6, 8]) (none)

def sourceBody737_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody737_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody737_3 sourceBody737_4

def sourceBody737_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody737_2 sourceBody737_5

def sourceBody737_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody737_1 sourceBody737_6

def sourceBody737_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody737_0 sourceBody737_7

def source737 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (737, 3, sourceBody737_8)
end InitECandidate.Proofs.WordStages
