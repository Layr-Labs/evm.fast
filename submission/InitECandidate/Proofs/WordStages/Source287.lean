import InitECandidate.Proofs.WordStages.Source271
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody287_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody287_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody287_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody287_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 2)) (some 68) ([8]) (some (8, sourceBody287_2, 287, 3))

def sourceBody287_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody287_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_3 sourceBody287_4

def sourceBody287_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_5 sourceBody287_0

def sourceBody287_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_1 sourceBody287_6

def sourceBody287_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody287_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody287_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody287_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody287_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_11 sourceBody287_0

def sourceBody287_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_10 sourceBody287_12

def sourceBody287_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_13 sourceBody287_0

def sourceBody287_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_9 sourceBody287_14

def sourceBody287_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_15

def sourceBody287_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_8 sourceBody287_16

def sourceBody287_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_17

def sourceBody287_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_7 sourceBody287_18

def sourceBody287_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_19

def sourceBody287_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_20

def sourceBody287_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 4)) (some 68) ([8]) (some (8, sourceBody287_2, 287, 5))

def sourceBody287_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_22 sourceBody287_4

def sourceBody287_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_23 sourceBody287_0

def sourceBody287_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_1 sourceBody287_24

def sourceBody287_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 136#64])

def sourceBody287_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_26 sourceBody287_16

def sourceBody287_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_27

def sourceBody287_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_25 sourceBody287_28

def sourceBody287_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_29

def sourceBody287_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_30

def sourceBody287_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_21 sourceBody287_31

def sourceBody287_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody287_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 6)) (some 68) ([8]) (some (8, sourceBody287_2, 287, 7))

def sourceBody287_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_34 sourceBody287_4

def sourceBody287_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_35 sourceBody287_0

def sourceBody287_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_33 sourceBody287_36

def sourceBody287_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody287_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_38 sourceBody287_16

def sourceBody287_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_39

def sourceBody287_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_37 sourceBody287_40

def sourceBody287_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_41

def sourceBody287_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_42

def sourceBody287_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_32 sourceBody287_43

def sourceBody287_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody287_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 8)) (some 68) ([8]) (some (8, sourceBody287_2, 287, 9))

def sourceBody287_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_46 sourceBody287_4

def sourceBody287_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_47 sourceBody287_0

def sourceBody287_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_45 sourceBody287_48

def sourceBody287_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody287_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_50 sourceBody287_16

def sourceBody287_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_51

def sourceBody287_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_49 sourceBody287_52

def sourceBody287_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_53

def sourceBody287_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_54

def sourceBody287_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_44 sourceBody287_55

def sourceBody287_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody287_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 10)) (some 68) ([8]) (some (8, sourceBody287_2, 287, 11))

def sourceBody287_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_58 sourceBody287_4

def sourceBody287_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_59 sourceBody287_0

def sourceBody287_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_57 sourceBody287_60

def sourceBody287_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody287_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_62 sourceBody287_16

def sourceBody287_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_63

def sourceBody287_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_61 sourceBody287_64

def sourceBody287_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_65

def sourceBody287_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_66

def sourceBody287_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_56 sourceBody287_67

def sourceBody287_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody287_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody287_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody287_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_71 sourceBody287_0

def sourceBody287_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_70 sourceBody287_72

def sourceBody287_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_69 sourceBody287_73

def sourceBody287_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_68 sourceBody287_74

def sourceBody287_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody287_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody287_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody287_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 12)) (some 158) ([8, 2, 6]) (some (8, sourceBody287_2, 287, 13))

def sourceBody287_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_79 sourceBody287_4

def sourceBody287_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_80 sourceBody287_0

def sourceBody287_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_78 sourceBody287_81

def sourceBody287_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_77 sourceBody287_82

def sourceBody287_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_76 sourceBody287_83

def sourceBody287_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_84

def sourceBody287_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_85

def sourceBody287_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_75 sourceBody287_86

def sourceBody287_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody287_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody287_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody287_0, 287, 14)) (some 158) ([8, 2, 6]) (some (8, sourceBody287_2, 287, 15))

def sourceBody287_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_90 sourceBody287_4

def sourceBody287_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_91 sourceBody287_0

def sourceBody287_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_89 sourceBody287_92

def sourceBody287_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_88 sourceBody287_93

def sourceBody287_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_76 sourceBody287_94

def sourceBody287_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_95

def sourceBody287_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_0 sourceBody287_96

def sourceBody287_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_87 sourceBody287_97

def sourceBody287_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody287_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody287_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_100 sourceBody287_0

def sourceBody287_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_99 sourceBody287_101

def sourceBody287_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody287_98 sourceBody287_102

def source287 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (287, 1, sourceBody287_103)
end InitECandidate.Proofs.WordStages
