import InitECandidate.Proofs.WordStages.Source836
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody852_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody852_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody852_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody852_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 2)) (some 68) ([10]) (some (10, sourceBody852_2, 852, 3))

def sourceBody852_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody852_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_3 sourceBody852_4

def sourceBody852_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_5 sourceBody852_0

def sourceBody852_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_1 sourceBody852_6

def sourceBody852_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 432#64])

def sourceBody852_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody852_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody852_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody852_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_11 sourceBody852_0

def sourceBody852_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_10 sourceBody852_12

def sourceBody852_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_13 sourceBody852_0

def sourceBody852_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_9 sourceBody852_14

def sourceBody852_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_15

def sourceBody852_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_8 sourceBody852_16

def sourceBody852_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_17

def sourceBody852_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_7 sourceBody852_18

def sourceBody852_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_19

def sourceBody852_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_20

def sourceBody852_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 432#64]))

def sourceBody852_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody852_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 4)) (some 78) ([10, 2]) (some (10, sourceBody852_2, 852, 5))

def sourceBody852_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_24 sourceBody852_4

def sourceBody852_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_25 sourceBody852_0

def sourceBody852_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_23 sourceBody852_26

def sourceBody852_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_22 sourceBody852_27

def sourceBody852_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_28

def sourceBody852_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_29

def sourceBody852_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_21 sourceBody852_30

def sourceBody852_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 360#64)

def sourceBody852_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 6)) (some 68) ([10]) (some (10, sourceBody852_2, 852, 7))

def sourceBody852_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_33 sourceBody852_4

def sourceBody852_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_34 sourceBody852_0

def sourceBody852_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_32 sourceBody852_35

def sourceBody852_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 424#64])

def sourceBody852_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_37 sourceBody852_16

def sourceBody852_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_38

def sourceBody852_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_36 sourceBody852_39

def sourceBody852_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_40

def sourceBody852_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_41

def sourceBody852_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_31 sourceBody852_42

def sourceBody852_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 424#64]))

def sourceBody852_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 360#64)

def sourceBody852_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 8)) (some 78) ([10, 2]) (some (10, sourceBody852_2, 852, 9))

def sourceBody852_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_46 sourceBody852_4

def sourceBody852_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_47 sourceBody852_0

def sourceBody852_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_45 sourceBody852_48

def sourceBody852_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_44 sourceBody852_49

def sourceBody852_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_50

def sourceBody852_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_51

def sourceBody852_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_43 sourceBody852_52

def sourceBody852_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody852_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17#64)

def sourceBody852_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody852_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody852_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 8) sourceBody852_56 sourceBody852_57

def sourceBody852_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_58 sourceBody852_4

def sourceBody852_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody852_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody852_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody852_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 10 2))

def sourceBody852_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 424#64]),
      Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 19#64])

def sourceBody852_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody852_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody852_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_66 sourceBody852_0

def sourceBody852_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_65 sourceBody852_67

def sourceBody852_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_64 sourceBody852_68

def sourceBody852_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_63 sourceBody852_69

def sourceBody852_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_62 sourceBody852_70

def sourceBody852_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_61 sourceBody852_71

def sourceBody852_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody852_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody852_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_74 sourceBody852_0

def sourceBody852_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_75 sourceBody852_0

def sourceBody852_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_73 sourceBody852_76

def sourceBody852_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_77

def sourceBody852_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_72 sourceBody852_78

def sourceBody852_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody852_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_79 sourceBody852_80

def sourceBody852_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody852_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody852_81 sourceBody852_82

def sourceBody852_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_83 sourceBody852_4

def sourceBody852_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_84 sourceBody852_0

def sourceBody852_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_60 sourceBody852_85

def sourceBody852_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_59 sourceBody852_86

def sourceBody852_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_55 sourceBody852_87

def sourceBody852_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_9 sourceBody852_88

def sourceBody852_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) sourceBody852_89 (Flapjack.Spt.ls PUnit.unit)

def sourceBody852_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_90 sourceBody852_4

def sourceBody852_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_4 sourceBody852_91

def sourceBody852_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 424#64]),
      Flapjack.WordLangExpHOL.const 340#64, Flapjack.WordLangExpHOL.const 18#64])

def sourceBody852_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody852_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_94 sourceBody852_0

def sourceBody852_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_56 sourceBody852_95

def sourceBody852_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_93 sourceBody852_96

def sourceBody852_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_92 sourceBody852_97

def sourceBody852_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody852_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody852_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 10)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 11))

def sourceBody852_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_101 sourceBody852_4

def sourceBody852_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_102 sourceBody852_0

def sourceBody852_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_103

def sourceBody852_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 464#64])

def sourceBody852_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody852_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody852_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 2) 6

def sourceBody852_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_108 sourceBody852_0

def sourceBody852_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_107 sourceBody852_109

def sourceBody852_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_110 sourceBody852_0

def sourceBody852_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_106 sourceBody852_111

def sourceBody852_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_112

def sourceBody852_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_105 sourceBody852_113

def sourceBody852_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_114

def sourceBody852_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_104 sourceBody852_115

def sourceBody852_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_116

def sourceBody852_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_117

def sourceBody852_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_98 sourceBody852_118

def sourceBody852_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 464#64]))

def sourceBody852_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 998902#64)

def sourceBody852_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 15506597749690834871#64)

def sourceBody852_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13311379508201171970#64)

def sourceBody852_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 12)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 13))

def sourceBody852_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_124 sourceBody852_4

def sourceBody852_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_125 sourceBody852_0

def sourceBody852_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_123 sourceBody852_126

def sourceBody852_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_122 sourceBody852_127

def sourceBody852_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_121 sourceBody852_128

def sourceBody852_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_120 sourceBody852_129

def sourceBody852_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_130

def sourceBody852_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_131

def sourceBody852_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_119 sourceBody852_132

def sourceBody852_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 14)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 15))

def sourceBody852_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_134 sourceBody852_4

def sourceBody852_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_135 sourceBody852_0

def sourceBody852_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_136

def sourceBody852_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 472#64])

def sourceBody852_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_138 sourceBody852_113

def sourceBody852_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_139

def sourceBody852_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_137 sourceBody852_140

def sourceBody852_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_141

def sourceBody852_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_142

def sourceBody852_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_133 sourceBody852_143

def sourceBody852_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 472#64]))

def sourceBody852_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 63752#64)

def sourceBody852_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2878298490047003138#64)

def sourceBody852_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3700577164601600309#64)

def sourceBody852_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 16)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 17))

def sourceBody852_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_149 sourceBody852_4

def sourceBody852_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_150 sourceBody852_0

def sourceBody852_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_148 sourceBody852_151

def sourceBody852_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_147 sourceBody852_152

def sourceBody852_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_146 sourceBody852_153

def sourceBody852_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_145 sourceBody852_154

def sourceBody852_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_155

def sourceBody852_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_156

def sourceBody852_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_144 sourceBody852_157

def sourceBody852_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 18)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 19))

def sourceBody852_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_159 sourceBody852_4

def sourceBody852_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_160 sourceBody852_0

def sourceBody852_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_161

def sourceBody852_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 480#64])

def sourceBody852_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_163 sourceBody852_113

def sourceBody852_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_164

def sourceBody852_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_162 sourceBody852_165

def sourceBody852_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_166

def sourceBody852_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_167

def sourceBody852_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_158 sourceBody852_168

def sourceBody852_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 480#64]))

def sourceBody852_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2401#64)

def sourceBody852_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 17242047345525313946#64)

def sourceBody852_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 15579492241104728066#64)

def sourceBody852_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 20)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 21))

def sourceBody852_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_174 sourceBody852_4

def sourceBody852_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_175 sourceBody852_0

def sourceBody852_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_173 sourceBody852_176

def sourceBody852_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_172 sourceBody852_177

def sourceBody852_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_171 sourceBody852_178

def sourceBody852_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_170 sourceBody852_179

def sourceBody852_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_180

def sourceBody852_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_181

def sourceBody852_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_169 sourceBody852_182

def sourceBody852_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 22)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 23))

def sourceBody852_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_184 sourceBody852_4

def sourceBody852_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_185 sourceBody852_0

def sourceBody852_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_186

def sourceBody852_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 488#64])

def sourceBody852_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_188 sourceBody852_113

def sourceBody852_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_189

def sourceBody852_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_187 sourceBody852_190

def sourceBody852_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_191

def sourceBody852_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_192

def sourceBody852_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_183 sourceBody852_193

def sourceBody852_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 488#64]))

def sourceBody852_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 48093#64)

def sourceBody852_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 14397524800236640159#64)

def sourceBody852_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 10016273463683084881#64)

def sourceBody852_199 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 24)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 25))

def sourceBody852_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_199 sourceBody852_4

def sourceBody852_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_200 sourceBody852_0

def sourceBody852_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_198 sourceBody852_201

def sourceBody852_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_197 sourceBody852_202

def sourceBody852_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_196 sourceBody852_203

def sourceBody852_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_195 sourceBody852_204

def sourceBody852_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_205

def sourceBody852_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_206

def sourceBody852_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_194 sourceBody852_207

def sourceBody852_209 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 26)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 27))

def sourceBody852_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_209 sourceBody852_4

def sourceBody852_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_210 sourceBody852_0

def sourceBody852_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_211

def sourceBody852_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 496#64])

def sourceBody852_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_213 sourceBody852_113

def sourceBody852_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_214

def sourceBody852_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_212 sourceBody852_215

def sourceBody852_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_216

def sourceBody852_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_217

def sourceBody852_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_208 sourceBody852_218

def sourceBody852_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 496#64]))

def sourceBody852_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 49140#64)

def sourceBody852_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 7603452151126424148#64)

def sourceBody852_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 760111669195932290#64)

def sourceBody852_224 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 28)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 29))

def sourceBody852_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_224 sourceBody852_4

def sourceBody852_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_225 sourceBody852_0

def sourceBody852_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_223 sourceBody852_226

def sourceBody852_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_222 sourceBody852_227

def sourceBody852_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_221 sourceBody852_228

def sourceBody852_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_220 sourceBody852_229

def sourceBody852_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_230

def sourceBody852_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_231

def sourceBody852_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_219 sourceBody852_232

def sourceBody852_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 30)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 31))

def sourceBody852_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_234 sourceBody852_4

def sourceBody852_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_235 sourceBody852_0

def sourceBody852_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_236

def sourceBody852_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 504#64])

def sourceBody852_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_238 sourceBody852_113

def sourceBody852_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_239

def sourceBody852_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_237 sourceBody852_240

def sourceBody852_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_241

def sourceBody852_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_242

def sourceBody852_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_233 sourceBody852_243

def sourceBody852_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 504#64]))

def sourceBody852_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 25814#64)

def sourceBody852_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8669529151676140297#64)

def sourceBody852_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4307224735379260034#64)

def sourceBody852_249 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 32)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 33))

def sourceBody852_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_249 sourceBody852_4

def sourceBody852_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_250 sourceBody852_0

def sourceBody852_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_248 sourceBody852_251

def sourceBody852_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_247 sourceBody852_252

def sourceBody852_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_246 sourceBody852_253

def sourceBody852_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_245 sourceBody852_254

def sourceBody852_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_255

def sourceBody852_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_256

def sourceBody852_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_244 sourceBody852_257

def sourceBody852_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 34)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 35))

def sourceBody852_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_259 sourceBody852_4

def sourceBody852_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_260 sourceBody852_0

def sourceBody852_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_99 sourceBody852_261

def sourceBody852_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 512#64])

def sourceBody852_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_263 sourceBody852_113

def sourceBody852_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_264

def sourceBody852_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_262 sourceBody852_265

def sourceBody852_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_266

def sourceBody852_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_267

def sourceBody852_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_258 sourceBody852_268

def sourceBody852_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 512#64]))

def sourceBody852_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody852_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2421447037043915651#64)

def sourceBody852_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11294470620239562234#64)

def sourceBody852_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 36)) (some 851) ([2, 8, 6, 12]) (some (2, sourceBody852_100, 852, 37))

def sourceBody852_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_274 sourceBody852_4

def sourceBody852_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_275 sourceBody852_0

def sourceBody852_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_273 sourceBody852_276

def sourceBody852_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_272 sourceBody852_277

def sourceBody852_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_271 sourceBody852_278

def sourceBody852_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_270 sourceBody852_279

def sourceBody852_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_280

def sourceBody852_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_281

def sourceBody852_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_269 sourceBody852_282

def sourceBody852_284 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 38)) (some 68) ([2]) (some (2, sourceBody852_100, 852, 39))

def sourceBody852_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_284 sourceBody852_4

def sourceBody852_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_285 sourceBody852_0

def sourceBody852_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_23 sourceBody852_286

def sourceBody852_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 520#64])

def sourceBody852_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_288 sourceBody852_113

def sourceBody852_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_289

def sourceBody852_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_287 sourceBody852_290

def sourceBody852_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_291

def sourceBody852_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_292

def sourceBody852_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_283 sourceBody852_293

def sourceBody852_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 520#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody852_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7249595157780304706#64)

def sourceBody852_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 40)) (some 89) ([2, 8]) (some (2, sourceBody852_100, 852, 41))

def sourceBody852_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_297 sourceBody852_4

def sourceBody852_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_298 sourceBody852_0

def sourceBody852_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_296 sourceBody852_299

def sourceBody852_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_295 sourceBody852_300

def sourceBody852_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_301

def sourceBody852_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_302

def sourceBody852_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_294 sourceBody852_303

def sourceBody852_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 520#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody852_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12676030261858484297#64)

def sourceBody852_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 42)) (some 89) ([2, 8]) (some (2, sourceBody852_100, 852, 43))

def sourceBody852_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_307 sourceBody852_4

def sourceBody852_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_308 sourceBody852_0

def sourceBody852_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_306 sourceBody852_309

def sourceBody852_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_305 sourceBody852_310

def sourceBody852_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_311

def sourceBody852_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_312

def sourceBody852_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_304 sourceBody852_313

def sourceBody852_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 520#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody852_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16708898399860066458#64)

def sourceBody852_317 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 44)) (some 89) ([2, 8]) (some (2, sourceBody852_100, 852, 45))

def sourceBody852_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_317 sourceBody852_4

def sourceBody852_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_318 sourceBody852_0

def sourceBody852_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_316 sourceBody852_319

def sourceBody852_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_315 sourceBody852_320

def sourceBody852_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_321

def sourceBody852_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_322

def sourceBody852_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_314 sourceBody852_323

def sourceBody852_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 520#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody852_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12074291595689605317#64)

def sourceBody852_327 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody852_0, 852, 46)) (some 89) ([2, 8]) (some (2, sourceBody852_100, 852, 47))

def sourceBody852_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_327 sourceBody852_4

def sourceBody852_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_328 sourceBody852_0

def sourceBody852_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_326 sourceBody852_329

def sourceBody852_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_325 sourceBody852_330

def sourceBody852_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_331

def sourceBody852_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_332

def sourceBody852_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_324 sourceBody852_333

def sourceBody852_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody852_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody852_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_336 sourceBody852_0

def sourceBody852_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_335 sourceBody852_337

def sourceBody852_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_334 sourceBody852_338

def sourceBody852_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_54 sourceBody852_339

def sourceBody852_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_0 sourceBody852_340

def sourceBody852_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody852_53 sourceBody852_341

def source852 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (852, 1, sourceBody852_342)
end InitECandidate.Proofs.WordStages
