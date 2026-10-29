import InitECandidate.Proofs.WordStages.Source529
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody545_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody545_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody545_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody545_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody545_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody545_0, 545, 2)) (some 437) ([6, 10]) (some (6, sourceBody545_3, 545, 3))

def sourceBody545_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody545_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_4 sourceBody545_5

def sourceBody545_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_6 sourceBody545_0

def sourceBody545_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_2 sourceBody545_7

def sourceBody545_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_1 sourceBody545_8

def sourceBody545_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody545_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody545_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody545_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 8

def sourceBody545_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_13 sourceBody545_0

def sourceBody545_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_12 sourceBody545_14

def sourceBody545_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_15 sourceBody545_0

def sourceBody545_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_11 sourceBody545_16

def sourceBody545_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_0 sourceBody545_17

def sourceBody545_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_10 sourceBody545_18

def sourceBody545_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_0 sourceBody545_19

def sourceBody545_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody545_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody545_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_22 sourceBody545_0

def sourceBody545_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_21 sourceBody545_23

def sourceBody545_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_20 sourceBody545_24

def sourceBody545_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_9 sourceBody545_25

def sourceBody545_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_0 sourceBody545_26

def sourceBody545_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody545_0 sourceBody545_27

def source545 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (545, 3, sourceBody545_28)
end InitECandidate.Proofs.WordStages
