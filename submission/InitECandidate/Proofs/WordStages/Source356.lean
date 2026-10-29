import InitECandidate.Proofs.WordStages.Source340
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody356_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))
    (Flapjack.WordLangExpHOL.const 17#64))

def sourceBody356_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody356_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody356_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody356_1 sourceBody356_2

def sourceBody356_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody356_0 sourceBody356_3

def source356 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (356, 2, sourceBody356_4)
end InitECandidate.Proofs.WordStages
