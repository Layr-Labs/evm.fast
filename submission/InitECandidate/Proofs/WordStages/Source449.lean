import InitECandidate.Proofs.WordStages.Source433
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody449_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody449_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 248#64]))

def sourceBody449_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody449_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody449_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody449_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 2)) (some 87) ([6, 18]) (some (6, sourceBody449_4, 449, 3))

def sourceBody449_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody449_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_5 sourceBody449_6

def sourceBody449_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_7 sourceBody449_0

def sourceBody449_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_3 sourceBody449_8

def sourceBody449_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_2 sourceBody449_9

def sourceBody449_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_10

def sourceBody449_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_11

def sourceBody449_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody449_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody449_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody449_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 4)) (some 77) ([6, 18, 14]) (some (6, sourceBody449_4, 449, 5))

def sourceBody449_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_16 sourceBody449_6

def sourceBody449_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_17 sourceBody449_0

def sourceBody449_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_15 sourceBody449_18

def sourceBody449_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_14 sourceBody449_19

def sourceBody449_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_13 sourceBody449_20

def sourceBody449_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_21

def sourceBody449_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_22

def sourceBody449_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_12 sourceBody449_23

def sourceBody449_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 232#64]))

def sourceBody449_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody449_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody449_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 6)) (some 186) ([18, 14]) (some (18, sourceBody449_27, 449, 7))

def sourceBody449_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_28 sourceBody449_6

def sourceBody449_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_29 sourceBody449_0

def sourceBody449_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_26 sourceBody449_30

def sourceBody449_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_25 sourceBody449_31

def sourceBody449_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody449_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody449_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody449_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody449_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 24) sourceBody449_35 sourceBody449_36

def sourceBody449_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_37 sourceBody449_6

def sourceBody449_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody449_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody449_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody449_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_41 sourceBody449_0

def sourceBody449_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_40 sourceBody449_42

def sourceBody449_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody449_43 sourceBody449_0

def sourceBody449_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_44 sourceBody449_6

def sourceBody449_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_45 sourceBody449_0

def sourceBody449_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_39 sourceBody449_46

def sourceBody449_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_38 sourceBody449_47

def sourceBody449_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_34 sourceBody449_48

def sourceBody449_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_33 sourceBody449_49

def sourceBody449_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody449_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody449_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 8)) (some 447) ([14]) (some (14, sourceBody449_52, 449, 9))

def sourceBody449_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_53 sourceBody449_6

def sourceBody449_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_54 sourceBody449_0

def sourceBody449_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_51 sourceBody449_55

def sourceBody449_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody449_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody449_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 10)) (some 68) ([24]) (some (24, sourceBody449_58, 449, 11))

def sourceBody449_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_59 sourceBody449_6

def sourceBody449_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_60 sourceBody449_0

def sourceBody449_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_57 sourceBody449_61

def sourceBody449_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody449_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody449_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 12)) (some 78) ([4, 16]) (some (4, sourceBody449_64, 449, 13))

def sourceBody449_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_65 sourceBody449_6

def sourceBody449_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_66 sourceBody449_0

def sourceBody449_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_63 sourceBody449_67

def sourceBody449_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_39 sourceBody449_68

def sourceBody449_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_69

def sourceBody449_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_70

def sourceBody449_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody449_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody449_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody449_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 14)) (some 77) ([4, 16, 12]) (some (4, sourceBody449_64, 449, 15))

def sourceBody449_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_75 sourceBody449_6

def sourceBody449_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_76 sourceBody449_0

def sourceBody449_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_74 sourceBody449_77

def sourceBody449_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_73 sourceBody449_78

def sourceBody449_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_72 sourceBody449_79

def sourceBody449_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_80

def sourceBody449_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_81

def sourceBody449_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_71 sourceBody449_82

def sourceBody449_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody449_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody449_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody449_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody449_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 16) sourceBody449_86 sourceBody449_87

def sourceBody449_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_88 sourceBody449_6

def sourceBody449_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody449_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody449_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody449_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 16

def sourceBody449_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_93 sourceBody449_0

def sourceBody449_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_92 sourceBody449_94

def sourceBody449_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_95 sourceBody449_0

def sourceBody449_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_86 sourceBody449_96

def sourceBody449_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_97

def sourceBody449_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_91 sourceBody449_98

def sourceBody449_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_99

def sourceBody449_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody449_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody449_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_102 sourceBody449_96

def sourceBody449_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_103

def sourceBody449_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_101 sourceBody449_104

def sourceBody449_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_105

def sourceBody449_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_100 sourceBody449_106

def sourceBody449_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody449_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody449_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody449_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody449_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody449_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody449_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 8

def sourceBody449_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_114 sourceBody449_0

def sourceBody449_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_113 sourceBody449_115

def sourceBody449_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody449_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64]) 8

def sourceBody449_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_118 sourceBody449_0

def sourceBody449_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_117 sourceBody449_119

def sourceBody449_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody449_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 16#64])
  8

def sourceBody449_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_122 sourceBody449_0

def sourceBody449_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_121 sourceBody449_123

def sourceBody449_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 22)

def sourceBody449_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 24#64])
  8

def sourceBody449_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_126 sourceBody449_0

def sourceBody449_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_125 sourceBody449_127

def sourceBody449_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_128 sourceBody449_0

def sourceBody449_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_124 sourceBody449_129

def sourceBody449_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_120 sourceBody449_130

def sourceBody449_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_116 sourceBody449_131

def sourceBody449_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_112 sourceBody449_132

def sourceBody449_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_133

def sourceBody449_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_111 sourceBody449_134

def sourceBody449_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_135

def sourceBody449_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_110 sourceBody449_136

def sourceBody449_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_137

def sourceBody449_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_109 sourceBody449_138

def sourceBody449_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_139

def sourceBody449_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_108 sourceBody449_140

def sourceBody449_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_141

def sourceBody449_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_107 sourceBody449_142

def sourceBody449_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody449_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 16)) (some 77) ([4, 16, 12]) (some (4, sourceBody449_64, 449, 17))

def sourceBody449_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_145 sourceBody449_6

def sourceBody449_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_146 sourceBody449_0

def sourceBody449_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_74 sourceBody449_147

def sourceBody449_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_144 sourceBody449_148

def sourceBody449_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_72 sourceBody449_149

def sourceBody449_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_150

def sourceBody449_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_151

def sourceBody449_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_143 sourceBody449_152

def sourceBody449_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody449_153 sourceBody449_0

def sourceBody449_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_154 sourceBody449_6

def sourceBody449_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_155 sourceBody449_0

def sourceBody449_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_90 sourceBody449_156

def sourceBody449_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_89 sourceBody449_157

def sourceBody449_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_85 sourceBody449_158

def sourceBody449_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_84 sourceBody449_159

def sourceBody449_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_83 sourceBody449_160

def sourceBody449_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody449_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody449_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 18)) (some 87) ([4, 16]) (some (4, sourceBody449_64, 449, 19))

def sourceBody449_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_164 sourceBody449_6

def sourceBody449_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_165 sourceBody449_0

def sourceBody449_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_163 sourceBody449_166

def sourceBody449_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_162 sourceBody449_167

def sourceBody449_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_168

def sourceBody449_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_169

def sourceBody449_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_161 sourceBody449_170

def sourceBody449_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody449_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody449_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody449_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 20)) (some 77) ([4, 16, 12]) (some (4, sourceBody449_64, 449, 21))

def sourceBody449_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_175 sourceBody449_6

def sourceBody449_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_176 sourceBody449_0

def sourceBody449_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_174 sourceBody449_177

def sourceBody449_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_173 sourceBody449_178

def sourceBody449_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_172 sourceBody449_179

def sourceBody449_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_180

def sourceBody449_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_181

def sourceBody449_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_171 sourceBody449_182

def sourceBody449_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 232#64]))

def sourceBody449_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody449_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody449_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody449_0, 449, 22)) (some 192) ([4, 16, 12]) (some (4, sourceBody449_64, 449, 23))

def sourceBody449_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_187 sourceBody449_6

def sourceBody449_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_188 sourceBody449_0

def sourceBody449_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_186 sourceBody449_189

def sourceBody449_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_185 sourceBody449_190

def sourceBody449_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_184 sourceBody449_191

def sourceBody449_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_192

def sourceBody449_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_193

def sourceBody449_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_183 sourceBody449_194

def sourceBody449_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody449_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_196 sourceBody449_0

def sourceBody449_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_91 sourceBody449_197

def sourceBody449_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_195 sourceBody449_198

def sourceBody449_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_62 sourceBody449_199

def sourceBody449_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_200

def sourceBody449_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_201

def sourceBody449_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_56 sourceBody449_202

def sourceBody449_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_203

def sourceBody449_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_204

def sourceBody449_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_50 sourceBody449_205

def sourceBody449_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_32 sourceBody449_206

def sourceBody449_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_207

def sourceBody449_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_208

def sourceBody449_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_209

def sourceBody449_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_210

def sourceBody449_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_24 sourceBody449_211

def sourceBody449_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_1 sourceBody449_212

def sourceBody449_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody449_0 sourceBody449_213

def source449 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (449, 2, sourceBody449_214)
end InitECandidate.Proofs.WordStages
