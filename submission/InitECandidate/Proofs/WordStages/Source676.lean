import InitECandidate.Proofs.WordStages.Source660
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody676_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody676_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody676_2 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 80) ([0, 8, 6]) (none)

def sourceBody676_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody676_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody676_2 sourceBody676_3

def sourceBody676_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody676_1 sourceBody676_4

def sourceBody676_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody676_0 sourceBody676_5

def source676 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (676, 3, sourceBody676_6)
end InitECandidate.Proofs.WordStages
