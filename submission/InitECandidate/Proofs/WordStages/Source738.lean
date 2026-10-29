import InitECandidate.Proofs.WordStages.Source722
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody738_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody738_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def sourceBody738_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody738_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody738_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody738_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody738_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody738_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody738_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody738_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody738_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody738_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody738_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody738_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody738_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody738_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody738_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody738_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody738_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody738_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody738_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 6, 32, 20, 46, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody738_0, 738, 2)) (some 712) ([40, 28, 54, 10, 36, 24]) (some (40, sourceBody738_19, 738, 3))

def sourceBody738_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody738_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_20 sourceBody738_21

def sourceBody738_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_22 sourceBody738_0

def sourceBody738_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_18 sourceBody738_23

def sourceBody738_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_17 sourceBody738_24

def sourceBody738_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_16 sourceBody738_25

def sourceBody738_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_15 sourceBody738_26

def sourceBody738_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_14 sourceBody738_27

def sourceBody738_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_13 sourceBody738_28

def sourceBody738_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody738_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 44)

def sourceBody738_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody738_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 38)

def sourceBody738_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def sourceBody738_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 52)

def sourceBody738_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 8)

def sourceBody738_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody738_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 18

def sourceBody738_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_38 sourceBody738_0

def sourceBody738_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_37 sourceBody738_39

def sourceBody738_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 54)

def sourceBody738_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  18

def sourceBody738_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_42 sourceBody738_0

def sourceBody738_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_41 sourceBody738_43

def sourceBody738_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody738_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  18

def sourceBody738_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_46 sourceBody738_0

def sourceBody738_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_45 sourceBody738_47

def sourceBody738_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody738_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  18

def sourceBody738_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_50 sourceBody738_0

def sourceBody738_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_49 sourceBody738_51

def sourceBody738_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody738_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 32#64])
  18

def sourceBody738_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_54 sourceBody738_0

def sourceBody738_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_53 sourceBody738_55

def sourceBody738_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 50)

def sourceBody738_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 40#64])
  18

def sourceBody738_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_58 sourceBody738_0

def sourceBody738_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_57 sourceBody738_59

def sourceBody738_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_60 sourceBody738_0

def sourceBody738_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_56 sourceBody738_61

def sourceBody738_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_52 sourceBody738_62

def sourceBody738_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_48 sourceBody738_63

def sourceBody738_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_44 sourceBody738_64

def sourceBody738_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_40 sourceBody738_65

def sourceBody738_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_36 sourceBody738_66

def sourceBody738_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_67

def sourceBody738_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_35 sourceBody738_68

def sourceBody738_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_69

def sourceBody738_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_34 sourceBody738_70

def sourceBody738_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_71

def sourceBody738_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_33 sourceBody738_72

def sourceBody738_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_73

def sourceBody738_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_32 sourceBody738_74

def sourceBody738_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_75

def sourceBody738_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_31 sourceBody738_76

def sourceBody738_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_77

def sourceBody738_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_30 sourceBody738_78

def sourceBody738_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_79

def sourceBody738_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody738_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 56)

def sourceBody738_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody738_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def sourceBody738_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody738_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 46)

def sourceBody738_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def sourceBody738_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_87 sourceBody738_66

def sourceBody738_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_88

def sourceBody738_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_86 sourceBody738_89

def sourceBody738_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_90

def sourceBody738_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_85 sourceBody738_91

def sourceBody738_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_92

def sourceBody738_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_84 sourceBody738_93

def sourceBody738_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_94

def sourceBody738_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_83 sourceBody738_95

def sourceBody738_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_96

def sourceBody738_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_82 sourceBody738_97

def sourceBody738_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_98

def sourceBody738_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_81 sourceBody738_99

def sourceBody738_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_100

def sourceBody738_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_80 sourceBody738_101

def sourceBody738_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody738_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40]

def sourceBody738_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_104 sourceBody738_0

def sourceBody738_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_103 sourceBody738_105

def sourceBody738_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_102 sourceBody738_106

def sourceBody738_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_29 sourceBody738_107

def sourceBody738_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_108

def sourceBody738_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_109

def sourceBody738_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_110

def sourceBody738_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_111

def sourceBody738_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_112

def sourceBody738_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_113

def sourceBody738_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_114

def sourceBody738_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_115

def sourceBody738_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_116

def sourceBody738_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_117

def sourceBody738_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_118

def sourceBody738_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_119

def sourceBody738_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_12 sourceBody738_120

def sourceBody738_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_121

def sourceBody738_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_11 sourceBody738_122

def sourceBody738_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_123

def sourceBody738_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_10 sourceBody738_124

def sourceBody738_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_125

def sourceBody738_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_9 sourceBody738_126

def sourceBody738_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_127

def sourceBody738_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_8 sourceBody738_128

def sourceBody738_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_129

def sourceBody738_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_7 sourceBody738_130

def sourceBody738_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_131

def sourceBody738_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_6 sourceBody738_132

def sourceBody738_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_133

def sourceBody738_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_5 sourceBody738_134

def sourceBody738_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_135

def sourceBody738_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_4 sourceBody738_136

def sourceBody738_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_137

def sourceBody738_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_3 sourceBody738_138

def sourceBody738_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_139

def sourceBody738_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_2 sourceBody738_140

def sourceBody738_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_141

def sourceBody738_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_1 sourceBody738_142

def sourceBody738_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody738_0 sourceBody738_143

def source738 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (738, 3, sourceBody738_144)
end InitECandidate.Proofs.WordStages
