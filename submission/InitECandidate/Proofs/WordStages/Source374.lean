import InitECandidate.Proofs.WordStages.Source358
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody374_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody374_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody374_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody374_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody374_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 12, 6, 10, 8]) (none)

def sourceBody374_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody374_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody374_4 sourceBody374_5

def sourceBody374_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody374_3 sourceBody374_6

def sourceBody374_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody374_2 sourceBody374_7

def sourceBody374_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody374_1 sourceBody374_8

def sourceBody374_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody374_0 sourceBody374_9

def source374 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (374, 3, sourceBody374_10)
end InitECandidate.Proofs.WordStages
