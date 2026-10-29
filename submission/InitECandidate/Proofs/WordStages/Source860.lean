import InitECandidate.Proofs.WordStages.Source844
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody860_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody860_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody860_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 2)) (some 387) ([]) (some (26, sourceBody860_1, 860, 3))

def sourceBody860_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody860_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_2 sourceBody860_3

def sourceBody860_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_4 sourceBody860_0

def sourceBody860_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_5

def sourceBody860_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_6

def sourceBody860_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody860_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody860_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 4)) (some 565) ([18]) (some (18, sourceBody860_9, 860, 5))

def sourceBody860_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_10 sourceBody860_3

def sourceBody860_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_11 sourceBody860_0

def sourceBody860_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_8 sourceBody860_12

def sourceBody860_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody860_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 6)) (some 859) ([]) (some (32, sourceBody860_14, 860, 7))

def sourceBody860_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_15 sourceBody860_3

def sourceBody860_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_16 sourceBody860_0

def sourceBody860_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody860_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 304#64]))

def sourceBody860_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody860_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 24

def sourceBody860_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_21 sourceBody860_0

def sourceBody860_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_20 sourceBody860_22

def sourceBody860_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_23 sourceBody860_0

def sourceBody860_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_19 sourceBody860_24

def sourceBody860_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_25

def sourceBody860_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_18 sourceBody860_26

def sourceBody860_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_27

def sourceBody860_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody860_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody860_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_30 sourceBody860_24

def sourceBody860_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_31

def sourceBody860_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_29 sourceBody860_32

def sourceBody860_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_33

def sourceBody860_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_28 sourceBody860_34

def sourceBody860_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody860_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody860_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody860_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody860_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody860_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody860_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 14

def sourceBody860_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_42 sourceBody860_0

def sourceBody860_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_41 sourceBody860_43

def sourceBody860_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody860_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64])
  14

def sourceBody860_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_46 sourceBody860_0

def sourceBody860_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_45 sourceBody860_47

def sourceBody860_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody860_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64])
  14

def sourceBody860_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_50 sourceBody860_0

def sourceBody860_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_49 sourceBody860_51

def sourceBody860_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody860_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 24#64])
  14

def sourceBody860_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_54 sourceBody860_0

def sourceBody860_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_53 sourceBody860_55

def sourceBody860_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_56 sourceBody860_0

def sourceBody860_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_52 sourceBody860_57

def sourceBody860_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_48 sourceBody860_58

def sourceBody860_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_44 sourceBody860_59

def sourceBody860_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_40 sourceBody860_60

def sourceBody860_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_61

def sourceBody860_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_39 sourceBody860_62

def sourceBody860_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_63

def sourceBody860_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_38 sourceBody860_64

def sourceBody860_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_65

def sourceBody860_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_37 sourceBody860_66

def sourceBody860_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_67

def sourceBody860_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_36 sourceBody860_68

def sourceBody860_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_69

def sourceBody860_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_35 sourceBody860_70

def sourceBody860_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody860_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 30000000#64)

def sourceBody860_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_73 sourceBody860_24

def sourceBody860_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_74

def sourceBody860_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_72 sourceBody860_75

def sourceBody860_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_76

def sourceBody860_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_71 sourceBody860_77

def sourceBody860_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody860_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1566720#64)

def sourceBody860_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_80 sourceBody860_24

def sourceBody860_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_81

def sourceBody860_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_79 sourceBody860_82

def sourceBody860_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_83

def sourceBody860_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_78 sourceBody860_84

def sourceBody860_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody860_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 8)) (some 487) ([]) (some (10, sourceBody860_86, 860, 9))

def sourceBody860_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_87 sourceBody860_3

def sourceBody860_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_88 sourceBody860_0

def sourceBody860_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody860_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 408#64]))

def sourceBody860_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody860_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 16

def sourceBody860_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_93 sourceBody860_0

def sourceBody860_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_92 sourceBody860_94

def sourceBody860_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_95 sourceBody860_0

def sourceBody860_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_91 sourceBody860_96

def sourceBody860_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_97

def sourceBody860_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_90 sourceBody860_98

def sourceBody860_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_99

def sourceBody860_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody860_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody860_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_102 sourceBody860_96

def sourceBody860_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_103

def sourceBody860_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_101 sourceBody860_104

def sourceBody860_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_105

def sourceBody860_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_100 sourceBody860_106

def sourceBody860_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody860_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 304#64]))

def sourceBody860_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_109 sourceBody860_96

def sourceBody860_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_110

def sourceBody860_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_108 sourceBody860_111

def sourceBody860_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_112

def sourceBody860_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_107 sourceBody860_113

def sourceBody860_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody860_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody860_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_116 sourceBody860_96

def sourceBody860_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_117

def sourceBody860_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_115 sourceBody860_118

def sourceBody860_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_119

def sourceBody860_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_114 sourceBody860_120

def sourceBody860_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody860_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_122 sourceBody860_118

def sourceBody860_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_123

def sourceBody860_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_121 sourceBody860_124

def sourceBody860_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody860_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 30000000#64)

def sourceBody860_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_127 sourceBody860_96

def sourceBody860_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_128

def sourceBody860_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_126 sourceBody860_129

def sourceBody860_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_130

def sourceBody860_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_125 sourceBody860_131

def sourceBody860_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody860_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1566720#64)

def sourceBody860_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_134 sourceBody860_96

def sourceBody860_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_135

def sourceBody860_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_133 sourceBody860_136

def sourceBody860_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_137

def sourceBody860_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_132 sourceBody860_138

def sourceBody860_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody860_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody860_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_141 sourceBody860_96

def sourceBody860_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_142

def sourceBody860_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_140 sourceBody860_143

def sourceBody860_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_144

def sourceBody860_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_139 sourceBody860_145

def sourceBody860_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody860_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody860_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_148 sourceBody860_96

def sourceBody860_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_149

def sourceBody860_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_147 sourceBody860_150

def sourceBody860_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_151

def sourceBody860_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_146 sourceBody860_152

def sourceBody860_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 104#64])

def sourceBody860_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_154 sourceBody860_118

def sourceBody860_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_155

def sourceBody860_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_153 sourceBody860_156

def sourceBody860_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 112#64])

def sourceBody860_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody860_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_159 sourceBody860_96

def sourceBody860_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_160

def sourceBody860_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_158 sourceBody860_161

def sourceBody860_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_162

def sourceBody860_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_157 sourceBody860_163

def sourceBody860_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 120#64])

def sourceBody860_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody860_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_166 sourceBody860_96

def sourceBody860_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_167

def sourceBody860_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_165 sourceBody860_168

def sourceBody860_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_169

def sourceBody860_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_164 sourceBody860_170

def sourceBody860_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody860_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody860_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody860_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 10)) (some 182) ([24, 16]) (some (24, sourceBody860_174, 860, 11))

def sourceBody860_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_175 sourceBody860_3

def sourceBody860_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_176 sourceBody860_0

def sourceBody860_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_173 sourceBody860_177

def sourceBody860_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_172 sourceBody860_178

def sourceBody860_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 152#64])

def sourceBody860_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody860_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody860_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 30

def sourceBody860_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_183 sourceBody860_0

def sourceBody860_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_182 sourceBody860_184

def sourceBody860_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_185 sourceBody860_0

def sourceBody860_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_181 sourceBody860_186

def sourceBody860_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_187

def sourceBody860_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_180 sourceBody860_188

def sourceBody860_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_189

def sourceBody860_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 52#64)

def sourceBody860_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody860_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody860_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 12)) (some 182) ([16, 30]) (some (16, sourceBody860_193, 860, 13))

def sourceBody860_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_194 sourceBody860_3

def sourceBody860_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_195 sourceBody860_0

def sourceBody860_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_192 sourceBody860_196

def sourceBody860_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_191 sourceBody860_197

def sourceBody860_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody860_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody860_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 14

def sourceBody860_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_201 sourceBody860_0

def sourceBody860_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_53 sourceBody860_202

def sourceBody860_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_203 sourceBody860_0

def sourceBody860_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_200 sourceBody860_204

def sourceBody860_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_205

def sourceBody860_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_199 sourceBody860_206

def sourceBody860_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_207

def sourceBody860_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody860_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody860_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody860_0, 860, 14)) (some 625) ([30]) (some (30, sourceBody860_210, 860, 15))

def sourceBody860_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_211 sourceBody860_3

def sourceBody860_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_212 sourceBody860_0

def sourceBody860_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_209 sourceBody860_213

def sourceBody860_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody860_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 16)) (some 455) ([]) (some (14, sourceBody860_215, 860, 17))

def sourceBody860_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_216 sourceBody860_3

def sourceBody860_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_217 sourceBody860_0

def sourceBody860_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_218

def sourceBody860_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_219

def sourceBody860_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody860_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody860_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody860_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody860_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody860_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 20) sourceBody860_224 sourceBody860_225

def sourceBody860_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_226 sourceBody860_3

def sourceBody860_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody860_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody860_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 14)

def sourceBody860_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody860_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 34) sourceBody860_231 sourceBody860_223

def sourceBody860_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_232 sourceBody860_3

def sourceBody860_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody860_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody860_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody860_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 18)) (some 68) ([20]) (some (20, sourceBody860_236, 860, 19))

def sourceBody860_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_237 sourceBody860_3

def sourceBody860_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_238 sourceBody860_0

def sourceBody860_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_235 sourceBody860_239

def sourceBody860_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody860_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody860_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody860_244 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 20)) (some 77) ([34, 8, 22]) (some (34, sourceBody860_243, 860, 21))

def sourceBody860_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_244 sourceBody860_3

def sourceBody860_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_245 sourceBody860_0

def sourceBody860_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_242 sourceBody860_246

def sourceBody860_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_241 sourceBody860_247

def sourceBody860_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_228 sourceBody860_248

def sourceBody860_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_249

def sourceBody860_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_250

def sourceBody860_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody860_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def sourceBody860_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 8

def sourceBody860_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_254 sourceBody860_0

def sourceBody860_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_253 sourceBody860_255

def sourceBody860_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_256 sourceBody860_0

def sourceBody860_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_228 sourceBody860_257

def sourceBody860_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_258

def sourceBody860_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_252 sourceBody860_259

def sourceBody860_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_260

def sourceBody860_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_251 sourceBody860_261

def sourceBody860_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_240 sourceBody860_262

def sourceBody860_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_263

def sourceBody860_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_264

def sourceBody860_266 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody860_265 sourceBody860_0

def sourceBody860_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_266 sourceBody860_3

def sourceBody860_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_267 sourceBody860_0

def sourceBody860_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_234 sourceBody860_268

def sourceBody860_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_233 sourceBody860_269

def sourceBody860_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_230 sourceBody860_270

def sourceBody860_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_223 sourceBody860_271

def sourceBody860_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody860_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 22)) (some 76) ([20]) (some (20, sourceBody860_236, 860, 23))

def sourceBody860_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_274 sourceBody860_3

def sourceBody860_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_275 sourceBody860_0

def sourceBody860_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_273 sourceBody860_276

def sourceBody860_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_277

def sourceBody860_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_278

def sourceBody860_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_272 sourceBody860_279

def sourceBody860_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody860_282 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody860_0, 860, 24)) (some 73) ([20]) (some (20, sourceBody860_236, 860, 25))

def sourceBody860_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_282 sourceBody860_3

def sourceBody860_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_283 sourceBody860_0

def sourceBody860_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_281 sourceBody860_284

def sourceBody860_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_285

def sourceBody860_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_286

def sourceBody860_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_280 sourceBody860_287

def sourceBody860_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_229 sourceBody860_288

def sourceBody860_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_289

def sourceBody860_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody860_290 sourceBody860_0

def sourceBody860_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_291 sourceBody860_3

def sourceBody860_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_292 sourceBody860_0

def sourceBody860_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_228 sourceBody860_293

def sourceBody860_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_227 sourceBody860_294

def sourceBody860_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_223 sourceBody860_295

def sourceBody860_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_222 sourceBody860_296

def sourceBody860_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody860_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_298 sourceBody860_0

def sourceBody860_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_49 sourceBody860_299

def sourceBody860_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_297 sourceBody860_300

def sourceBody860_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_221 sourceBody860_301

def sourceBody860_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_302

def sourceBody860_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_220 sourceBody860_303

def sourceBody860_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_214 sourceBody860_304

def sourceBody860_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_305

def sourceBody860_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_306

def sourceBody860_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_208 sourceBody860_307

def sourceBody860_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_198 sourceBody860_308

def sourceBody860_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_309

def sourceBody860_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_310

def sourceBody860_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_190 sourceBody860_311

def sourceBody860_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_179 sourceBody860_312

def sourceBody860_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_313

def sourceBody860_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_314

def sourceBody860_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_171 sourceBody860_315

def sourceBody860_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_89 sourceBody860_316

def sourceBody860_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_317

def sourceBody860_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_318

def sourceBody860_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_85 sourceBody860_319

def sourceBody860_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_17 sourceBody860_320

def sourceBody860_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_321

def sourceBody860_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_322

def sourceBody860_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_13 sourceBody860_323

def sourceBody860_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_324

def sourceBody860_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_325

def sourceBody860_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_326

def sourceBody860_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_0 sourceBody860_327

def sourceBody860_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody860_7 sourceBody860_328

def source860 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (860, 4, sourceBody860_329)
end InitECandidate.Proofs.WordStages
