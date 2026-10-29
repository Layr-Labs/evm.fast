import InitECandidate.Proofs.WordStages.Source331
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody347_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody347_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody347_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody347_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody347_1 sourceBody347_2

def sourceBody347_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody347_0 sourceBody347_3

def source347 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (347, 2, sourceBody347_4)
end InitECandidate.Proofs.WordStages
