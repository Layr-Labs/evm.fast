import InitECandidate.Proofs.WordStages.Source592
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody608_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody608_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody608_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody608_0, 608, 2)) (some 390) ([]) (some (18, sourceBody608_1, 608, 3))

def sourceBody608_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody608_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_2 sourceBody608_3

def sourceBody608_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_4 sourceBody608_0

def sourceBody608_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody608_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody608_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody608_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 4)) (some 421) ([16]) (some (16, sourceBody608_8, 608, 5))

def sourceBody608_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_9 sourceBody608_3

def sourceBody608_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_10 sourceBody608_0

def sourceBody608_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_7 sourceBody608_11

def sourceBody608_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_12

def sourceBody608_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_13

def sourceBody608_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 6)) (some 425) ([16]) (some (16, sourceBody608_8, 608, 7))

def sourceBody608_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_15 sourceBody608_3

def sourceBody608_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_16 sourceBody608_0

def sourceBody608_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_7 sourceBody608_17

def sourceBody608_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_18

def sourceBody608_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_19

def sourceBody608_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_14 sourceBody608_20

def sourceBody608_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 8)) (some 430) ([16]) (some (16, sourceBody608_8, 608, 9))

def sourceBody608_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_22 sourceBody608_3

def sourceBody608_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_23 sourceBody608_0

def sourceBody608_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_7 sourceBody608_24

def sourceBody608_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_25

def sourceBody608_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_26

def sourceBody608_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_21 sourceBody608_27

def sourceBody608_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody608_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 10)) (some 606) ([16]) (some (16, sourceBody608_8, 608, 11))

def sourceBody608_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_30 sourceBody608_3

def sourceBody608_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_31 sourceBody608_0

def sourceBody608_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_29 sourceBody608_32

def sourceBody608_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody608_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody608_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody608_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody608_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 20) sourceBody608_36 sourceBody608_37

def sourceBody608_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_38 sourceBody608_3

def sourceBody608_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody608_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody608_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody608_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody608_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 20)

def sourceBody608_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 4

def sourceBody608_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_45 sourceBody608_0

def sourceBody608_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_44 sourceBody608_46

def sourceBody608_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_47 sourceBody608_0

def sourceBody608_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_43 sourceBody608_48

def sourceBody608_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_49

def sourceBody608_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_42 sourceBody608_50

def sourceBody608_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_51

def sourceBody608_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody608_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody608_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody608_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody608_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_56 sourceBody608_0

def sourceBody608_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_57 sourceBody608_0

def sourceBody608_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody608_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody608_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 13)) (some 391) ([14]) (some (14, sourceBody608_60, 608, 14))

def sourceBody608_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_61 sourceBody608_3

def sourceBody608_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_62 sourceBody608_0

def sourceBody608_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_59 sourceBody608_63

def sourceBody608_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_64

def sourceBody608_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_65

def sourceBody608_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 15)) (some 474) ([]) (some (14, sourceBody608_60, 608, 16))

def sourceBody608_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_67 sourceBody608_3

def sourceBody608_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_68 sourceBody608_0

def sourceBody608_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_69

def sourceBody608_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_70

def sourceBody608_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_66 sourceBody608_71

def sourceBody608_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody608_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 17)) (some 604) ([14]) (some (14, sourceBody608_60, 608, 18))

def sourceBody608_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_74 sourceBody608_3

def sourceBody608_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_75 sourceBody608_0

def sourceBody608_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_73 sourceBody608_76

def sourceBody608_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_77

def sourceBody608_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_78

def sourceBody608_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_72 sourceBody608_79

def sourceBody608_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody608_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody608_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody608_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 10

def sourceBody608_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_84 sourceBody608_0

def sourceBody608_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_83 sourceBody608_85

def sourceBody608_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_86 sourceBody608_0

def sourceBody608_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_82 sourceBody608_87

def sourceBody608_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_88

def sourceBody608_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_81 sourceBody608_89

def sourceBody608_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_90

def sourceBody608_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_80 sourceBody608_91

def sourceBody608_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody608_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody608_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_94 sourceBody608_87

def sourceBody608_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_95

def sourceBody608_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_93 sourceBody608_96

def sourceBody608_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_97

def sourceBody608_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_92 sourceBody608_98

def sourceBody608_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_58 sourceBody608_99

def sourceBody608_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_3 sourceBody608_100

def sourceBody608_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 8#64) sourceBody608_55 sourceBody608_101

def sourceBody608_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_102 sourceBody608_3

def sourceBody608_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 12)) (some 607) ([4, 14]) (some (4, sourceBody608_103, 608, 19))

def sourceBody608_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_104 sourceBody608_3

def sourceBody608_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_105 sourceBody608_0

def sourceBody608_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_54 sourceBody608_106

def sourceBody608_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_53 sourceBody608_107

def sourceBody608_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_108

def sourceBody608_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_109

def sourceBody608_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody608_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody608_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody608_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 14

def sourceBody608_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_114 sourceBody608_0

def sourceBody608_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_113 sourceBody608_115

def sourceBody608_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_116 sourceBody608_0

def sourceBody608_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_112 sourceBody608_117

def sourceBody608_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_118

def sourceBody608_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_111 sourceBody608_119

def sourceBody608_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_120

def sourceBody608_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_110 sourceBody608_121

def sourceBody608_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody608_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_123 sourceBody608_0

def sourceBody608_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_43 sourceBody608_124

def sourceBody608_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_122 sourceBody608_125

def sourceBody608_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_126

def sourceBody608_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_127

def sourceBody608_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_52 sourceBody608_128

def sourceBody608_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_41 sourceBody608_129

def sourceBody608_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_130

def sourceBody608_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody608_131 sourceBody608_0

def sourceBody608_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_132 sourceBody608_3

def sourceBody608_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_133 sourceBody608_0

def sourceBody608_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_40 sourceBody608_134

def sourceBody608_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_39 sourceBody608_135

def sourceBody608_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_35 sourceBody608_136

def sourceBody608_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_34 sourceBody608_137

def sourceBody608_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody608_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody608_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody608_0, 608, 20)) (some 391) ([12]) (some (12, sourceBody608_140, 608, 21))

def sourceBody608_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_141 sourceBody608_3

def sourceBody608_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_142 sourceBody608_0

def sourceBody608_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_139 sourceBody608_143

def sourceBody608_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_144

def sourceBody608_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_145

def sourceBody608_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_138 sourceBody608_146

def sourceBody608_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody608_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody608_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_149 sourceBody608_0

def sourceBody608_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_148 sourceBody608_150

def sourceBody608_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_147 sourceBody608_151

def sourceBody608_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_33 sourceBody608_152

def sourceBody608_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_153

def sourceBody608_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_154

def sourceBody608_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_28 sourceBody608_155

def sourceBody608_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_6 sourceBody608_156

def sourceBody608_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_157

def sourceBody608_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_5 sourceBody608_158

def sourceBody608_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_159

def sourceBody608_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody608_0 sourceBody608_160

def source608 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (608, 2, sourceBody608_161)
end InitECandidate.Proofs.WordStages
