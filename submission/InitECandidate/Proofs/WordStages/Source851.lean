import InitECandidate.Proofs.WordStages.Source835
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody851_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody851_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody851_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody851_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody851_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody851_0, 851, 2)) (some 88) ([10, 14]) (some (10, sourceBody851_3, 851, 3))

def sourceBody851_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody851_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_4 sourceBody851_5

def sourceBody851_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_6 sourceBody851_0

def sourceBody851_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_2 sourceBody851_7

def sourceBody851_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_1 sourceBody851_8

def sourceBody851_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_9

def sourceBody851_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_10

def sourceBody851_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody851_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody851_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody851_0, 851, 4)) (some 89) ([10, 14]) (some (10, sourceBody851_3, 851, 5))

def sourceBody851_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_14 sourceBody851_5

def sourceBody851_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_15 sourceBody851_0

def sourceBody851_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_13 sourceBody851_16

def sourceBody851_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_12 sourceBody851_17

def sourceBody851_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_18

def sourceBody851_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_19

def sourceBody851_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_11 sourceBody851_20

def sourceBody851_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody851_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody851_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody851_0, 851, 6)) (some 89) ([10, 14]) (some (10, sourceBody851_3, 851, 7))

def sourceBody851_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_24 sourceBody851_5

def sourceBody851_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_25 sourceBody851_0

def sourceBody851_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_23 sourceBody851_26

def sourceBody851_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_22 sourceBody851_27

def sourceBody851_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_28

def sourceBody851_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_0 sourceBody851_29

def sourceBody851_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_21 sourceBody851_30

def sourceBody851_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody851_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody851_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_33 sourceBody851_0

def sourceBody851_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_32 sourceBody851_34

def sourceBody851_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody851_31 sourceBody851_35

def source851 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (851, 5, sourceBody851_36)
end InitECandidate.Proofs.WordStages
