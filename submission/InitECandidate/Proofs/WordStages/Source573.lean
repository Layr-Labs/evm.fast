import InitECandidate.Proofs.WordStages.Source557
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody573_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody573_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody573_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody573_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody573_0, 573, 2)) (some 470) ([10]) (some (10, sourceBody573_2, 573, 3))

def sourceBody573_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody573_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_3 sourceBody573_4

def sourceBody573_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_5 sourceBody573_0

def sourceBody573_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_1 sourceBody573_6

def sourceBody573_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_7

def sourceBody573_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_8

def sourceBody573_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody573_0, 573, 4)) (some 572) ([]) (some (10, sourceBody573_2, 573, 5))

def sourceBody573_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_10 sourceBody573_4

def sourceBody573_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_11 sourceBody573_0

def sourceBody573_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody573_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody573_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody573_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody573_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody573_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody573_0, 573, 6)) (some 476) ([2, 8, 6, 12]) (some (2, sourceBody573_17, 573, 7))

def sourceBody573_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_18 sourceBody573_4

def sourceBody573_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_19 sourceBody573_0

def sourceBody573_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_16 sourceBody573_20

def sourceBody573_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_15 sourceBody573_21

def sourceBody573_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_14 sourceBody573_22

def sourceBody573_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_13 sourceBody573_23

def sourceBody573_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_24

def sourceBody573_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_25

def sourceBody573_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody573_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody573_0, 573, 8)) (some 490) ([2]) (some (2, sourceBody573_17, 573, 9))

def sourceBody573_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_28 sourceBody573_4

def sourceBody573_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_29 sourceBody573_0

def sourceBody573_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_27 sourceBody573_30

def sourceBody573_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_31

def sourceBody573_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_32

def sourceBody573_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_26 sourceBody573_33

def sourceBody573_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody573_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody573_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_36 sourceBody573_0

def sourceBody573_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_35 sourceBody573_37

def sourceBody573_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_34 sourceBody573_38

def sourceBody573_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_12 sourceBody573_39

def sourceBody573_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_40

def sourceBody573_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_0 sourceBody573_41

def sourceBody573_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody573_9 sourceBody573_42

def source573 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (573, 1, sourceBody573_43)
end InitECandidate.Proofs.WordStages
