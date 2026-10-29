import InitECandidate.Proofs.WordStages.Source853
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody869_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody869_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody869_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody869_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody869_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody869_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 2)) (some 278) ([30, 20]) (some (30, sourceBody869_4, 869, 3))

def sourceBody869_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody869_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_5 sourceBody869_6

def sourceBody869_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_7 sourceBody869_0

def sourceBody869_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_3 sourceBody869_8

def sourceBody869_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_2 sourceBody869_9

def sourceBody869_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody869_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody869_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 6) sourceBody869_14 sourceBody869_15

def sourceBody869_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_16 sourceBody869_6

def sourceBody869_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 42)

def sourceBody869_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody869_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody869_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_20 sourceBody869_0

def sourceBody869_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_21 sourceBody869_0

def sourceBody869_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_19 sourceBody869_22

def sourceBody869_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_23

def sourceBody869_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody869_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_25 sourceBody869_26

def sourceBody869_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_24 sourceBody869_27

def sourceBody869_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody869_28 sourceBody869_0

def sourceBody869_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_29 sourceBody869_6

def sourceBody869_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_30 sourceBody869_0

def sourceBody869_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_18 sourceBody869_31

def sourceBody869_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_17 sourceBody869_32

def sourceBody869_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_13 sourceBody869_33

def sourceBody869_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_12 sourceBody869_34

def sourceBody869_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 36,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody869_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 440#64])

def sourceBody869_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody869_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody869_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 42) 28

def sourceBody869_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_40 sourceBody869_0

def sourceBody869_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_39 sourceBody869_41

def sourceBody869_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_42 sourceBody869_0

def sourceBody869_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_38 sourceBody869_43

def sourceBody869_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_44

def sourceBody869_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_37 sourceBody869_45

def sourceBody869_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_46

def sourceBody869_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 448#64])

def sourceBody869_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody869_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_49 sourceBody869_43

def sourceBody869_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_50

def sourceBody869_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_48 sourceBody869_51

def sourceBody869_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_52

def sourceBody869_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_47 sourceBody869_53

def sourceBody869_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody869_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody869_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 28) sourceBody869_57 sourceBody869_13

def sourceBody869_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_58 sourceBody869_6

def sourceBody869_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody869_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 22#64)

def sourceBody869_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 42)

def sourceBody869_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_62 sourceBody869_0

def sourceBody869_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_63 sourceBody869_0

def sourceBody869_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_61 sourceBody869_64

def sourceBody869_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_65

def sourceBody869_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody869_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_67 sourceBody869_68

def sourceBody869_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_66 sourceBody869_69

def sourceBody869_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody869_70 sourceBody869_0

def sourceBody869_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_71 sourceBody869_6

def sourceBody869_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_72 sourceBody869_0

def sourceBody869_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_60 sourceBody869_73

def sourceBody869_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_59 sourceBody869_74

def sourceBody869_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_56 sourceBody869_75

def sourceBody869_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_55 sourceBody869_76

def sourceBody869_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_54 sourceBody869_77

def sourceBody869_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody869_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody869_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 4)) (some 282) ([6, 28]) (some (6, sourceBody869_80, 869, 5))

def sourceBody869_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_81 sourceBody869_6

def sourceBody869_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_82 sourceBody869_0

def sourceBody869_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_79 sourceBody869_83

def sourceBody869_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_55 sourceBody869_84

def sourceBody869_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 18) sourceBody869_87 sourceBody869_88

def sourceBody869_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_89 sourceBody869_6

def sourceBody869_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody869_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody869_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody869_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_93 sourceBody869_0

def sourceBody869_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_94 sourceBody869_0

def sourceBody869_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_92 sourceBody869_95

def sourceBody869_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_96

def sourceBody869_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_98 sourceBody869_80

def sourceBody869_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_97 sourceBody869_99

def sourceBody869_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody869_100 sourceBody869_0

def sourceBody869_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_101 sourceBody869_6

def sourceBody869_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_102 sourceBody869_0

def sourceBody869_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_91 sourceBody869_103

def sourceBody869_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_90 sourceBody869_104

def sourceBody869_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_86 sourceBody869_105

def sourceBody869_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_18 sourceBody869_106

def sourceBody869_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody869_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody869_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody869_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 6)) (some 293) ([28, 18]) (some (28, sourceBody869_110, 869, 7))

def sourceBody869_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_111 sourceBody869_6

def sourceBody869_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_112 sourceBody869_0

def sourceBody869_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_109 sourceBody869_113

def sourceBody869_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_108 sourceBody869_114

def sourceBody869_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody869_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody869_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody869_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 8)) (some 293) ([18, 40]) (some (18, sourceBody869_118, 869, 9))

def sourceBody869_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_119 sourceBody869_6

def sourceBody869_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_120 sourceBody869_0

def sourceBody869_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_117 sourceBody869_121

def sourceBody869_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_116 sourceBody869_122

def sourceBody869_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody869_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody869_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody869_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody869_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 10)) (some 386) ([40, 12, 34]) (some (40, sourceBody869_127, 869, 11))

def sourceBody869_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_128 sourceBody869_6

def sourceBody869_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_129 sourceBody869_0

def sourceBody869_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_126 sourceBody869_130

def sourceBody869_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_125 sourceBody869_131

def sourceBody869_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_124 sourceBody869_132

def sourceBody869_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_133

def sourceBody869_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_134

def sourceBody869_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody869_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody869_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody869_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody869_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 44) sourceBody869_141 sourceBody869_142

def sourceBody869_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_143 sourceBody869_6

def sourceBody869_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 24)

def sourceBody869_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody869_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 44) sourceBody869_141 sourceBody869_142

def sourceBody869_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_148 sourceBody869_6

def sourceBody869_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 34)

def sourceBody869_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_151 sourceBody869_0

def sourceBody869_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_152 sourceBody869_0

def sourceBody869_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_150 sourceBody869_153

def sourceBody869_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_154

def sourceBody869_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody869_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_150 sourceBody869_156

def sourceBody869_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_155 sourceBody869_157

def sourceBody869_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody869_158 sourceBody869_0

def sourceBody869_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_159 sourceBody869_6

def sourceBody869_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_160 sourceBody869_0

def sourceBody869_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_145 sourceBody869_161

def sourceBody869_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_149 sourceBody869_162

def sourceBody869_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_147 sourceBody869_163

def sourceBody869_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_146 sourceBody869_164

def sourceBody869_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody869_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody869_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_167 sourceBody869_0

def sourceBody869_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_168 sourceBody869_0

def sourceBody869_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_166 sourceBody869_169

def sourceBody869_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_170

def sourceBody869_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_165 sourceBody869_171

def sourceBody869_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody869_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_172 sourceBody869_173

def sourceBody869_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody869_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody869_174 sourceBody869_175

def sourceBody869_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_176 sourceBody869_6

def sourceBody869_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_177 sourceBody869_0

def sourceBody869_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_145 sourceBody869_178

def sourceBody869_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_144 sourceBody869_179

def sourceBody869_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_140 sourceBody869_180

def sourceBody869_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_139 sourceBody869_181

def sourceBody869_183 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody869_182 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody869_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_183 sourceBody869_6

def sourceBody869_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_6 sourceBody869_184

def sourceBody869_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody869_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody869_188 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 12)) (some 854) ([24]) (some (24, sourceBody869_187, 869, 13))

def sourceBody869_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_188 sourceBody869_6

def sourceBody869_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_189 sourceBody869_0

def sourceBody869_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_186 sourceBody869_190

def sourceBody869_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody869_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody869_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 14)) (some 68) ([44]) (some (44, sourceBody869_193, 869, 15))

def sourceBody869_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_194 sourceBody869_6

def sourceBody869_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_195 sourceBody869_0

def sourceBody869_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_192 sourceBody869_196

def sourceBody869_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 34)

def sourceBody869_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody869_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody869_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 16)) (some 277) ([4, 26]) (some (4, sourceBody869_200, 869, 17))

def sourceBody869_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_201 sourceBody869_6

def sourceBody869_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_202 sourceBody869_0

def sourceBody869_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_199 sourceBody869_203

def sourceBody869_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_198 sourceBody869_204

def sourceBody869_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_205

def sourceBody869_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_206

def sourceBody869_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.const 472#64])

def sourceBody869_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody869_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 18)) (some 79) ([4, 26, 16]) (some (4, sourceBody869_200, 869, 19))

def sourceBody869_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_210 sourceBody869_6

def sourceBody869_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_211 sourceBody869_0

def sourceBody869_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_209 sourceBody869_212

def sourceBody869_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_208 sourceBody869_213

def sourceBody869_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_145 sourceBody869_214

def sourceBody869_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody869_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_220 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 16) sourceBody869_218 sourceBody869_219

def sourceBody869_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_220 sourceBody869_6

def sourceBody869_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody869_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody869_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody869_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_224 sourceBody869_0

def sourceBody869_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_225 sourceBody869_0

def sourceBody869_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_223 sourceBody869_226

def sourceBody869_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_227

def sourceBody869_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_229 sourceBody869_200

def sourceBody869_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_228 sourceBody869_230

def sourceBody869_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody869_231 sourceBody869_0

def sourceBody869_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_232 sourceBody869_6

def sourceBody869_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_233 sourceBody869_0

def sourceBody869_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_222 sourceBody869_234

def sourceBody869_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_221 sourceBody869_235

def sourceBody869_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_217 sourceBody869_236

def sourceBody869_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_216 sourceBody869_237

def sourceBody869_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody869_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody869_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 20)) (some 858) ([26]) (some (26, sourceBody869_240, 869, 21))

def sourceBody869_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_241 sourceBody869_6

def sourceBody869_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_242 sourceBody869_0

def sourceBody869_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_239 sourceBody869_243

def sourceBody869_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody869_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody869_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody869_248 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 38) sourceBody869_247 sourceBody869_217

def sourceBody869_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_248 sourceBody869_6

def sourceBody869_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody869_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody869_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 26)

def sourceBody869_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_252 sourceBody869_0

def sourceBody869_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_253 sourceBody869_0

def sourceBody869_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_251 sourceBody869_254

def sourceBody869_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_255

def sourceBody869_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody869_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_257 sourceBody869_240

def sourceBody869_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_256 sourceBody869_258

def sourceBody869_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody869_259 sourceBody869_0

def sourceBody869_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_260 sourceBody869_6

def sourceBody869_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_261 sourceBody869_0

def sourceBody869_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_250 sourceBody869_262

def sourceBody869_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_249 sourceBody869_263

def sourceBody869_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_246 sourceBody869_264

def sourceBody869_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_245 sourceBody869_265

def sourceBody869_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody869_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody869_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody869_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 22)) (some 285) ([16, 38]) (some (16, sourceBody869_269, 869, 23))

def sourceBody869_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_270 sourceBody869_6

def sourceBody869_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_271 sourceBody869_0

def sourceBody869_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_268 sourceBody869_272

def sourceBody869_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_267 sourceBody869_273

def sourceBody869_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_274

def sourceBody869_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_275

def sourceBody869_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_266 sourceBody869_276

def sourceBody869_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody869_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 24)) (some 68) ([16]) (some (16, sourceBody869_269, 869, 25))

def sourceBody869_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_279 sourceBody869_6

def sourceBody869_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_280 sourceBody869_0

def sourceBody869_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_278 sourceBody869_281

def sourceBody869_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 408#64])

def sourceBody869_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 38)

def sourceBody869_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 10

def sourceBody869_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_285 sourceBody869_0

def sourceBody869_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_284 sourceBody869_286

def sourceBody869_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_287 sourceBody869_0

def sourceBody869_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_222 sourceBody869_288

def sourceBody869_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_289

def sourceBody869_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_283 sourceBody869_290

def sourceBody869_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_291

def sourceBody869_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_282 sourceBody869_292

def sourceBody869_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_293

def sourceBody869_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_294

def sourceBody869_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_277 sourceBody869_295

def sourceBody869_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 408#64]))

def sourceBody869_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody869_299 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody869_0, 869, 26)) (some 78) ([16, 38]) (some (16, sourceBody869_269, 869, 27))

def sourceBody869_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_299 sourceBody869_6

def sourceBody869_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_300 sourceBody869_0

def sourceBody869_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_298 sourceBody869_301

def sourceBody869_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_297 sourceBody869_302

def sourceBody869_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_303

def sourceBody869_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_304

def sourceBody869_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_296 sourceBody869_305

def sourceBody869_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody869_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody869_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody869_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 38

def sourceBody869_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_310 sourceBody869_0

def sourceBody869_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_309 sourceBody869_311

def sourceBody869_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_312 sourceBody869_0

def sourceBody869_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_308 sourceBody869_313

def sourceBody869_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_314

def sourceBody869_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_307 sourceBody869_315

def sourceBody869_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_316

def sourceBody869_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_306 sourceBody869_317

def sourceBody869_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody869_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody869_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_320 sourceBody869_313

def sourceBody869_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_321

def sourceBody869_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_319 sourceBody869_322

def sourceBody869_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_323

def sourceBody869_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_318 sourceBody869_324

def sourceBody869_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody869_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 440#64]))

def sourceBody869_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_327 sourceBody869_313

def sourceBody869_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_328

def sourceBody869_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_326 sourceBody869_329

def sourceBody869_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_330

def sourceBody869_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_325 sourceBody869_331

def sourceBody869_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody869_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 448#64]))

def sourceBody869_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_334 sourceBody869_313

def sourceBody869_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_335

def sourceBody869_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_333 sourceBody869_336

def sourceBody869_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_337

def sourceBody869_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_332 sourceBody869_338

def sourceBody869_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody869_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody869_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_341 sourceBody869_313

def sourceBody869_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_342

def sourceBody869_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_340 sourceBody869_343

def sourceBody869_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_344

def sourceBody869_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_339 sourceBody869_345

def sourceBody869_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody869_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody869_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_348 sourceBody869_313

def sourceBody869_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_349

def sourceBody869_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_347 sourceBody869_350

def sourceBody869_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_351

def sourceBody869_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_346 sourceBody869_352

def sourceBody869_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody869_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody869_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody869_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody869_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody869_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody869_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 22

def sourceBody869_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_360 sourceBody869_0

def sourceBody869_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_359 sourceBody869_361

def sourceBody869_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody869_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])
  22

def sourceBody869_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_364 sourceBody869_0

def sourceBody869_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_363 sourceBody869_365

def sourceBody869_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody869_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 16#64])
  22

def sourceBody869_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_368 sourceBody869_0

def sourceBody869_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_367 sourceBody869_369

def sourceBody869_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody869_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 24#64])
  22

def sourceBody869_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_372 sourceBody869_0

def sourceBody869_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_371 sourceBody869_373

def sourceBody869_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_374 sourceBody869_0

def sourceBody869_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_370 sourceBody869_375

def sourceBody869_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_366 sourceBody869_376

def sourceBody869_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_362 sourceBody869_377

def sourceBody869_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_358 sourceBody869_378

def sourceBody869_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_379

def sourceBody869_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_357 sourceBody869_380

def sourceBody869_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_381

def sourceBody869_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_356 sourceBody869_382

def sourceBody869_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_383

def sourceBody869_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_355 sourceBody869_384

def sourceBody869_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_385

def sourceBody869_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_354 sourceBody869_386

def sourceBody869_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_387

def sourceBody869_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_353 sourceBody869_388

def sourceBody869_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody869_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody869_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_391 sourceBody869_313

def sourceBody869_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_392

def sourceBody869_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_390 sourceBody869_393

def sourceBody869_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_394

def sourceBody869_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_389 sourceBody869_395

def sourceBody869_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody869_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody869_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_398 sourceBody869_313

def sourceBody869_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_399

def sourceBody869_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_397 sourceBody869_400

def sourceBody869_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_401

def sourceBody869_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_396 sourceBody869_402

def sourceBody869_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody869_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody869_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_405 sourceBody869_313

def sourceBody869_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_406

def sourceBody869_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_404 sourceBody869_407

def sourceBody869_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_408

def sourceBody869_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_403 sourceBody869_409

def sourceBody869_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody869_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody869_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_412 sourceBody869_313

def sourceBody869_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_413

def sourceBody869_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_411 sourceBody869_414

def sourceBody869_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_415

def sourceBody869_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_410 sourceBody869_416

def sourceBody869_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 408#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody869_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 240#64]))

def sourceBody869_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_419 sourceBody869_313

def sourceBody869_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_420

def sourceBody869_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_418 sourceBody869_421

def sourceBody869_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_422

def sourceBody869_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_417 sourceBody869_423

def sourceBody869_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody869_426 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody869_0, 869, 28)) (some 868) ([16, 38]) (some (16, sourceBody869_269, 869, 29))

def sourceBody869_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_426 sourceBody869_6

def sourceBody869_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_427 sourceBody869_0

def sourceBody869_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_268 sourceBody869_428

def sourceBody869_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_425 sourceBody869_429

def sourceBody869_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_430

def sourceBody869_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_431

def sourceBody869_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_424 sourceBody869_432

def sourceBody869_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody869_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_434 sourceBody869_0

def sourceBody869_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_219 sourceBody869_435

def sourceBody869_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_433 sourceBody869_436

def sourceBody869_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_244 sourceBody869_437

def sourceBody869_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_438

def sourceBody869_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_439

def sourceBody869_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_238 sourceBody869_440

def sourceBody869_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_215 sourceBody869_441

def sourceBody869_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_442

def sourceBody869_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_443

def sourceBody869_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_207 sourceBody869_444

def sourceBody869_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_197 sourceBody869_445

def sourceBody869_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_446

def sourceBody869_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_447

def sourceBody869_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_191 sourceBody869_448

def sourceBody869_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_449

def sourceBody869_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_450

def sourceBody869_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_185 sourceBody869_451

def sourceBody869_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_138 sourceBody869_452

def sourceBody869_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_453

def sourceBody869_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_137 sourceBody869_454

def sourceBody869_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_455

def sourceBody869_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_136 sourceBody869_456

def sourceBody869_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_457

def sourceBody869_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_135 sourceBody869_458

def sourceBody869_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_123 sourceBody869_459

def sourceBody869_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_460

def sourceBody869_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_461

def sourceBody869_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_115 sourceBody869_462

def sourceBody869_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_463

def sourceBody869_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_464

def sourceBody869_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_107 sourceBody869_465

def sourceBody869_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_85 sourceBody869_466

def sourceBody869_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_467

def sourceBody869_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_468

def sourceBody869_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_78 sourceBody869_469

def sourceBody869_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_36 sourceBody869_470

def sourceBody869_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_471

def sourceBody869_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_35 sourceBody869_472

def sourceBody869_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_11 sourceBody869_473

def sourceBody869_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_474

def sourceBody869_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_10 sourceBody869_475

def sourceBody869_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_476

def sourceBody869_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_477

def sourceBody869_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_478

def sourceBody869_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_479

def sourceBody869_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_1 sourceBody869_480

def sourceBody869_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody869_0 sourceBody869_481

def source869 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (869, 2, sourceBody869_482)
end InitECandidate.Proofs.WordStages
