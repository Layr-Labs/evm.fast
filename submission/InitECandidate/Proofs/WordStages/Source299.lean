import InitECandidate.Proofs.WordStages.Source283
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody299_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody299_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody299_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody299_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody299_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody299_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_4 sourceBody299_0

def sourceBody299_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_3 sourceBody299_5

def sourceBody299_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_6 sourceBody299_0

def sourceBody299_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_2 sourceBody299_7

def sourceBody299_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_0 sourceBody299_8

def sourceBody299_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_1 sourceBody299_9

def sourceBody299_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_0 sourceBody299_10

def sourceBody299_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody299_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_12 sourceBody299_9

def sourceBody299_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_0 sourceBody299_13

def sourceBody299_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_11 sourceBody299_14

def sourceBody299_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody299_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_16 sourceBody299_9

def sourceBody299_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_0 sourceBody299_17

def sourceBody299_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_15 sourceBody299_18

def sourceBody299_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody299_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody299_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_21 sourceBody299_0

def sourceBody299_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_20 sourceBody299_22

def sourceBody299_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody299_19 sourceBody299_23

def source299 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (299, 2, sourceBody299_24)
end InitECandidate.Proofs.WordStages
