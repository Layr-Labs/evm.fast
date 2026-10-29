import InitECandidate.Proofs.WordStages.Source744
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody760_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody760_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody760_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody760_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody760_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody760_0, 760, 2)) (some 746) ([6, 8]) (some (6, sourceBody760_3, 760, 3))

def sourceBody760_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody760_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_4 sourceBody760_5

def sourceBody760_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_6 sourceBody760_0

def sourceBody760_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_2 sourceBody760_7

def sourceBody760_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_1 sourceBody760_8

def sourceBody760_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_0 sourceBody760_9

def sourceBody760_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_0 sourceBody760_10

def sourceBody760_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody760_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody760_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody760_0, 760, 4)) (some 751) ([6, 8]) (some (6, sourceBody760_3, 760, 5))

def sourceBody760_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_14 sourceBody760_5

def sourceBody760_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_15 sourceBody760_0

def sourceBody760_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_13 sourceBody760_16

def sourceBody760_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_12 sourceBody760_17

def sourceBody760_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_0 sourceBody760_18

def sourceBody760_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_0 sourceBody760_19

def sourceBody760_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_11 sourceBody760_20

def sourceBody760_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody760_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody760_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_23 sourceBody760_0

def sourceBody760_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_22 sourceBody760_24

def sourceBody760_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody760_21 sourceBody760_25

def source760 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (760, 3, sourceBody760_26)
end InitECandidate.Proofs.WordStages
