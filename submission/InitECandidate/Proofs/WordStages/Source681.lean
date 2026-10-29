import InitECandidate.Proofs.WordStages.Source665
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody681_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody681_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
          (Flapjack.WordLangExpHOL.const 5#64))
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody681_2 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 676) ([0, 8, 6]) (none)

def sourceBody681_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody681_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody681_2 sourceBody681_3

def sourceBody681_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody681_1 sourceBody681_4

def sourceBody681_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody681_0 sourceBody681_5

def source681 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (681, 3, sourceBody681_6)
end InitECandidate.Proofs.WordStages
