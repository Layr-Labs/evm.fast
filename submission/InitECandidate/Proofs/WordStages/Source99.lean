import InitECandidate.Proofs.WordStages.Source83
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody99_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody99_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody99_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody99_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody99_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6, 10, 4, 8]

def sourceBody99_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody99_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody99_4 sourceBody99_5

def sourceBody99_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody99_3 sourceBody99_6

def sourceBody99_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody99_2 sourceBody99_7

def sourceBody99_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody99_1 sourceBody99_8

def sourceBody99_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody99_0 sourceBody99_9

def source99 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (99, 2, sourceBody99_10)
end InitECandidate.Proofs.WordStages
