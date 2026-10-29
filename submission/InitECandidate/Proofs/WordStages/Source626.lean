import InitECandidate.Proofs.WordStages.Source610
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody626_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 320#64]))

def sourceBody626_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody626_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody626_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody626_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) sourceBody626_2 sourceBody626_3

def sourceBody626_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody626_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_4 sourceBody626_5

def sourceBody626_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody626_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody626_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody626_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody626_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_9 sourceBody626_10

def sourceBody626_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_8 sourceBody626_11

def sourceBody626_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody626_12 sourceBody626_10

def sourceBody626_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_13 sourceBody626_5

def sourceBody626_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_14 sourceBody626_10

def sourceBody626_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_7 sourceBody626_15

def sourceBody626_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_6 sourceBody626_16

def sourceBody626_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_1 sourceBody626_17

def sourceBody626_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_0 sourceBody626_18

def sourceBody626_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody626_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody626_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody626_10, 626, 2)) (some 68) ([8]) (some (8, sourceBody626_21, 626, 3))

def sourceBody626_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_22 sourceBody626_5

def sourceBody626_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_23 sourceBody626_10

def sourceBody626_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_20 sourceBody626_24

def sourceBody626_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 320#64])

def sourceBody626_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody626_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody626_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody626_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_29 sourceBody626_10

def sourceBody626_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_28 sourceBody626_30

def sourceBody626_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_31 sourceBody626_10

def sourceBody626_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_27 sourceBody626_32

def sourceBody626_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_33

def sourceBody626_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_26 sourceBody626_34

def sourceBody626_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_35

def sourceBody626_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_25 sourceBody626_36

def sourceBody626_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_37

def sourceBody626_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_38

def sourceBody626_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_19 sourceBody626_39

def sourceBody626_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody626_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody626_10, 626, 4)) (some 68) ([8]) (some (8, sourceBody626_21, 626, 5))

def sourceBody626_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_42 sourceBody626_5

def sourceBody626_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_43 sourceBody626_10

def sourceBody626_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_41 sourceBody626_44

def sourceBody626_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 328#64])

def sourceBody626_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_46 sourceBody626_34

def sourceBody626_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_47

def sourceBody626_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_45 sourceBody626_48

def sourceBody626_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_49

def sourceBody626_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_50

def sourceBody626_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_40 sourceBody626_51

def sourceBody626_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody626_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody626_10, 626, 6)) (some 68) ([8]) (some (8, sourceBody626_21, 626, 7))

def sourceBody626_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_54 sourceBody626_5

def sourceBody626_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_55 sourceBody626_10

def sourceBody626_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_53 sourceBody626_56

def sourceBody626_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 336#64])

def sourceBody626_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_58 sourceBody626_34

def sourceBody626_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_59

def sourceBody626_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_57 sourceBody626_60

def sourceBody626_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_61

def sourceBody626_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_62

def sourceBody626_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_52 sourceBody626_63

def sourceBody626_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody626_10, 626, 8)) (some 68) ([8]) (some (8, sourceBody626_21, 626, 9))

def sourceBody626_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_65 sourceBody626_5

def sourceBody626_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_66 sourceBody626_10

def sourceBody626_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_41 sourceBody626_67

def sourceBody626_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 344#64])

def sourceBody626_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_69 sourceBody626_34

def sourceBody626_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_70

def sourceBody626_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_68 sourceBody626_71

def sourceBody626_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_72

def sourceBody626_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_73

def sourceBody626_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_64 sourceBody626_74

def sourceBody626_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody626_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18364758544493064720#64)

def sourceBody626_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody626_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody626_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_79 sourceBody626_10

def sourceBody626_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_78 sourceBody626_80

def sourceBody626_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_81 sourceBody626_10

def sourceBody626_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_77 sourceBody626_82

def sourceBody626_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_83

def sourceBody626_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_76 sourceBody626_84

def sourceBody626_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_85

def sourceBody626_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_75 sourceBody626_86

def sourceBody626_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody626_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10079716825146989895#64)

def sourceBody626_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_89 sourceBody626_82

def sourceBody626_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_90

def sourceBody626_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_88 sourceBody626_91

def sourceBody626_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_92

def sourceBody626_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_87 sourceBody626_93

def sourceBody626_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody626_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14248650839231647395#64)

def sourceBody626_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_96 sourceBody626_82

def sourceBody626_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_97

def sourceBody626_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_95 sourceBody626_98

def sourceBody626_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_99

def sourceBody626_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_94 sourceBody626_100

def sourceBody626_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody626_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2764919063900629905#64)

def sourceBody626_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_103 sourceBody626_82

def sourceBody626_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_104

def sourceBody626_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_102 sourceBody626_105

def sourceBody626_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_106

def sourceBody626_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_101 sourceBody626_107

def sourceBody626_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody626_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16099105460569216260#64)

def sourceBody626_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_110 sourceBody626_82

def sourceBody626_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_111

def sourceBody626_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_109 sourceBody626_112

def sourceBody626_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_113

def sourceBody626_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_108 sourceBody626_114

def sourceBody626_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody626_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14096706008221550565#64)

def sourceBody626_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_117 sourceBody626_82

def sourceBody626_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_118

def sourceBody626_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_116 sourceBody626_119

def sourceBody626_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_120

def sourceBody626_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_115 sourceBody626_121

def sourceBody626_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody626_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2419779895833949110#64)

def sourceBody626_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_124 sourceBody626_82

def sourceBody626_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_125

def sourceBody626_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_123 sourceBody626_126

def sourceBody626_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_127

def sourceBody626_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_122 sourceBody626_128

def sourceBody626_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody626_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15279073663851639135#64)

def sourceBody626_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_131 sourceBody626_82

def sourceBody626_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_132

def sourceBody626_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_130 sourceBody626_133

def sourceBody626_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_134

def sourceBody626_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_129 sourceBody626_135

def sourceBody626_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody626_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16895767220870911080#64)

def sourceBody626_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_138 sourceBody626_82

def sourceBody626_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_139

def sourceBody626_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_137 sourceBody626_140

def sourceBody626_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_141

def sourceBody626_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_136 sourceBody626_142

def sourceBody626_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody626_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13344426445381913340#64)

def sourceBody626_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_145 sourceBody626_82

def sourceBody626_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_146

def sourceBody626_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_144 sourceBody626_147

def sourceBody626_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_148

def sourceBody626_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_143 sourceBody626_149

def sourceBody626_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody626_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9905384649541406699#64)

def sourceBody626_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_152 sourceBody626_82

def sourceBody626_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_153

def sourceBody626_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_151 sourceBody626_154

def sourceBody626_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_155

def sourceBody626_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_150 sourceBody626_156

def sourceBody626_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody626_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14806603881112131687#64)

def sourceBody626_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_159 sourceBody626_82

def sourceBody626_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_160

def sourceBody626_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_158 sourceBody626_161

def sourceBody626_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_162

def sourceBody626_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_157 sourceBody626_163

def sourceBody626_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody626_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6324581712619534043#64)

def sourceBody626_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_166 sourceBody626_82

def sourceBody626_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_167

def sourceBody626_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_165 sourceBody626_168

def sourceBody626_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_169

def sourceBody626_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_164 sourceBody626_170

def sourceBody626_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody626_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14224731476766686923#64)

def sourceBody626_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_173 sourceBody626_82

def sourceBody626_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_174

def sourceBody626_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_172 sourceBody626_175

def sourceBody626_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_176

def sourceBody626_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_171 sourceBody626_177

def sourceBody626_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody626_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7317203453406000633#64)

def sourceBody626_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_180 sourceBody626_82

def sourceBody626_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_181

def sourceBody626_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_179 sourceBody626_182

def sourceBody626_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_183

def sourceBody626_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_178 sourceBody626_184

def sourceBody626_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody626_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7849414023404435864#64)

def sourceBody626_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_187 sourceBody626_82

def sourceBody626_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_188

def sourceBody626_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_186 sourceBody626_189

def sourceBody626_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_190

def sourceBody626_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_185 sourceBody626_191

def sourceBody626_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody626_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13688264971095146457#64)

def sourceBody626_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_194 sourceBody626_82

def sourceBody626_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_195

def sourceBody626_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_193 sourceBody626_196

def sourceBody626_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_197

def sourceBody626_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_192 sourceBody626_198

def sourceBody626_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 136#64])

def sourceBody626_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6331469388073975673#64)

def sourceBody626_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_201 sourceBody626_82

def sourceBody626_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_202

def sourceBody626_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_200 sourceBody626_203

def sourceBody626_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_204

def sourceBody626_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_199 sourceBody626_205

def sourceBody626_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody626_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10330303817214507103#64)

def sourceBody626_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_208 sourceBody626_82

def sourceBody626_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_209

def sourceBody626_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_207 sourceBody626_210

def sourceBody626_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_211

def sourceBody626_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_206 sourceBody626_212

def sourceBody626_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 320#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody626_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13537634492463488088#64)

def sourceBody626_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_215 sourceBody626_82

def sourceBody626_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_216

def sourceBody626_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_214 sourceBody626_217

def sourceBody626_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_10 sourceBody626_218

def sourceBody626_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_213 sourceBody626_219

def sourceBody626_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody626_220 sourceBody626_12

def source626 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (626, 1, sourceBody626_221)
end InitECandidate.Proofs.WordStages
