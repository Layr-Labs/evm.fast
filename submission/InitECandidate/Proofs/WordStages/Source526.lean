import InitECandidate.Proofs.WordStages.Source510
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody526_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody526_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody526_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22, 4, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody526_0, 526, 2)) (some 475) ([]) (some (12, sourceBody526_1, 526, 3))

def sourceBody526_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody526_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_2 sourceBody526_3

def sourceBody526_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_4 sourceBody526_0

def sourceBody526_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody526_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26, 2, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody526_0, 526, 4)) (some 475) ([]) (some (10, sourceBody526_6, 526, 5))

def sourceBody526_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_7 sourceBody526_3

def sourceBody526_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_8 sourceBody526_0

def sourceBody526_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody526_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody526_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody526_0, 526, 6)) (some 470) ([24]) (some (24, sourceBody526_11, 526, 7))

def sourceBody526_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_12 sourceBody526_3

def sourceBody526_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_13 sourceBody526_0

def sourceBody526_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_10 sourceBody526_14

def sourceBody526_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_15

def sourceBody526_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_16

def sourceBody526_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody526_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody526_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody526_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody526_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody526_0, 526, 8)) (some 102) ([24, 6, 20, 14]) (some (24, sourceBody526_11, 526, 9))

def sourceBody526_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_22 sourceBody526_3

def sourceBody526_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_23 sourceBody526_0

def sourceBody526_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_21 sourceBody526_24

def sourceBody526_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_20 sourceBody526_25

def sourceBody526_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_19 sourceBody526_26

def sourceBody526_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_18 sourceBody526_27

def sourceBody526_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody526_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody526_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody526_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody526_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 20) sourceBody526_31 sourceBody526_32

def sourceBody526_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_33 sourceBody526_3

def sourceBody526_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody526_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody526_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody526_0, 526, 10)) (some 490) ([6]) (some (6, sourceBody526_36, 526, 11))

def sourceBody526_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_37 sourceBody526_3

def sourceBody526_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_38 sourceBody526_0

def sourceBody526_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_31 sourceBody526_39

def sourceBody526_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_40

def sourceBody526_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_41

def sourceBody526_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody526_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody526_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_44 sourceBody526_0

def sourceBody526_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_43 sourceBody526_45

def sourceBody526_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_42 sourceBody526_46

def sourceBody526_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody526_47 sourceBody526_0

def sourceBody526_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_48 sourceBody526_3

def sourceBody526_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_49 sourceBody526_0

def sourceBody526_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_35 sourceBody526_50

def sourceBody526_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_34 sourceBody526_51

def sourceBody526_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_30 sourceBody526_52

def sourceBody526_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_29 sourceBody526_53

def sourceBody526_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody526_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody526_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody526_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody526_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody526_0, 526, 12)) (some 486) ([6, 20, 14, 28]) (some (6, sourceBody526_36, 526, 13))

def sourceBody526_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_59 sourceBody526_3

def sourceBody526_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_60 sourceBody526_0

def sourceBody526_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_58 sourceBody526_61

def sourceBody526_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_57 sourceBody526_62

def sourceBody526_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_56 sourceBody526_63

def sourceBody526_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_55 sourceBody526_64

def sourceBody526_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody526_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody526_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody526_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 14) sourceBody526_68 sourceBody526_30

def sourceBody526_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_69 sourceBody526_3

def sourceBody526_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody526_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody526_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody526_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_73 sourceBody526_0

def sourceBody526_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_74 sourceBody526_0

def sourceBody526_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_72 sourceBody526_75

def sourceBody526_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_76

def sourceBody526_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody526_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_78 sourceBody526_36

def sourceBody526_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_77 sourceBody526_79

def sourceBody526_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody526_80 sourceBody526_0

def sourceBody526_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_81 sourceBody526_3

def sourceBody526_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_82 sourceBody526_0

def sourceBody526_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_71 sourceBody526_83

def sourceBody526_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_70 sourceBody526_84

def sourceBody526_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_67 sourceBody526_85

def sourceBody526_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_66 sourceBody526_86

def sourceBody526_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody526_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody526_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody526_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 14

def sourceBody526_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_91 sourceBody526_0

def sourceBody526_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_90 sourceBody526_92

def sourceBody526_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_93 sourceBody526_0

def sourceBody526_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_89 sourceBody526_94

def sourceBody526_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_95

def sourceBody526_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_88 sourceBody526_96

def sourceBody526_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_97

def sourceBody526_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_87 sourceBody526_98

def sourceBody526_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody526_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_100 sourceBody526_0

def sourceBody526_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_32 sourceBody526_101

def sourceBody526_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_99 sourceBody526_102

def sourceBody526_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_65 sourceBody526_103

def sourceBody526_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_104

def sourceBody526_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_105

def sourceBody526_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_54 sourceBody526_106

def sourceBody526_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_28 sourceBody526_107

def sourceBody526_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_108

def sourceBody526_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_109

def sourceBody526_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_17 sourceBody526_110

def sourceBody526_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_9 sourceBody526_111

def sourceBody526_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_112

def sourceBody526_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_113

def sourceBody526_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_114

def sourceBody526_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_115

def sourceBody526_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_116

def sourceBody526_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_117

def sourceBody526_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_118

def sourceBody526_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_119

def sourceBody526_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_5 sourceBody526_120

def sourceBody526_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_121

def sourceBody526_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_122

def sourceBody526_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_123

def sourceBody526_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_124

def sourceBody526_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_125

def sourceBody526_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_126

def sourceBody526_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_127

def sourceBody526_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody526_0 sourceBody526_128

def source526 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (526, 1, sourceBody526_129)
end InitECandidate.Proofs.WordStages
