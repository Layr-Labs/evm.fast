import InitECandidate.Proofs.WordStages.Source333
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody349_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody349_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody349_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody349_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody349_1 sourceBody349_2

def sourceBody349_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody349_0 sourceBody349_3

def source349 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (349, 2, sourceBody349_4)
end InitECandidate.Proofs.WordStages
