import InitECandidate.Proofs.WordStages.Source355
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody371_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody371_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody371_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody371_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody371_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 12, 6, 10, 8]) (none)

def sourceBody371_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody371_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody371_4 sourceBody371_5

def sourceBody371_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody371_3 sourceBody371_6

def sourceBody371_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody371_2 sourceBody371_7

def sourceBody371_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody371_1 sourceBody371_8

def sourceBody371_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody371_0 sourceBody371_9

def source371 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (371, 3, sourceBody371_10)
end InitECandidate.Proofs.WordStages
