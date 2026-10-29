import InitECandidate.Proofs.WordStages.Source404
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody420_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody420_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody420_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody420_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody420_0, 420, 2)) (some 406) ([16]) (some (16, sourceBody420_2, 420, 3))

def sourceBody420_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody420_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_3 sourceBody420_4

def sourceBody420_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_5 sourceBody420_0

def sourceBody420_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_1 sourceBody420_6

def sourceBody420_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody420_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody420_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody420_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody420_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 22) sourceBody420_10 sourceBody420_11

def sourceBody420_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_12 sourceBody420_4

def sourceBody420_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody420_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody420_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody420_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_16 sourceBody420_0

def sourceBody420_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_17 sourceBody420_0

def sourceBody420_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_15 sourceBody420_18

def sourceBody420_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_19

def sourceBody420_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody420_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_21 sourceBody420_2

def sourceBody420_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_20 sourceBody420_22

def sourceBody420_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody420_23 sourceBody420_0

def sourceBody420_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_24 sourceBody420_4

def sourceBody420_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_25 sourceBody420_0

def sourceBody420_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_14 sourceBody420_26

def sourceBody420_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_13 sourceBody420_27

def sourceBody420_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_9 sourceBody420_28

def sourceBody420_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_8 sourceBody420_29

def sourceBody420_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody420_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody420_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody420_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody420_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody420_0, 420, 4)) (some 186) ([32, 18]) (some (32, sourceBody420_34, 420, 5))

def sourceBody420_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_35 sourceBody420_4

def sourceBody420_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_36 sourceBody420_0

def sourceBody420_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_33 sourceBody420_37

def sourceBody420_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_32 sourceBody420_38

def sourceBody420_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody420_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody420_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody420_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody420_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 24) sourceBody420_42 sourceBody420_43

def sourceBody420_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_44 sourceBody420_4

def sourceBody420_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody420_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody420_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody420_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody420_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody420_0, 420, 6)) (some 182) ([18, 30]) (some (18, sourceBody420_49, 420, 7))

def sourceBody420_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_50 sourceBody420_4

def sourceBody420_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_51 sourceBody420_0

def sourceBody420_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_48 sourceBody420_52

def sourceBody420_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_47 sourceBody420_53

def sourceBody420_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody420_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody420_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody420_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody420_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody420_0, 420, 8)) (some 388) ([30, 24, 36]) (some (30, sourceBody420_58, 420, 9))

def sourceBody420_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_59 sourceBody420_4

def sourceBody420_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_60 sourceBody420_0

def sourceBody420_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_57 sourceBody420_61

def sourceBody420_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_56 sourceBody420_62

def sourceBody420_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_55 sourceBody420_63

def sourceBody420_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_64

def sourceBody420_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_65

def sourceBody420_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_54 sourceBody420_66

def sourceBody420_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody420_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_68 sourceBody420_0

def sourceBody420_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_69 sourceBody420_0

def sourceBody420_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody420_67 sourceBody420_70

def sourceBody420_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_71 sourceBody420_4

def sourceBody420_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_72 sourceBody420_0

def sourceBody420_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_46 sourceBody420_73

def sourceBody420_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_45 sourceBody420_74

def sourceBody420_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_41 sourceBody420_75

def sourceBody420_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_40 sourceBody420_76

def sourceBody420_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody420_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody420_0, 420, 10)) (some 68) ([30]) (some (30, sourceBody420_58, 420, 11))

def sourceBody420_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_79 sourceBody420_4

def sourceBody420_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_80 sourceBody420_0

def sourceBody420_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_78 sourceBody420_81

def sourceBody420_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody420_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody420_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody420_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody420_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody420_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody420_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 20

def sourceBody420_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_89 sourceBody420_0

def sourceBody420_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_88 sourceBody420_90

def sourceBody420_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody420_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 8#64])
  20

def sourceBody420_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_93 sourceBody420_0

def sourceBody420_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_92 sourceBody420_94

def sourceBody420_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody420_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 16#64])
  20

def sourceBody420_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_97 sourceBody420_0

def sourceBody420_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_96 sourceBody420_98

def sourceBody420_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody420_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 24#64])
  20

def sourceBody420_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_101 sourceBody420_0

def sourceBody420_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_100 sourceBody420_102

def sourceBody420_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_103 sourceBody420_0

def sourceBody420_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_99 sourceBody420_104

def sourceBody420_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_95 sourceBody420_105

def sourceBody420_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_91 sourceBody420_106

def sourceBody420_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_87 sourceBody420_107

def sourceBody420_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_108

def sourceBody420_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_86 sourceBody420_109

def sourceBody420_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_110

def sourceBody420_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_85 sourceBody420_111

def sourceBody420_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_112

def sourceBody420_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_84 sourceBody420_113

def sourceBody420_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_114

def sourceBody420_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_83 sourceBody420_115

def sourceBody420_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_116

def sourceBody420_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 32)

def sourceBody420_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody420_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody420_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody420_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody420_0, 420, 12)) (some 388) ([24, 36, 14]) (some (24, sourceBody420_121, 420, 13))

def sourceBody420_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_122 sourceBody420_4

def sourceBody420_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_123 sourceBody420_0

def sourceBody420_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_120 sourceBody420_124

def sourceBody420_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_119 sourceBody420_125

def sourceBody420_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_118 sourceBody420_126

def sourceBody420_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_127

def sourceBody420_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_128

def sourceBody420_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_117 sourceBody420_129

def sourceBody420_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody420_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_131 sourceBody420_0

def sourceBody420_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_43 sourceBody420_132

def sourceBody420_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_130 sourceBody420_133

def sourceBody420_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_82 sourceBody420_134

def sourceBody420_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_135

def sourceBody420_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_136

def sourceBody420_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_77 sourceBody420_137

def sourceBody420_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_138

def sourceBody420_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_139

def sourceBody420_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_39 sourceBody420_140

def sourceBody420_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_141

def sourceBody420_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_142

def sourceBody420_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_143

def sourceBody420_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_144

def sourceBody420_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_31 sourceBody420_145

def sourceBody420_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_146

def sourceBody420_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_30 sourceBody420_147

def sourceBody420_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_7 sourceBody420_148

def sourceBody420_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_149

def sourceBody420_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody420_0 sourceBody420_150

def source420 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (420, 7, sourceBody420_151)
end InitECandidate.Proofs.WordStages
