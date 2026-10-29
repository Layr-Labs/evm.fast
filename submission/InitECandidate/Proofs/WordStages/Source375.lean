import InitECandidate.Proofs.WordStages.Source359
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody375_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody375_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody375_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody375_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody375_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 12, 6, 10, 8]) (none)

def sourceBody375_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody375_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody375_4 sourceBody375_5

def sourceBody375_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody375_3 sourceBody375_6

def sourceBody375_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody375_2 sourceBody375_7

def sourceBody375_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody375_1 sourceBody375_8

def sourceBody375_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody375_0 sourceBody375_9

def source375 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (375, 3, sourceBody375_10)
end InitECandidate.Proofs.WordStages
