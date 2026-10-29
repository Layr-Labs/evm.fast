import InitECandidate.Proofs.WordStages.Source661
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody677_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody677_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody677_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody677_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 79) ([0, 8, 12, 10]) (none)

def sourceBody677_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody677_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody677_3 sourceBody677_4

def sourceBody677_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody677_2 sourceBody677_5

def sourceBody677_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody677_1 sourceBody677_6

def sourceBody677_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody677_0 sourceBody677_7

def source677 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (677, 4, sourceBody677_8)
end InitECandidate.Proofs.WordStages
