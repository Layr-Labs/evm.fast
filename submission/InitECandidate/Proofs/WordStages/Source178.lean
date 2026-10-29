import InitECandidate.Proofs.WordStages.Source162
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody178_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody178_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody178_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody178_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 174) ([0, 10, 6, 8]) (none)

def sourceBody178_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody178_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody178_3 sourceBody178_4

def sourceBody178_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody178_2 sourceBody178_5

def sourceBody178_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody178_1 sourceBody178_6

def sourceBody178_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody178_0 sourceBody178_7

def source178 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (178, 3, sourceBody178_8)
end InitECandidate.Proofs.WordStages
