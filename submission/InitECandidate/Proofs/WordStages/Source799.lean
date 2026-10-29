import InitECandidate.Proofs.WordStages.Source783
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody799_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody799_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody799_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody799_0, 799, 2)) (some 69) ([]) (some (28, sourceBody799_1, 799, 3))

def sourceBody799_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody799_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_2 sourceBody799_3

def sourceBody799_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_4 sourceBody799_0

def sourceBody799_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody799_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody799_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody799_0, 799, 4)) (some 68) ([22]) (some (22, sourceBody799_7, 799, 5))

def sourceBody799_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_8 sourceBody799_3

def sourceBody799_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_9 sourceBody799_0

def sourceBody799_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_6 sourceBody799_10

def sourceBody799_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody799_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody799_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody799_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody799_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody799_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody799_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody799_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody799_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody799_0, 799, 6)) (some 796) ([32, 20, 30, 24, 34, 16, 26]) (some (32, sourceBody799_19, 799, 7))

def sourceBody799_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_20 sourceBody799_3

def sourceBody799_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_21 sourceBody799_0

def sourceBody799_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_18 sourceBody799_22

def sourceBody799_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_17 sourceBody799_23

def sourceBody799_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_16 sourceBody799_24

def sourceBody799_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_15 sourceBody799_25

def sourceBody799_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_14 sourceBody799_26

def sourceBody799_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_13 sourceBody799_27

def sourceBody799_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_12 sourceBody799_28

def sourceBody799_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_29

def sourceBody799_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_30

def sourceBody799_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody799_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody799_0, 799, 8)) (some 798) ([32, 20]) (some (32, sourceBody799_19, 799, 9))

def sourceBody799_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_33 sourceBody799_3

def sourceBody799_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_34 sourceBody799_0

def sourceBody799_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_32 sourceBody799_35

def sourceBody799_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_12 sourceBody799_36

def sourceBody799_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_37

def sourceBody799_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_38

def sourceBody799_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_31 sourceBody799_39

def sourceBody799_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody799_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1624#64])

def sourceBody799_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody799_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody799_0, 799, 10)) (some 772) ([32, 20, 30, 24]) (some (32, sourceBody799_19, 799, 11))

def sourceBody799_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_44 sourceBody799_3

def sourceBody799_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_45 sourceBody799_0

def sourceBody799_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_43 sourceBody799_46

def sourceBody799_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_42 sourceBody799_47

def sourceBody799_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_32 sourceBody799_48

def sourceBody799_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_41 sourceBody799_49

def sourceBody799_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_50

def sourceBody799_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_51

def sourceBody799_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_40 sourceBody799_52

def sourceBody799_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody799_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody799_0, 799, 12)) (some 70) ([32]) (some (32, sourceBody799_19, 799, 13))

def sourceBody799_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_55 sourceBody799_3

def sourceBody799_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_56 sourceBody799_0

def sourceBody799_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_54 sourceBody799_57

def sourceBody799_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_58

def sourceBody799_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_59

def sourceBody799_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_53 sourceBody799_60

def sourceBody799_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody799_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody799_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_63 sourceBody799_0

def sourceBody799_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_62 sourceBody799_64

def sourceBody799_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_61 sourceBody799_65

def sourceBody799_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_11 sourceBody799_66

def sourceBody799_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_67

def sourceBody799_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_68

def sourceBody799_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_5 sourceBody799_69

def sourceBody799_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_70

def sourceBody799_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody799_0 sourceBody799_71

def source799 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (799, 8, sourceBody799_72)
end InitECandidate.Proofs.WordStages
