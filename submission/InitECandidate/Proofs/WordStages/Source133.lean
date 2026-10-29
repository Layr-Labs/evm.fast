import InitECandidate.Proofs.WordStages.Source117
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody133_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.var 16])

def sourceBody133_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody133_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody133_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody133_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 50) sourceBody133_2 sourceBody133_3

def sourceBody133_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody133_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_4 sourceBody133_5

def sourceBody133_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody133_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody133_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody133_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40, 30, 50, 24]

def sourceBody133_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody133_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_10 sourceBody133_11

def sourceBody133_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_9 sourceBody133_12

def sourceBody133_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_1 sourceBody133_13

def sourceBody133_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_3 sourceBody133_14

def sourceBody133_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_8 sourceBody133_15

def sourceBody133_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody133_16 sourceBody133_11

def sourceBody133_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_17 sourceBody133_5

def sourceBody133_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_18 sourceBody133_11

def sourceBody133_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_7 sourceBody133_19

def sourceBody133_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_6 sourceBody133_20

def sourceBody133_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_1 sourceBody133_21

def sourceBody133_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_0 sourceBody133_22

def sourceBody133_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody133_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody133_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def sourceBody133_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody133_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody133_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 30, 50, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody133_11, 133, 2)) (some 132) ([46, 36, 56, 18]) (some (46, sourceBody133_28, 133, 3))

def sourceBody133_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_29 sourceBody133_5

def sourceBody133_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_30 sourceBody133_11

def sourceBody133_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_27 sourceBody133_31

def sourceBody133_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_26 sourceBody133_32

def sourceBody133_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_25 sourceBody133_33

def sourceBody133_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_24 sourceBody133_34

def sourceBody133_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody133_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody133_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody133_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody133_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody133_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody133_11, 133, 4)) (some 132) ([38, 28, 48, 22]) (some (38, sourceBody133_40, 133, 5))

def sourceBody133_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_41 sourceBody133_5

def sourceBody133_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_42 sourceBody133_11

def sourceBody133_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_39 sourceBody133_43

def sourceBody133_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_38 sourceBody133_44

def sourceBody133_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_37 sourceBody133_45

def sourceBody133_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_36 sourceBody133_46

def sourceBody133_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody133_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody133_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody133_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody133_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody133_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody133_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def sourceBody133_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody133_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody133_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody133_11, 133, 6)) (some 130) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody133_56, 133, 7))

def sourceBody133_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_57 sourceBody133_5

def sourceBody133_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_58 sourceBody133_11

def sourceBody133_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_55 sourceBody133_59

def sourceBody133_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_54 sourceBody133_60

def sourceBody133_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_53 sourceBody133_61

def sourceBody133_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_52 sourceBody133_62

def sourceBody133_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_51 sourceBody133_63

def sourceBody133_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_50 sourceBody133_64

def sourceBody133_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_49 sourceBody133_65

def sourceBody133_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_48 sourceBody133_66

def sourceBody133_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16])
    (Flapjack.WordLangExpHOL.const 63#64))

def sourceBody133_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody133_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody133_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody133_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 54) sourceBody133_70 sourceBody133_71

def sourceBody133_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_72 sourceBody133_5

def sourceBody133_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody133_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody133_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody133_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody133_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody133_79 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 44, 34, 54, 20]) (none)

def sourceBody133_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_79 sourceBody133_11

def sourceBody133_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_78 sourceBody133_80

def sourceBody133_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_77 sourceBody133_81

def sourceBody133_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_76 sourceBody133_82

def sourceBody133_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_75 sourceBody133_83

def sourceBody133_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody133_84 sourceBody133_11

def sourceBody133_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_85 sourceBody133_5

def sourceBody133_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_86 sourceBody133_11

def sourceBody133_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_74 sourceBody133_87

def sourceBody133_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_73 sourceBody133_88

def sourceBody133_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_69 sourceBody133_89

def sourceBody133_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_68 sourceBody133_90

def sourceBody133_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44, 34, 54, 20]

def sourceBody133_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_92 sourceBody133_11

def sourceBody133_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_78 sourceBody133_93

def sourceBody133_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_77 sourceBody133_94

def sourceBody133_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_76 sourceBody133_95

def sourceBody133_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_75 sourceBody133_96

def sourceBody133_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_91 sourceBody133_97

def sourceBody133_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_67 sourceBody133_98

def sourceBody133_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_99

def sourceBody133_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_100

def sourceBody133_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_101

def sourceBody133_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_102

def sourceBody133_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_103

def sourceBody133_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_104

def sourceBody133_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_105

def sourceBody133_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_106

def sourceBody133_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_47 sourceBody133_107

def sourceBody133_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_108

def sourceBody133_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_109

def sourceBody133_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_110

def sourceBody133_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_111

def sourceBody133_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_112

def sourceBody133_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_113

def sourceBody133_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_114

def sourceBody133_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_115

def sourceBody133_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_35 sourceBody133_116

def sourceBody133_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_117

def sourceBody133_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_118

def sourceBody133_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_119

def sourceBody133_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_120

def sourceBody133_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_121

def sourceBody133_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_122

def sourceBody133_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_123

def sourceBody133_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_11 sourceBody133_124

def sourceBody133_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody133_23 sourceBody133_125

def source133 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (133, 9, sourceBody133_126)
end InitECandidate.Proofs.WordStages
