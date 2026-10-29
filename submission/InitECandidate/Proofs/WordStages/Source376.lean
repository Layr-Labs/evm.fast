import InitECandidate.Proofs.WordStages.Source360
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody376_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody376_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody376_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody376_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody376_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 12, 6, 10, 8]) (none)

def sourceBody376_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody376_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody376_4 sourceBody376_5

def sourceBody376_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody376_3 sourceBody376_6

def sourceBody376_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody376_2 sourceBody376_7

def sourceBody376_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody376_1 sourceBody376_8

def sourceBody376_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody376_0 sourceBody376_9

def source376 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (376, 3, sourceBody376_10)
end InitECandidate.Proofs.WordStages
