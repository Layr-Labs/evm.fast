import InitECandidate.Proofs.WordStages.Source357
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody373_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody373_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody373_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody373_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody373_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 12, 6, 10, 8]) (none)

def sourceBody373_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody373_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody373_4 sourceBody373_5

def sourceBody373_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody373_3 sourceBody373_6

def sourceBody373_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody373_2 sourceBody373_7

def sourceBody373_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody373_1 sourceBody373_8

def sourceBody373_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody373_0 sourceBody373_9

def source373 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (373, 3, sourceBody373_10)
end InitECandidate.Proofs.WordStages
