import InitECandidate.Proofs.WordStages.Source587
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody603_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody603_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody603_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody603_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody603_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody603_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody603_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 18) sourceBody603_4 sourceBody603_5

def sourceBody603_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody603_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_6 sourceBody603_7

def sourceBody603_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody603_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody603_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 2)) (some 390) ([]) (some (20, sourceBody603_10, 603, 3))

def sourceBody603_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_11 sourceBody603_7

def sourceBody603_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_12 sourceBody603_0

def sourceBody603_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody603_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody603_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody603_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 4)) (some 421) ([18]) (some (18, sourceBody603_16, 603, 5))

def sourceBody603_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_17 sourceBody603_7

def sourceBody603_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_18 sourceBody603_0

def sourceBody603_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_15 sourceBody603_19

def sourceBody603_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_20

def sourceBody603_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_21

def sourceBody603_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 6)) (some 425) ([18]) (some (18, sourceBody603_16, 603, 7))

def sourceBody603_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_23 sourceBody603_7

def sourceBody603_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_24 sourceBody603_0

def sourceBody603_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_15 sourceBody603_25

def sourceBody603_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_26

def sourceBody603_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_27

def sourceBody603_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_22 sourceBody603_28

def sourceBody603_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 8)) (some 430) ([18]) (some (18, sourceBody603_16, 603, 9))

def sourceBody603_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_30 sourceBody603_7

def sourceBody603_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_31 sourceBody603_0

def sourceBody603_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_15 sourceBody603_32

def sourceBody603_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_33

def sourceBody603_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_34

def sourceBody603_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_29 sourceBody603_35

def sourceBody603_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_14 sourceBody603_36

def sourceBody603_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_37

def sourceBody603_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_13 sourceBody603_38

def sourceBody603_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody603_39 sourceBody603_0

def sourceBody603_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_40 sourceBody603_7

def sourceBody603_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_41 sourceBody603_0

def sourceBody603_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_9 sourceBody603_42

def sourceBody603_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_8 sourceBody603_43

def sourceBody603_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_3 sourceBody603_44

def sourceBody603_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_2 sourceBody603_45

def sourceBody603_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody603_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody603_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 18) sourceBody603_4 sourceBody603_5

def sourceBody603_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_49 sourceBody603_7

def sourceBody603_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody603_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody603_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_52 sourceBody603_0

def sourceBody603_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_53 sourceBody603_0

def sourceBody603_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_51 sourceBody603_54

def sourceBody603_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_55

def sourceBody603_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody603_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_57 sourceBody603_10

def sourceBody603_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_56 sourceBody603_58

def sourceBody603_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody603_59 sourceBody603_0

def sourceBody603_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_60 sourceBody603_7

def sourceBody603_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_61 sourceBody603_0

def sourceBody603_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_9 sourceBody603_62

def sourceBody603_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_50 sourceBody603_63

def sourceBody603_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_48 sourceBody603_64

def sourceBody603_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_47 sourceBody603_65

def sourceBody603_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_46 sourceBody603_66

def sourceBody603_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody603_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody603_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody603_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 10)) (some 596) ([26, 18]) (some (26, sourceBody603_70, 603, 11))

def sourceBody603_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_71 sourceBody603_7

def sourceBody603_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_72 sourceBody603_0

def sourceBody603_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_69 sourceBody603_73

def sourceBody603_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_68 sourceBody603_74

def sourceBody603_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_75

def sourceBody603_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_76

def sourceBody603_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_67 sourceBody603_77

def sourceBody603_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody603_0, 603, 12)) (some 390) ([]) (some (26, sourceBody603_70, 603, 13))

def sourceBody603_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_79 sourceBody603_7

def sourceBody603_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_80 sourceBody603_0

def sourceBody603_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody603_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody603_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 24

def sourceBody603_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_84 sourceBody603_0

def sourceBody603_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_83 sourceBody603_85

def sourceBody603_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_86 sourceBody603_0

def sourceBody603_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_15 sourceBody603_87

def sourceBody603_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_88

def sourceBody603_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_82 sourceBody603_89

def sourceBody603_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_90

def sourceBody603_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody603_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody603_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_93 sourceBody603_87

def sourceBody603_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_94

def sourceBody603_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_92 sourceBody603_95

def sourceBody603_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_96

def sourceBody603_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_91 sourceBody603_97

def sourceBody603_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody603_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody603_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_100 sourceBody603_87

def sourceBody603_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_101

def sourceBody603_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_99 sourceBody603_102

def sourceBody603_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_103

def sourceBody603_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_98 sourceBody603_104

def sourceBody603_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody603_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody603_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_107 sourceBody603_87

def sourceBody603_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_108

def sourceBody603_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_106 sourceBody603_109

def sourceBody603_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_110

def sourceBody603_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_105 sourceBody603_111

def sourceBody603_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody603_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody603_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_114 sourceBody603_87

def sourceBody603_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_115

def sourceBody603_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_113 sourceBody603_116

def sourceBody603_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_117

def sourceBody603_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_112 sourceBody603_118

def sourceBody603_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody603_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody603_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_121 sourceBody603_87

def sourceBody603_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_122

def sourceBody603_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_120 sourceBody603_123

def sourceBody603_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_124

def sourceBody603_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_119 sourceBody603_125

def sourceBody603_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody603_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody603_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_128 sourceBody603_87

def sourceBody603_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_129

def sourceBody603_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_127 sourceBody603_130

def sourceBody603_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_131

def sourceBody603_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_126 sourceBody603_132

def sourceBody603_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody603_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody603_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_135 sourceBody603_87

def sourceBody603_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_136

def sourceBody603_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_134 sourceBody603_137

def sourceBody603_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_138

def sourceBody603_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_133 sourceBody603_139

def sourceBody603_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody603_0, 603, 14)) (some 599) ([]) (some (18, sourceBody603_16, 603, 15))

def sourceBody603_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_141 sourceBody603_7

def sourceBody603_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_142 sourceBody603_0

def sourceBody603_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_143

def sourceBody603_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_144

def sourceBody603_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_140 sourceBody603_145

def sourceBody603_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody603_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_147 sourceBody603_0

def sourceBody603_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_5 sourceBody603_148

def sourceBody603_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_146 sourceBody603_149

def sourceBody603_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_81 sourceBody603_150

def sourceBody603_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_151

def sourceBody603_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_152

def sourceBody603_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_78 sourceBody603_153

def sourceBody603_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_1 sourceBody603_154

def sourceBody603_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody603_0 sourceBody603_155

def source603 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (603, 9, sourceBody603_156)
end InitECandidate.Proofs.WordStages
