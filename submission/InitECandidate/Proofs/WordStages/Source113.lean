import InitECandidate.Proofs.WordStages.Source97
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody113_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody113_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody113_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 14])

def sourceBody113_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16])

def sourceBody113_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22, 20, 24, 18]

def sourceBody113_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody113_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody113_4 sourceBody113_5

def sourceBody113_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody113_3 sourceBody113_6

def sourceBody113_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody113_2 sourceBody113_7

def sourceBody113_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody113_1 sourceBody113_8

def sourceBody113_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody113_0 sourceBody113_9

def source113 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (113, 9, sourceBody113_10)
end InitECandidate.Proofs.WordStages
