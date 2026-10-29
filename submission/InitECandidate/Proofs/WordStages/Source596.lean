import InitECandidate.Proofs.WordStages.Source580
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody596_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody596_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody596_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody596_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody596_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody596_0, 596, 2)) (some 489) ([12]) (some (12, sourceBody596_3, 596, 3))

def sourceBody596_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody596_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_4 sourceBody596_5

def sourceBody596_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_6 sourceBody596_0

def sourceBody596_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_2 sourceBody596_7

def sourceBody596_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 104#64)

def sourceBody596_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody596_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody596_0, 596, 4)) (some 74) ([10]) (some (10, sourceBody596_10, 596, 5))

def sourceBody596_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_11 sourceBody596_5

def sourceBody596_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_12 sourceBody596_0

def sourceBody596_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_9 sourceBody596_13

def sourceBody596_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody596_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 104#64)

def sourceBody596_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody596_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody596_0, 596, 6)) (some 78) ([16, 6]) (some (16, sourceBody596_17, 596, 7))

def sourceBody596_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_18 sourceBody596_5

def sourceBody596_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_19 sourceBody596_0

def sourceBody596_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_16 sourceBody596_20

def sourceBody596_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_15 sourceBody596_21

def sourceBody596_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_22

def sourceBody596_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_23

def sourceBody596_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody596_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody596_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody596_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 6

def sourceBody596_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_28 sourceBody596_0

def sourceBody596_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_27 sourceBody596_29

def sourceBody596_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_30 sourceBody596_0

def sourceBody596_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_26 sourceBody596_31

def sourceBody596_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_32

def sourceBody596_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_25 sourceBody596_33

def sourceBody596_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_34

def sourceBody596_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_24 sourceBody596_35

def sourceBody596_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody596_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody596_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_38 sourceBody596_31

def sourceBody596_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_39

def sourceBody596_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_37 sourceBody596_40

def sourceBody596_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_41

def sourceBody596_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_36 sourceBody596_42

def sourceBody596_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody596_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody596_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_45 sourceBody596_31

def sourceBody596_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_46

def sourceBody596_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_44 sourceBody596_47

def sourceBody596_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_48

def sourceBody596_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_43 sourceBody596_49

def sourceBody596_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody596_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody596_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_52 sourceBody596_31

def sourceBody596_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_53

def sourceBody596_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_51 sourceBody596_54

def sourceBody596_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_55

def sourceBody596_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_50 sourceBody596_56

def sourceBody596_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody596_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody596_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_59 sourceBody596_31

def sourceBody596_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_60

def sourceBody596_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_58 sourceBody596_61

def sourceBody596_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_62

def sourceBody596_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_57 sourceBody596_63

def sourceBody596_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody596_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_15 sourceBody596_31

def sourceBody596_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_66

def sourceBody596_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_65 sourceBody596_67

def sourceBody596_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_68

def sourceBody596_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_64 sourceBody596_69

def sourceBody596_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody596_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody596_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_72 sourceBody596_0

def sourceBody596_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_71 sourceBody596_73

def sourceBody596_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_70 sourceBody596_74

def sourceBody596_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_14 sourceBody596_75

def sourceBody596_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_76

def sourceBody596_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_77

def sourceBody596_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_8 sourceBody596_78

def sourceBody596_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_79

def sourceBody596_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_80

def sourceBody596_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_1 sourceBody596_81

def sourceBody596_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody596_0 sourceBody596_82

def source596 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (596, 3, sourceBody596_83)
end InitECandidate.Proofs.WordStages
