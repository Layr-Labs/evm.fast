import InitECandidate.Proofs.WordStages.Source356
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody372_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody372_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody372_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody372_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody372_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 8, 12, 10, 14]) (none)

def sourceBody372_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody372_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody372_4 sourceBody372_5

def sourceBody372_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody372_3 sourceBody372_6

def sourceBody372_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody372_2 sourceBody372_7

def sourceBody372_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody372_1 sourceBody372_8

def sourceBody372_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody372_0 sourceBody372_9

def source372 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (372, 4, sourceBody372_10)
end InitECandidate.Proofs.WordStages
