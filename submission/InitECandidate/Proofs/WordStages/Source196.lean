import InitECandidate.Proofs.WordStages.Source180
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody196_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody196_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody196_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody196_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody196_1 sourceBody196_2

def sourceBody196_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody196_0 sourceBody196_3

def source196 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (196, 2, sourceBody196_4)
end InitECandidate.Proofs.WordStages
