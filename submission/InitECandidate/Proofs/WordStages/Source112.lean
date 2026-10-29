import InitECandidate.Proofs.WordStages.Source96
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody112_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody112_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody112_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 14])

def sourceBody112_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16])

def sourceBody112_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22, 20, 24, 18]

def sourceBody112_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody112_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody112_4 sourceBody112_5

def sourceBody112_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody112_3 sourceBody112_6

def sourceBody112_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody112_2 sourceBody112_7

def sourceBody112_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody112_1 sourceBody112_8

def sourceBody112_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody112_0 sourceBody112_9

def source112 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (112, 9, sourceBody112_10)
end InitECandidate.Proofs.WordStages
