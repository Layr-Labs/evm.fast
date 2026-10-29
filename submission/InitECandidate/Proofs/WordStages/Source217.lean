import InitECandidate.Proofs.WordStages.Source201
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody217_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody217_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody217_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody217_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody217_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def sourceBody217_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody217_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 32) sourceBody217_10 sourceBody217_8

def sourceBody217_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_11 sourceBody217_7

def sourceBody217_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody217_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody217_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody217_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_15 sourceBody217_0

def sourceBody217_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_16 sourceBody217_0

def sourceBody217_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_14 sourceBody217_17

def sourceBody217_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_18

def sourceBody217_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 38)

def sourceBody217_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody217_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 32) sourceBody217_10 sourceBody217_8

def sourceBody217_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_22 sourceBody217_7

def sourceBody217_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody217_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody217_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody217_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody217_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody217_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody217_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody217_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody217_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody217_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 26, 42, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody217_0, 217, 2)) (some 215) ([46, 18, 32, 24, 40, 20, 36, 28]) (some (46, sourceBody217_32, 217, 3))

def sourceBody217_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_33 sourceBody217_7

def sourceBody217_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_34 sourceBody217_0

def sourceBody217_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_31 sourceBody217_35

def sourceBody217_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_30 sourceBody217_36

def sourceBody217_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_29 sourceBody217_37

def sourceBody217_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_28 sourceBody217_38

def sourceBody217_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_27 sourceBody217_39

def sourceBody217_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_26 sourceBody217_40

def sourceBody217_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_25 sourceBody217_41

def sourceBody217_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_24 sourceBody217_42

def sourceBody217_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody217_43 sourceBody217_0

def sourceBody217_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_44 sourceBody217_7

def sourceBody217_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_45 sourceBody217_0

def sourceBody217_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_13 sourceBody217_46

def sourceBody217_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_23 sourceBody217_47

def sourceBody217_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_21 sourceBody217_48

def sourceBody217_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_20 sourceBody217_49

def sourceBody217_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_19 sourceBody217_50

def sourceBody217_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody217_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody217_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody217_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody217_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody217_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody217_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody217_0, 217, 4)) (some 104) ([18, 32, 24, 40, 20]) (some (18, sourceBody217_57, 217, 5))

def sourceBody217_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_58 sourceBody217_7

def sourceBody217_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_59 sourceBody217_0

def sourceBody217_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_56 sourceBody217_60

def sourceBody217_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_55 sourceBody217_61

def sourceBody217_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_54 sourceBody217_62

def sourceBody217_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_53 sourceBody217_63

def sourceBody217_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_52 sourceBody217_64

def sourceBody217_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody217_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody217_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody217_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 24) sourceBody217_21 sourceBody217_68

def sourceBody217_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_69 sourceBody217_7

def sourceBody217_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody217_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody217_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody217_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody217_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody217_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody217_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody217_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody217_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody217_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 26, 42, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody217_0, 217, 6)) (some 215) ([18, 32, 24, 40, 20, 36, 28, 44]) (some (18, sourceBody217_57, 217, 7))

def sourceBody217_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_80 sourceBody217_7

def sourceBody217_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_81 sourceBody217_0

def sourceBody217_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_79 sourceBody217_82

def sourceBody217_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_78 sourceBody217_83

def sourceBody217_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_77 sourceBody217_84

def sourceBody217_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_76 sourceBody217_85

def sourceBody217_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_75 sourceBody217_86

def sourceBody217_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_74 sourceBody217_87

def sourceBody217_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_73 sourceBody217_88

def sourceBody217_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_72 sourceBody217_89

def sourceBody217_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody217_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_91 sourceBody217_0

def sourceBody217_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_92 sourceBody217_0

def sourceBody217_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_90 sourceBody217_93

def sourceBody217_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody217_94 sourceBody217_0

def sourceBody217_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_95 sourceBody217_7

def sourceBody217_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_96 sourceBody217_0

def sourceBody217_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_71 sourceBody217_97

def sourceBody217_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_70 sourceBody217_98

def sourceBody217_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_67 sourceBody217_99

def sourceBody217_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_66 sourceBody217_100

def sourceBody217_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_65 sourceBody217_101

def sourceBody217_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_102

def sourceBody217_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_103

def sourceBody217_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_51 sourceBody217_104

def sourceBody217_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody217_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_105 sourceBody217_106

def sourceBody217_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody217_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody217_107 sourceBody217_108

def sourceBody217_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_109 sourceBody217_7

def sourceBody217_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_110 sourceBody217_0

def sourceBody217_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_13 sourceBody217_111

def sourceBody217_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_12 sourceBody217_112

def sourceBody217_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_9 sourceBody217_113

def sourceBody217_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_8 sourceBody217_114

def sourceBody217_116 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody217_115 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody217_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_116 sourceBody217_7

def sourceBody217_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_7 sourceBody217_117

def sourceBody217_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 18, 32, 24]

def sourceBody217_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_119 sourceBody217_0

def sourceBody217_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_27 sourceBody217_120

def sourceBody217_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_26 sourceBody217_121

def sourceBody217_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_25 sourceBody217_122

def sourceBody217_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_24 sourceBody217_123

def sourceBody217_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_118 sourceBody217_124

def sourceBody217_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_6 sourceBody217_125

def sourceBody217_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_126

def sourceBody217_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_5 sourceBody217_127

def sourceBody217_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_128

def sourceBody217_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_4 sourceBody217_129

def sourceBody217_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_130

def sourceBody217_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_3 sourceBody217_131

def sourceBody217_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_132

def sourceBody217_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_2 sourceBody217_133

def sourceBody217_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_134

def sourceBody217_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_1 sourceBody217_135

def sourceBody217_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody217_0 sourceBody217_136

def source217 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (217, 9, sourceBody217_137)
end InitECandidate.Proofs.WordStages
