import InitECandidate.Proofs.WordStages.Source788
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody804_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody804_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody804_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody804_0, 804, 2)) (some 69) ([]) (some (8, sourceBody804_1, 804, 3))

def sourceBody804_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody804_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_2 sourceBody804_3

def sourceBody804_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_4 sourceBody804_0

def sourceBody804_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody804_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody804_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody804_0, 804, 4)) (some 68) ([14]) (some (14, sourceBody804_7, 804, 5))

def sourceBody804_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_8 sourceBody804_3

def sourceBody804_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_9 sourceBody804_0

def sourceBody804_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_6 sourceBody804_10

def sourceBody804_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody804_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody804_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody804_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody804_0, 804, 6)) (some 801) ([10, 18]) (some (10, sourceBody804_14, 804, 7))

def sourceBody804_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_15 sourceBody804_3

def sourceBody804_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_16 sourceBody804_0

def sourceBody804_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_13 sourceBody804_17

def sourceBody804_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_12 sourceBody804_18

def sourceBody804_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_19

def sourceBody804_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_20

def sourceBody804_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody804_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody804_0, 804, 8)) (some 803) ([10, 18]) (some (10, sourceBody804_14, 804, 9))

def sourceBody804_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_23 sourceBody804_3

def sourceBody804_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_24 sourceBody804_0

def sourceBody804_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_22 sourceBody804_25

def sourceBody804_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_12 sourceBody804_26

def sourceBody804_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_27

def sourceBody804_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_28

def sourceBody804_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_21 sourceBody804_29

def sourceBody804_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody804_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1632#64])

def sourceBody804_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody804_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody804_0, 804, 10)) (some 784) ([10, 18, 6, 12]) (some (10, sourceBody804_14, 804, 11))

def sourceBody804_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_34 sourceBody804_3

def sourceBody804_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_35 sourceBody804_0

def sourceBody804_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_33 sourceBody804_36

def sourceBody804_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_32 sourceBody804_37

def sourceBody804_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_22 sourceBody804_38

def sourceBody804_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_31 sourceBody804_39

def sourceBody804_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_40

def sourceBody804_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_41

def sourceBody804_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_30 sourceBody804_42

def sourceBody804_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody804_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody804_0, 804, 12)) (some 70) ([10]) (some (10, sourceBody804_14, 804, 13))

def sourceBody804_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_45 sourceBody804_3

def sourceBody804_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_46 sourceBody804_0

def sourceBody804_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_44 sourceBody804_47

def sourceBody804_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_48

def sourceBody804_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_49

def sourceBody804_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_43 sourceBody804_50

def sourceBody804_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody804_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody804_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_53 sourceBody804_0

def sourceBody804_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_52 sourceBody804_54

def sourceBody804_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_51 sourceBody804_55

def sourceBody804_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_11 sourceBody804_56

def sourceBody804_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_57

def sourceBody804_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_58

def sourceBody804_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_5 sourceBody804_59

def sourceBody804_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_60

def sourceBody804_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody804_0 sourceBody804_61

def source804 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (804, 3, sourceBody804_62)
end InitECandidate.Proofs.WordStages
