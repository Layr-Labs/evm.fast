import InitECandidate.Proofs.WordStages.Source385
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody401_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody401_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody401_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody401_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 2)) (some 399) ([10]) (some (10, sourceBody401_2, 401, 3))

def sourceBody401_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody401_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_3 sourceBody401_4

def sourceBody401_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_5 sourceBody401_0

def sourceBody401_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_1 sourceBody401_6

def sourceBody401_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody401_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody401_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody401_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody401_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 4)) (some 79) ([30, 20, 42]) (some (30, sourceBody401_11, 401, 5))

def sourceBody401_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_12 sourceBody401_4

def sourceBody401_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_13 sourceBody401_0

def sourceBody401_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_10 sourceBody401_14

def sourceBody401_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_9 sourceBody401_15

def sourceBody401_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_8 sourceBody401_16

def sourceBody401_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody401_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody401_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 42) sourceBody401_20 sourceBody401_21

def sourceBody401_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_22 sourceBody401_4

def sourceBody401_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody401_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30, 20, 42, 8]

def sourceBody401_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_27 sourceBody401_0

def sourceBody401_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_26 sourceBody401_28

def sourceBody401_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_19 sourceBody401_29

def sourceBody401_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_21 sourceBody401_30

def sourceBody401_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_25 sourceBody401_31

def sourceBody401_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody401_32 sourceBody401_0

def sourceBody401_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_33 sourceBody401_4

def sourceBody401_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_34 sourceBody401_0

def sourceBody401_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_24 sourceBody401_35

def sourceBody401_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_23 sourceBody401_36

def sourceBody401_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_19 sourceBody401_37

def sourceBody401_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_18 sourceBody401_38

def sourceBody401_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody401_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody401_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 6)) (some 400) ([20]) (some (20, sourceBody401_41, 401, 7))

def sourceBody401_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_42 sourceBody401_4

def sourceBody401_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_43 sourceBody401_0

def sourceBody401_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_40 sourceBody401_44

def sourceBody401_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody401_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 8)) (some 69) ([]) (some (42, sourceBody401_46, 401, 9))

def sourceBody401_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_47 sourceBody401_4

def sourceBody401_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_48 sourceBody401_0

def sourceBody401_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody401_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody401_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 10)) (some 68) ([8]) (some (8, sourceBody401_51, 401, 11))

def sourceBody401_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_52 sourceBody401_4

def sourceBody401_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_53 sourceBody401_0

def sourceBody401_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_50 sourceBody401_54

def sourceBody401_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody401_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody401_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody401_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody401_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 12)) (some 158) ([28, 18, 40]) (some (28, sourceBody401_59, 401, 13))

def sourceBody401_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_60 sourceBody401_4

def sourceBody401_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_61 sourceBody401_0

def sourceBody401_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_58 sourceBody401_62

def sourceBody401_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_57 sourceBody401_63

def sourceBody401_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_56 sourceBody401_64

def sourceBody401_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_65

def sourceBody401_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_66

def sourceBody401_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def sourceBody401_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 42)

def sourceBody401_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody401_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 28, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 14)) (some 307) ([40, 14]) (some (40, sourceBody401_70, 401, 15))

def sourceBody401_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_71 sourceBody401_4

def sourceBody401_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_72 sourceBody401_0

def sourceBody401_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_69 sourceBody401_73

def sourceBody401_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_68 sourceBody401_74

def sourceBody401_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody401_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody401_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody401_0, 401, 16)) (some 70) ([14]) (some (14, sourceBody401_77, 401, 17))

def sourceBody401_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_78 sourceBody401_4

def sourceBody401_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_79 sourceBody401_0

def sourceBody401_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_76 sourceBody401_80

def sourceBody401_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_81

def sourceBody401_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_82

def sourceBody401_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody401_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody401_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 34) sourceBody401_86 sourceBody401_87

def sourceBody401_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_88 sourceBody401_4

def sourceBody401_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody401_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40, 14, 34, 24]

def sourceBody401_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_93 sourceBody401_0

def sourceBody401_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_92 sourceBody401_94

def sourceBody401_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_85 sourceBody401_95

def sourceBody401_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_87 sourceBody401_96

def sourceBody401_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_91 sourceBody401_97

def sourceBody401_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody401_98 sourceBody401_0

def sourceBody401_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_99 sourceBody401_4

def sourceBody401_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_100 sourceBody401_0

def sourceBody401_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_90 sourceBody401_101

def sourceBody401_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_89 sourceBody401_102

def sourceBody401_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_85 sourceBody401_103

def sourceBody401_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_84 sourceBody401_104

def sourceBody401_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_83 sourceBody401_105

def sourceBody401_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 28)

def sourceBody401_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody401_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody401_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 14, 34, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody401_0, 401, 18)) (some 162) ([44, 6]) (some (44, sourceBody401_109, 401, 19))

def sourceBody401_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_110 sourceBody401_4

def sourceBody401_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_111 sourceBody401_0

def sourceBody401_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_108 sourceBody401_112

def sourceBody401_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_107 sourceBody401_113

def sourceBody401_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 40)

def sourceBody401_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody401_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody401_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 26) sourceBody401_117 sourceBody401_118

def sourceBody401_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_119 sourceBody401_4

def sourceBody401_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody401_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody401_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44, 6, 26, 16]

def sourceBody401_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_125 sourceBody401_0

def sourceBody401_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_124 sourceBody401_126

def sourceBody401_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_123 sourceBody401_127

def sourceBody401_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_118 sourceBody401_128

def sourceBody401_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_122 sourceBody401_129

def sourceBody401_131 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody401_130 sourceBody401_0

def sourceBody401_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_131 sourceBody401_4

def sourceBody401_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_132 sourceBody401_0

def sourceBody401_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_121 sourceBody401_133

def sourceBody401_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_120 sourceBody401_134

def sourceBody401_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_116 sourceBody401_135

def sourceBody401_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_115 sourceBody401_136

def sourceBody401_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody401_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody401_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 26) sourceBody401_117 sourceBody401_118

def sourceBody401_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_140 sourceBody401_4

def sourceBody401_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody401_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 44)

def sourceBody401_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_143 sourceBody401_0

def sourceBody401_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_144 sourceBody401_0

def sourceBody401_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_142 sourceBody401_145

def sourceBody401_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_146

def sourceBody401_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody401_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_148 sourceBody401_109

def sourceBody401_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_147 sourceBody401_149

def sourceBody401_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody401_150 sourceBody401_0

def sourceBody401_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_151 sourceBody401_4

def sourceBody401_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_152 sourceBody401_0

def sourceBody401_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_121 sourceBody401_153

def sourceBody401_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_141 sourceBody401_154

def sourceBody401_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_139 sourceBody401_155

def sourceBody401_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_138 sourceBody401_156

def sourceBody401_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_137 sourceBody401_157

def sourceBody401_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody401_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody401_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody401_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 6, 26, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody401_0, 401, 20)) (some 146) ([38, 12]) (some (38, sourceBody401_161, 401, 21))

def sourceBody401_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_162 sourceBody401_4

def sourceBody401_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_163 sourceBody401_0

def sourceBody401_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_160 sourceBody401_164

def sourceBody401_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_159 sourceBody401_165

def sourceBody401_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody401_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody401_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody401_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody401_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38, 12, 32, 22]

def sourceBody401_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_171 sourceBody401_0

def sourceBody401_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_170 sourceBody401_172

def sourceBody401_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_169 sourceBody401_173

def sourceBody401_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_168 sourceBody401_174

def sourceBody401_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_167 sourceBody401_175

def sourceBody401_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_166 sourceBody401_176

def sourceBody401_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_177

def sourceBody401_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_178

def sourceBody401_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_179

def sourceBody401_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_180

def sourceBody401_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_181

def sourceBody401_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_182

def sourceBody401_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_183

def sourceBody401_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_184

def sourceBody401_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_158 sourceBody401_185

def sourceBody401_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_114 sourceBody401_186

def sourceBody401_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_187

def sourceBody401_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_188

def sourceBody401_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_189

def sourceBody401_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_190

def sourceBody401_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_191

def sourceBody401_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_192

def sourceBody401_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_193

def sourceBody401_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_194

def sourceBody401_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_106 sourceBody401_195

def sourceBody401_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_75 sourceBody401_196

def sourceBody401_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_197

def sourceBody401_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_198

def sourceBody401_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_199

def sourceBody401_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_200

def sourceBody401_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_201

def sourceBody401_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_202

def sourceBody401_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_67 sourceBody401_203

def sourceBody401_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_55 sourceBody401_204

def sourceBody401_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_205

def sourceBody401_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_206

def sourceBody401_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_49 sourceBody401_207

def sourceBody401_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_208

def sourceBody401_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_209

def sourceBody401_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_45 sourceBody401_210

def sourceBody401_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_211

def sourceBody401_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_212

def sourceBody401_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_39 sourceBody401_213

def sourceBody401_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_17 sourceBody401_214

def sourceBody401_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_215

def sourceBody401_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_216

def sourceBody401_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_7 sourceBody401_217

def sourceBody401_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_218

def sourceBody401_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody401_0 sourceBody401_219

def source401 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (401, 3, sourceBody401_220)
end InitECandidate.Proofs.WordStages
