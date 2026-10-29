import InitECandidate.Proofs.WordStages.Source352
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody368_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody368_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody368_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody368_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 367) ([0, 6, 8, 4]) (none)

def sourceBody368_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody368_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody368_3 sourceBody368_4

def sourceBody368_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody368_2 sourceBody368_5

def sourceBody368_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody368_1 sourceBody368_6

def sourceBody368_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody368_0 sourceBody368_7

def source368 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (368, 2, sourceBody368_8)
end InitECandidate.Proofs.WordStages
