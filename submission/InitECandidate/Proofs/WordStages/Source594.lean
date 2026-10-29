import InitECandidate.Proofs.WordStages.Source578
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody594_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody594_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody594_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody594_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 20) sourceBody594_4 sourceBody594_5

def sourceBody594_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody594_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_6 sourceBody594_7

def sourceBody594_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody594_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody594_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody594_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody594_0, 594, 2)) (some 405) ([6]) (some (6, sourceBody594_11, 594, 3))

def sourceBody594_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_12 sourceBody594_7

def sourceBody594_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_13 sourceBody594_0

def sourceBody594_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_10 sourceBody594_14

def sourceBody594_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody594_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody594_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody594_0, 594, 4)) (some 416) ([20]) (some (20, sourceBody594_17, 594, 5))

def sourceBody594_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_18 sourceBody594_7

def sourceBody594_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_19 sourceBody594_0

def sourceBody594_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_16 sourceBody594_20

def sourceBody594_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 28) sourceBody594_23 sourceBody594_24

def sourceBody594_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_25 sourceBody594_7

def sourceBody594_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody594_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody594_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody594_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody594_0, 594, 6)) (some 471) ([14]) (some (14, sourceBody594_29, 594, 7))

def sourceBody594_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_30 sourceBody594_7

def sourceBody594_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_31 sourceBody594_0

def sourceBody594_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_28 sourceBody594_32

def sourceBody594_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_33

def sourceBody594_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_34

def sourceBody594_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody594_35 sourceBody594_0

def sourceBody594_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_36 sourceBody594_7

def sourceBody594_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_37 sourceBody594_0

def sourceBody594_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_27 sourceBody594_38

def sourceBody594_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_26 sourceBody594_39

def sourceBody594_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_22 sourceBody594_40

def sourceBody594_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_9 sourceBody594_41

def sourceBody594_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody594_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_43 sourceBody594_0

def sourceBody594_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_3 sourceBody594_44

def sourceBody594_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_42 sourceBody594_45

def sourceBody594_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_21 sourceBody594_46

def sourceBody594_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_47

def sourceBody594_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_48

def sourceBody594_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_15 sourceBody594_49

def sourceBody594_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_50

def sourceBody594_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_51

def sourceBody594_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody594_52 sourceBody594_0

def sourceBody594_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_53 sourceBody594_7

def sourceBody594_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_54 sourceBody594_0

def sourceBody594_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_9 sourceBody594_55

def sourceBody594_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_8 sourceBody594_56

def sourceBody594_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_3 sourceBody594_57

def sourceBody594_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_2 sourceBody594_58

def sourceBody594_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody594_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody594_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody594_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody594_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody594_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 8)) (some 102) ([20, 14, 28, 4]) (some (20, sourceBody594_17, 594, 9))

def sourceBody594_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_65 sourceBody594_7

def sourceBody594_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_66 sourceBody594_0

def sourceBody594_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_64 sourceBody594_67

def sourceBody594_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_63 sourceBody594_68

def sourceBody594_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_62 sourceBody594_69

def sourceBody594_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_61 sourceBody594_70

def sourceBody594_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 28) sourceBody594_23 sourceBody594_24

def sourceBody594_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_72 sourceBody594_7

def sourceBody594_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody594_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 10)) (some 418) ([14]) (some (14, sourceBody594_29, 594, 11))

def sourceBody594_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_75 sourceBody594_7

def sourceBody594_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_76 sourceBody594_0

def sourceBody594_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_74 sourceBody594_77

def sourceBody594_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody594_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 4) sourceBody594_81 sourceBody594_22

def sourceBody594_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_82 sourceBody594_7

def sourceBody594_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody594_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody594_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody594_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 12)) (some 471) ([28]) (some (28, sourceBody594_86, 594, 13))

def sourceBody594_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_87 sourceBody594_7

def sourceBody594_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_88 sourceBody594_0

def sourceBody594_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_85 sourceBody594_89

def sourceBody594_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_90

def sourceBody594_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_91

def sourceBody594_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody594_92 sourceBody594_0

def sourceBody594_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_93 sourceBody594_7

def sourceBody594_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_94 sourceBody594_0

def sourceBody594_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_84 sourceBody594_95

def sourceBody594_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_83 sourceBody594_96

def sourceBody594_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_80 sourceBody594_97

def sourceBody594_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_79 sourceBody594_98

def sourceBody594_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_78 sourceBody594_99

def sourceBody594_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_100

def sourceBody594_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_101

def sourceBody594_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody594_102 sourceBody594_0

def sourceBody594_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_103 sourceBody594_7

def sourceBody594_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_104 sourceBody594_0

def sourceBody594_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_27 sourceBody594_105

def sourceBody594_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_73 sourceBody594_106

def sourceBody594_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_22 sourceBody594_107

def sourceBody594_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_9 sourceBody594_108

def sourceBody594_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody594_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 14)) (some 565) ([28]) (some (28, sourceBody594_86, 594, 15))

def sourceBody594_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_111 sourceBody594_7

def sourceBody594_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_112 sourceBody594_0

def sourceBody594_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_110 sourceBody594_113

def sourceBody594_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody594_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody594_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody594_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 16)) (some 589) ([12, 26]) (some (12, sourceBody594_117, 594, 17))

def sourceBody594_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_118 sourceBody594_7

def sourceBody594_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_119 sourceBody594_0

def sourceBody594_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_116 sourceBody594_120

def sourceBody594_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_115 sourceBody594_121

def sourceBody594_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody594_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 8) sourceBody594_125 sourceBody594_126

def sourceBody594_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_127 sourceBody594_7

def sourceBody594_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody594_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody594_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody594_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 18)) (some 68) ([26]) (some (26, sourceBody594_131, 594, 19))

def sourceBody594_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_132 sourceBody594_7

def sourceBody594_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_133 sourceBody594_0

def sourceBody594_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_130 sourceBody594_134

def sourceBody594_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody594_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody594_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody594_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody594_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 20)) (some 77) ([8, 22, 16]) (some (8, sourceBody594_139, 594, 21))

def sourceBody594_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_140 sourceBody594_7

def sourceBody594_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_141 sourceBody594_0

def sourceBody594_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_138 sourceBody594_142

def sourceBody594_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_137 sourceBody594_143

def sourceBody594_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_136 sourceBody594_144

def sourceBody594_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_145

def sourceBody594_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_146

def sourceBody594_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 22)) (some 493) ([8]) (some (8, sourceBody594_139, 594, 23))

def sourceBody594_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_148 sourceBody594_7

def sourceBody594_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_149 sourceBody594_0

def sourceBody594_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_136 sourceBody594_150

def sourceBody594_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody594_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 16) sourceBody594_153 sourceBody594_154

def sourceBody594_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_155 sourceBody594_7

def sourceBody594_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody594_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody594_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody594_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 24)) (some 470) ([22]) (some (22, sourceBody594_159, 594, 25))

def sourceBody594_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_160 sourceBody594_7

def sourceBody594_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_161 sourceBody594_0

def sourceBody594_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_158 sourceBody594_162

def sourceBody594_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_163

def sourceBody594_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_164

def sourceBody594_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 3000#64)

def sourceBody594_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 26)) (some 470) ([22]) (some (22, sourceBody594_159, 594, 27))

def sourceBody594_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_167 sourceBody594_7

def sourceBody594_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_168 sourceBody594_0

def sourceBody594_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_166 sourceBody594_169

def sourceBody594_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_170

def sourceBody594_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_171

def sourceBody594_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody594_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 28)) (some 494) ([22]) (some (22, sourceBody594_159, 594, 29))

def sourceBody594_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_174 sourceBody594_7

def sourceBody594_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_175 sourceBody594_0

def sourceBody594_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_173 sourceBody594_176

def sourceBody594_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_177

def sourceBody594_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_178

def sourceBody594_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_172 sourceBody594_179

def sourceBody594_181 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody594_165 sourceBody594_180

def sourceBody594_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_181 sourceBody594_7

def sourceBody594_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_182 sourceBody594_0

def sourceBody594_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_157 sourceBody594_183

def sourceBody594_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_156 sourceBody594_184

def sourceBody594_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_152 sourceBody594_185

def sourceBody594_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_129 sourceBody594_186

def sourceBody594_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody594_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody594_190 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody594_0, 594, 30)) (some 565) ([16]) (some (16, sourceBody594_189, 594, 31))

def sourceBody594_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_190 sourceBody594_7

def sourceBody594_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_191 sourceBody594_0

def sourceBody594_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_188 sourceBody594_192

def sourceBody594_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody594_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_194 sourceBody594_0

def sourceBody594_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_195 sourceBody594_0

def sourceBody594_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 22)

def sourceBody594_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_197 sourceBody594_0

def sourceBody594_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_198 sourceBody594_0

def sourceBody594_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_196 sourceBody594_199

def sourceBody594_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody594_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody594_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 30)

def sourceBody594_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 2

def sourceBody594_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_204 sourceBody594_0

def sourceBody594_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_203 sourceBody594_205

def sourceBody594_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_206 sourceBody594_0

def sourceBody594_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_202 sourceBody594_207

def sourceBody594_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_208

def sourceBody594_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_201 sourceBody594_209

def sourceBody594_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_210

def sourceBody594_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_200 sourceBody594_211

def sourceBody594_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 104#64])

def sourceBody594_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody594_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_214 sourceBody594_207

def sourceBody594_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_215

def sourceBody594_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_213 sourceBody594_216

def sourceBody594_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_217

def sourceBody594_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_212 sourceBody594_218

def sourceBody594_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_193 sourceBody594_219

def sourceBody594_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_220

def sourceBody594_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_221

def sourceBody594_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_222

def sourceBody594_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_223

def sourceBody594_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_187 sourceBody594_224

def sourceBody594_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_151 sourceBody594_225

def sourceBody594_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_226

def sourceBody594_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_227

def sourceBody594_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_147 sourceBody594_228

def sourceBody594_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_135 sourceBody594_229

def sourceBody594_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_230

def sourceBody594_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_231

def sourceBody594_233 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody594_232 sourceBody594_0

def sourceBody594_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_233 sourceBody594_7

def sourceBody594_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_234 sourceBody594_0

def sourceBody594_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_129 sourceBody594_235

def sourceBody594_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_128 sourceBody594_236

def sourceBody594_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_124 sourceBody594_237

def sourceBody594_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_123 sourceBody594_238

def sourceBody594_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 112#64])

def sourceBody594_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody594_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody594_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 8

def sourceBody594_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_243 sourceBody594_0

def sourceBody594_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_242 sourceBody594_244

def sourceBody594_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_245 sourceBody594_0

def sourceBody594_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_241 sourceBody594_246

def sourceBody594_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_247

def sourceBody594_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_240 sourceBody594_248

def sourceBody594_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_249

def sourceBody594_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_239 sourceBody594_250

def sourceBody594_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 120#64])

def sourceBody594_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody594_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_253 sourceBody594_246

def sourceBody594_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_254

def sourceBody594_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_252 sourceBody594_255

def sourceBody594_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_256

def sourceBody594_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_251 sourceBody594_257

def sourceBody594_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody594_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_259 sourceBody594_248

def sourceBody594_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_260

def sourceBody594_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_258 sourceBody594_261

def sourceBody594_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody594_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_263 sourceBody594_255

def sourceBody594_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_264

def sourceBody594_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_262 sourceBody594_265

def sourceBody594_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody594_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody594_0, 594, 32)) (some 485) ([26, 8]) (some (26, sourceBody594_131, 594, 33))

def sourceBody594_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_268 sourceBody594_7

def sourceBody594_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_269 sourceBody594_0

def sourceBody594_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_267 sourceBody594_270

def sourceBody594_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_241 sourceBody594_271

def sourceBody594_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody594_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody594_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 22

def sourceBody594_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_275 sourceBody594_0

def sourceBody594_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_274 sourceBody594_276

def sourceBody594_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_277 sourceBody594_0

def sourceBody594_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_136 sourceBody594_278

def sourceBody594_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_279

def sourceBody594_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_273 sourceBody594_280

def sourceBody594_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_281

def sourceBody594_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody594_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_283 sourceBody594_0

def sourceBody594_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_126 sourceBody594_284

def sourceBody594_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_282 sourceBody594_285

def sourceBody594_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_272 sourceBody594_286

def sourceBody594_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_287

def sourceBody594_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_288

def sourceBody594_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_266 sourceBody594_289

def sourceBody594_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_122 sourceBody594_290

def sourceBody594_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_291

def sourceBody594_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_292

def sourceBody594_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_27 sourceBody594_293

def sourceBody594_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_294

def sourceBody594_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_79 sourceBody594_295

def sourceBody594_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_296

def sourceBody594_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_114 sourceBody594_297

def sourceBody594_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_298

def sourceBody594_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_299

def sourceBody594_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_300

def sourceBody594_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_301

def sourceBody594_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_109 sourceBody594_302

def sourceBody594_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_71 sourceBody594_303

def sourceBody594_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_304

def sourceBody594_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_305

def sourceBody594_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_60 sourceBody594_306

def sourceBody594_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_307

def sourceBody594_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_59 sourceBody594_308

def sourceBody594_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_1 sourceBody594_309

def sourceBody594_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody594_0 sourceBody594_310

def source594 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (594, 1, sourceBody594_311)
end InitECandidate.Proofs.WordStages
