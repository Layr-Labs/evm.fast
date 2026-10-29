import InitECandidate.Proofs.WordStages.Source98
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody114_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody114_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody114_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 14])

def sourceBody114_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16])

def sourceBody114_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22, 20, 24, 18]

def sourceBody114_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody114_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody114_4 sourceBody114_5

def sourceBody114_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody114_3 sourceBody114_6

def sourceBody114_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody114_2 sourceBody114_7

def sourceBody114_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody114_1 sourceBody114_8

def sourceBody114_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody114_0 sourceBody114_9

def source114 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (114, 9, sourceBody114_10)
end InitECandidate.Proofs.WordStages
