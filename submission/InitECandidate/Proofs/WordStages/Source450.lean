import InitECandidate.Proofs.WordStages.Source434
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody450_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody450_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 248#64]))

def sourceBody450_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody450_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody450_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody450_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 2)) (some 87) ([22, 16]) (some (22, sourceBody450_4, 450, 3))

def sourceBody450_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody450_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_5 sourceBody450_6

def sourceBody450_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_7 sourceBody450_0

def sourceBody450_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_3 sourceBody450_8

def sourceBody450_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_2 sourceBody450_9

def sourceBody450_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_10

def sourceBody450_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_11

def sourceBody450_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody450_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody450_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody450_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 4)) (some 77) ([22, 16, 30]) (some (22, sourceBody450_4, 450, 5))

def sourceBody450_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_16 sourceBody450_6

def sourceBody450_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_17 sourceBody450_0

def sourceBody450_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_15 sourceBody450_18

def sourceBody450_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_14 sourceBody450_19

def sourceBody450_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_13 sourceBody450_20

def sourceBody450_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_21

def sourceBody450_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_22

def sourceBody450_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_12 sourceBody450_23

def sourceBody450_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 28#64])

def sourceBody450_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody450_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody450_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 6)) (some 77) ([22, 16, 30]) (some (22, sourceBody450_4, 450, 7))

def sourceBody450_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_28 sourceBody450_6

def sourceBody450_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_29 sourceBody450_0

def sourceBody450_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_27 sourceBody450_30

def sourceBody450_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_26 sourceBody450_31

def sourceBody450_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_25 sourceBody450_32

def sourceBody450_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_33

def sourceBody450_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_34

def sourceBody450_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_24 sourceBody450_35

def sourceBody450_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 240#64]))

def sourceBody450_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody450_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody450_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 8)) (some 186) ([16, 30]) (some (16, sourceBody450_39, 450, 9))

def sourceBody450_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_40 sourceBody450_6

def sourceBody450_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_41 sourceBody450_0

def sourceBody450_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_38 sourceBody450_42

def sourceBody450_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_37 sourceBody450_43

def sourceBody450_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody450_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody450_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody450_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody450_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 8) sourceBody450_47 sourceBody450_48

def sourceBody450_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_49 sourceBody450_6

def sourceBody450_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody450_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 22))

def sourceBody450_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody450_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody450_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody450_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 30, 8, 20]

def sourceBody450_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_56 sourceBody450_0

def sourceBody450_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_55 sourceBody450_57

def sourceBody450_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_54 sourceBody450_58

def sourceBody450_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_53 sourceBody450_59

def sourceBody450_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_52 sourceBody450_60

def sourceBody450_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody450_61 sourceBody450_0

def sourceBody450_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_62 sourceBody450_6

def sourceBody450_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_63 sourceBody450_0

def sourceBody450_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_51 sourceBody450_64

def sourceBody450_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_50 sourceBody450_65

def sourceBody450_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_46 sourceBody450_66

def sourceBody450_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_45 sourceBody450_67

def sourceBody450_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody450_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody450_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody450_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 30, 8, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 10)) (some 448) ([14, 28]) (some (14, sourceBody450_71, 450, 11))

def sourceBody450_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_72 sourceBody450_6

def sourceBody450_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_73 sourceBody450_0

def sourceBody450_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_70 sourceBody450_74

def sourceBody450_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_69 sourceBody450_75

def sourceBody450_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody450_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody450_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 12)) (some 68) ([28]) (some (28, sourceBody450_78, 450, 13))

def sourceBody450_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_79 sourceBody450_6

def sourceBody450_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_80 sourceBody450_0

def sourceBody450_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_77 sourceBody450_81

def sourceBody450_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody450_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody450_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody450_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody450_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody450_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody450_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 6

def sourceBody450_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_89 sourceBody450_0

def sourceBody450_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_88 sourceBody450_90

def sourceBody450_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody450_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64]) 6

def sourceBody450_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_93 sourceBody450_0

def sourceBody450_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_92 sourceBody450_94

def sourceBody450_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody450_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64])
  6

def sourceBody450_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_97 sourceBody450_0

def sourceBody450_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_96 sourceBody450_98

def sourceBody450_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 32)

def sourceBody450_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64])
  6

def sourceBody450_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_101 sourceBody450_0

def sourceBody450_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_100 sourceBody450_102

def sourceBody450_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_103 sourceBody450_0

def sourceBody450_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_99 sourceBody450_104

def sourceBody450_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_95 sourceBody450_105

def sourceBody450_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_91 sourceBody450_106

def sourceBody450_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_87 sourceBody450_107

def sourceBody450_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_108

def sourceBody450_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_86 sourceBody450_109

def sourceBody450_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_110

def sourceBody450_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_85 sourceBody450_111

def sourceBody450_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_112

def sourceBody450_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_84 sourceBody450_113

def sourceBody450_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_114

def sourceBody450_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_83 sourceBody450_115

def sourceBody450_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_116

def sourceBody450_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody450_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody450_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody450_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 14)) (some 87) ([12, 24]) (some (12, sourceBody450_120, 450, 15))

def sourceBody450_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_121 sourceBody450_6

def sourceBody450_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_122 sourceBody450_0

def sourceBody450_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_119 sourceBody450_123

def sourceBody450_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_118 sourceBody450_124

def sourceBody450_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_125

def sourceBody450_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_126

def sourceBody450_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_117 sourceBody450_127

def sourceBody450_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody450_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody450_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody450_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 16)) (some 77) ([12, 24, 18]) (some (12, sourceBody450_120, 450, 17))

def sourceBody450_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_132 sourceBody450_6

def sourceBody450_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_133 sourceBody450_0

def sourceBody450_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_131 sourceBody450_134

def sourceBody450_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_130 sourceBody450_135

def sourceBody450_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_129 sourceBody450_136

def sourceBody450_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_137

def sourceBody450_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_138

def sourceBody450_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_128 sourceBody450_139

def sourceBody450_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 28#64])

def sourceBody450_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody450_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody450_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 18)) (some 77) ([12, 24, 18]) (some (12, sourceBody450_120, 450, 19))

def sourceBody450_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_144 sourceBody450_6

def sourceBody450_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_145 sourceBody450_0

def sourceBody450_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_143 sourceBody450_146

def sourceBody450_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_142 sourceBody450_147

def sourceBody450_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_141 sourceBody450_148

def sourceBody450_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_149

def sourceBody450_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_150

def sourceBody450_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_140 sourceBody450_151

def sourceBody450_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 240#64]))

def sourceBody450_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody450_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody450_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody450_0, 450, 20)) (some 192) ([12, 24, 18]) (some (12, sourceBody450_120, 450, 21))

def sourceBody450_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_156 sourceBody450_6

def sourceBody450_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_157 sourceBody450_0

def sourceBody450_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_155 sourceBody450_158

def sourceBody450_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_154 sourceBody450_159

def sourceBody450_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_153 sourceBody450_160

def sourceBody450_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_161

def sourceBody450_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_162

def sourceBody450_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_152 sourceBody450_163

def sourceBody450_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody450_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody450_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody450_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody450_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 12, 24, 18]

def sourceBody450_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_169 sourceBody450_0

def sourceBody450_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_168 sourceBody450_170

def sourceBody450_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_167 sourceBody450_171

def sourceBody450_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_166 sourceBody450_172

def sourceBody450_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_165 sourceBody450_173

def sourceBody450_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_164 sourceBody450_174

def sourceBody450_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_82 sourceBody450_175

def sourceBody450_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_176

def sourceBody450_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_177

def sourceBody450_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_76 sourceBody450_178

def sourceBody450_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_179

def sourceBody450_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_180

def sourceBody450_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_181

def sourceBody450_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_182

def sourceBody450_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_183

def sourceBody450_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_184

def sourceBody450_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_185

def sourceBody450_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_186

def sourceBody450_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_68 sourceBody450_187

def sourceBody450_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_44 sourceBody450_188

def sourceBody450_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_189

def sourceBody450_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_190

def sourceBody450_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_191

def sourceBody450_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_192

def sourceBody450_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_36 sourceBody450_193

def sourceBody450_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_1 sourceBody450_194

def sourceBody450_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody450_0 sourceBody450_195

def source450 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (450, 3, sourceBody450_196)
end InitECandidate.Proofs.WordStages
