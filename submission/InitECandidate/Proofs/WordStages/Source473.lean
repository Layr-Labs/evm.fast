import InitECandidate.Proofs.WordStages.Source457
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody473_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody473_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody473_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]),
          Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64])],
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])])

def sourceBody473_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody473_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody473_3 sourceBody473_0

def sourceBody473_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody473_2 sourceBody473_4

def sourceBody473_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody473_1 sourceBody473_5

def sourceBody473_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody473_0 sourceBody473_6

def source473 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (473, 2, sourceBody473_7)
end InitECandidate.Proofs.WordStages
