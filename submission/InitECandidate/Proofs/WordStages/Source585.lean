import InitECandidate.Proofs.WordStages.Source569
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody585_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody585_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody585_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody585_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody585_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody585_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody585_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 2)) (some 102) ([16, 24, 20, 28]) (some (16, sourceBody585_5, 585, 3))

def sourceBody585_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody585_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_6 sourceBody585_7

def sourceBody585_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_8 sourceBody585_0

def sourceBody585_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_4 sourceBody585_9

def sourceBody585_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_3 sourceBody585_10

def sourceBody585_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_2 sourceBody585_11

def sourceBody585_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_1 sourceBody585_12

def sourceBody585_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody585_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody585_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody585_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody585_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 20) sourceBody585_16 sourceBody585_17

def sourceBody585_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_18 sourceBody585_7

def sourceBody585_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody585_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody585_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody585_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_22 sourceBody585_0

def sourceBody585_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_21 sourceBody585_23

def sourceBody585_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody585_24 sourceBody585_0

def sourceBody585_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_25 sourceBody585_7

def sourceBody585_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_26 sourceBody585_0

def sourceBody585_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_20 sourceBody585_27

def sourceBody585_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_19 sourceBody585_28

def sourceBody585_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_15 sourceBody585_29

def sourceBody585_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_14 sourceBody585_30

def sourceBody585_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody585_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody585_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 4)) (some 68) ([24]) (some (24, sourceBody585_33, 585, 5))

def sourceBody585_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_34 sourceBody585_7

def sourceBody585_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_35 sourceBody585_0

def sourceBody585_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_32 sourceBody585_36

def sourceBody585_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody585_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 304#64]))

def sourceBody585_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody585_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 28

def sourceBody585_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_41 sourceBody585_0

def sourceBody585_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_40 sourceBody585_42

def sourceBody585_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_43 sourceBody585_0

def sourceBody585_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_39 sourceBody585_44

def sourceBody585_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_45

def sourceBody585_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_38 sourceBody585_46

def sourceBody585_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_47

def sourceBody585_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody585_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody585_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 6)) (some 68) ([20]) (some (20, sourceBody585_50, 585, 7))

def sourceBody585_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_51 sourceBody585_7

def sourceBody585_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_52 sourceBody585_0

def sourceBody585_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_49 sourceBody585_53

def sourceBody585_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 296#64]))

def sourceBody585_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody585_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody585_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 8)) (some 77) ([28, 18, 26]) (some (28, sourceBody585_57, 585, 9))

def sourceBody585_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_58 sourceBody585_7

def sourceBody585_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_59 sourceBody585_0

def sourceBody585_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_56 sourceBody585_60

def sourceBody585_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_55 sourceBody585_61

def sourceBody585_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_20 sourceBody585_62

def sourceBody585_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_63

def sourceBody585_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_64

def sourceBody585_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody585_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody585_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 10)) (some 78) ([28, 18]) (some (28, sourceBody585_57, 585, 11))

def sourceBody585_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_68 sourceBody585_7

def sourceBody585_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_69 sourceBody585_0

def sourceBody585_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_67 sourceBody585_70

def sourceBody585_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_66 sourceBody585_71

def sourceBody585_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_72

def sourceBody585_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_73

def sourceBody585_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_65 sourceBody585_74

def sourceBody585_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 44#64])

def sourceBody585_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody585_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody585_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 12)) (some 77) ([28, 18, 26]) (some (28, sourceBody585_57, 585, 13))

def sourceBody585_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_79 sourceBody585_7

def sourceBody585_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_80 sourceBody585_0

def sourceBody585_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_78 sourceBody585_81

def sourceBody585_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_77 sourceBody585_82

def sourceBody585_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_76 sourceBody585_83

def sourceBody585_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_84

def sourceBody585_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_85

def sourceBody585_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_75 sourceBody585_86

def sourceBody585_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody585_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 14)) (some 78) ([28, 18]) (some (28, sourceBody585_57, 585, 15))

def sourceBody585_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_89 sourceBody585_7

def sourceBody585_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_90 sourceBody585_0

def sourceBody585_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_67 sourceBody585_91

def sourceBody585_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_88 sourceBody585_92

def sourceBody585_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_93

def sourceBody585_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_94

def sourceBody585_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_87 sourceBody585_95

def sourceBody585_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 76#64])

def sourceBody585_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody585_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 16)) (some 77) ([28, 18, 26]) (some (28, sourceBody585_57, 585, 17))

def sourceBody585_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_99 sourceBody585_7

def sourceBody585_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_100 sourceBody585_0

def sourceBody585_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_78 sourceBody585_101

def sourceBody585_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_98 sourceBody585_102

def sourceBody585_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_97 sourceBody585_103

def sourceBody585_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_104

def sourceBody585_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_105

def sourceBody585_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_96 sourceBody585_106

def sourceBody585_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody585_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody585_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 18

def sourceBody585_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_110 sourceBody585_0

def sourceBody585_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_109 sourceBody585_111

def sourceBody585_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_112 sourceBody585_0

def sourceBody585_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_20 sourceBody585_113

def sourceBody585_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_114

def sourceBody585_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_108 sourceBody585_115

def sourceBody585_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_116

def sourceBody585_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_107 sourceBody585_117

def sourceBody585_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody585_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody585_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_120 sourceBody585_113

def sourceBody585_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_121

def sourceBody585_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_119 sourceBody585_122

def sourceBody585_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_123

def sourceBody585_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_118 sourceBody585_124

def sourceBody585_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody585_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 18)) (some 68) ([28]) (some (28, sourceBody585_57, 585, 19))

def sourceBody585_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_127 sourceBody585_7

def sourceBody585_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_128 sourceBody585_0

def sourceBody585_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_126 sourceBody585_129

def sourceBody585_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody585_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody585_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody585_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody585_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody585_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody585_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody585_0, 585, 20)) (some 147) ([18, 26, 22, 32, 14]) (some (18, sourceBody585_136, 585, 21))

def sourceBody585_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_137 sourceBody585_7

def sourceBody585_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_138 sourceBody585_0

def sourceBody585_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_135 sourceBody585_139

def sourceBody585_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_134 sourceBody585_140

def sourceBody585_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_133 sourceBody585_141

def sourceBody585_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_132 sourceBody585_142

def sourceBody585_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_131 sourceBody585_143

def sourceBody585_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_144

def sourceBody585_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_145

def sourceBody585_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody585_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody585_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody585_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 26

def sourceBody585_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_150 sourceBody585_0

def sourceBody585_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_149 sourceBody585_151

def sourceBody585_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_152 sourceBody585_0

def sourceBody585_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_148 sourceBody585_153

def sourceBody585_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_154

def sourceBody585_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_147 sourceBody585_155

def sourceBody585_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_156

def sourceBody585_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_146 sourceBody585_157

def sourceBody585_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody585_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody585_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_160 sourceBody585_153

def sourceBody585_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_161

def sourceBody585_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_159 sourceBody585_162

def sourceBody585_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_163

def sourceBody585_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_158 sourceBody585_164

def sourceBody585_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody585_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody585_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody585_0, 585, 22)) (some 545) ([18, 26]) (some (18, sourceBody585_136, 585, 23))

def sourceBody585_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_168 sourceBody585_7

def sourceBody585_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_169 sourceBody585_0

def sourceBody585_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_167 sourceBody585_170

def sourceBody585_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_166 sourceBody585_171

def sourceBody585_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_172

def sourceBody585_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_173

def sourceBody585_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_165 sourceBody585_174

def sourceBody585_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody585_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody585_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_177 sourceBody585_0

def sourceBody585_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_176 sourceBody585_178

def sourceBody585_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_175 sourceBody585_179

def sourceBody585_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_130 sourceBody585_180

def sourceBody585_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_181

def sourceBody585_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_182

def sourceBody585_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_125 sourceBody585_183

def sourceBody585_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_54 sourceBody585_184

def sourceBody585_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_185

def sourceBody585_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_186

def sourceBody585_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_48 sourceBody585_187

def sourceBody585_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_37 sourceBody585_188

def sourceBody585_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_189

def sourceBody585_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_190

def sourceBody585_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_31 sourceBody585_191

def sourceBody585_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_13 sourceBody585_192

def sourceBody585_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_193

def sourceBody585_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody585_0 sourceBody585_194

def source585 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (585, 7, sourceBody585_195)
end InitECandidate.Proofs.WordStages
