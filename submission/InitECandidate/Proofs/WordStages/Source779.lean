import InitECandidate.Proofs.WordStages.Source763
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody779_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody779_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 732) ([0, 4]) (none)

def sourceBody779_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody779_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody779_1 sourceBody779_2

def sourceBody779_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody779_0 sourceBody779_3

def source779 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (779, 2, sourceBody779_4)
end InitECandidate.Proofs.WordStages
