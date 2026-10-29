import InitECandidate.Proofs.WordStages.Source353
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody369_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody369_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 384#64]))

def sourceBody369_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 392#64]))

def sourceBody369_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody369_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody369_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody369_0, 369, 2)) (some 158) ([6, 10, 8]) (some (6, sourceBody369_4, 369, 3))

def sourceBody369_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody369_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_5 sourceBody369_6

def sourceBody369_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_7 sourceBody369_0

def sourceBody369_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_3 sourceBody369_8

def sourceBody369_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_2 sourceBody369_9

def sourceBody369_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_1 sourceBody369_10

def sourceBody369_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_0 sourceBody369_11

def sourceBody369_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_0 sourceBody369_12

def sourceBody369_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody369_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody369_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_15 sourceBody369_0

def sourceBody369_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_14 sourceBody369_16

def sourceBody369_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody369_13 sourceBody369_17

def source369 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (369, 3, sourceBody369_18)
end InitECandidate.Proofs.WordStages
