import InitECandidate.Proofs.WordStages.Source339
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody355_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody355_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody355_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody355_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody355_1 sourceBody355_2

def sourceBody355_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody355_0 sourceBody355_3

def source355 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (355, 2, sourceBody355_4)
end InitECandidate.Proofs.WordStages
