import InitECandidate.Proofs.WordStages.Source118
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody134_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.var 16])

def sourceBody134_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody134_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody134_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody134_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 50) sourceBody134_2 sourceBody134_3

def sourceBody134_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody134_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_4 sourceBody134_5

def sourceBody134_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody134_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody134_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody134_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40, 30, 50, 24]

def sourceBody134_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody134_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_10 sourceBody134_11

def sourceBody134_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_9 sourceBody134_12

def sourceBody134_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_1 sourceBody134_13

def sourceBody134_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_3 sourceBody134_14

def sourceBody134_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_8 sourceBody134_15

def sourceBody134_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody134_16 sourceBody134_11

def sourceBody134_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_17 sourceBody134_5

def sourceBody134_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_18 sourceBody134_11

def sourceBody134_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_7 sourceBody134_19

def sourceBody134_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_6 sourceBody134_20

def sourceBody134_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_1 sourceBody134_21

def sourceBody134_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_0 sourceBody134_22

def sourceBody134_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody134_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody134_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def sourceBody134_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody134_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody134_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 30, 50, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody134_11, 134, 2)) (some 132) ([46, 36, 56, 18]) (some (46, sourceBody134_28, 134, 3))

def sourceBody134_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_29 sourceBody134_5

def sourceBody134_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_30 sourceBody134_11

def sourceBody134_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_27 sourceBody134_31

def sourceBody134_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_26 sourceBody134_32

def sourceBody134_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_25 sourceBody134_33

def sourceBody134_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_24 sourceBody134_34

def sourceBody134_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody134_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody134_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody134_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody134_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody134_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody134_11, 134, 4)) (some 132) ([38, 28, 48, 22]) (some (38, sourceBody134_40, 134, 5))

def sourceBody134_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_41 sourceBody134_5

def sourceBody134_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_42 sourceBody134_11

def sourceBody134_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_39 sourceBody134_43

def sourceBody134_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_38 sourceBody134_44

def sourceBody134_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_37 sourceBody134_45

def sourceBody134_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_36 sourceBody134_46

def sourceBody134_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody134_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody134_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody134_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody134_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody134_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody134_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def sourceBody134_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody134_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody134_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody134_11, 134, 6)) (some 131) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody134_56, 134, 7))

def sourceBody134_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_57 sourceBody134_5

def sourceBody134_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_58 sourceBody134_11

def sourceBody134_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_55 sourceBody134_59

def sourceBody134_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_54 sourceBody134_60

def sourceBody134_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_53 sourceBody134_61

def sourceBody134_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_52 sourceBody134_62

def sourceBody134_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_51 sourceBody134_63

def sourceBody134_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_50 sourceBody134_64

def sourceBody134_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_49 sourceBody134_65

def sourceBody134_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_48 sourceBody134_66

def sourceBody134_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 63#64))

def sourceBody134_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody134_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody134_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody134_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 54) sourceBody134_70 sourceBody134_71

def sourceBody134_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_72 sourceBody134_5

def sourceBody134_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody134_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody134_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody134_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody134_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody134_79 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 44, 34, 54, 20]) (none)

def sourceBody134_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_79 sourceBody134_11

def sourceBody134_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_78 sourceBody134_80

def sourceBody134_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_77 sourceBody134_81

def sourceBody134_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_76 sourceBody134_82

def sourceBody134_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_75 sourceBody134_83

def sourceBody134_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody134_84 sourceBody134_11

def sourceBody134_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_85 sourceBody134_5

def sourceBody134_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_86 sourceBody134_11

def sourceBody134_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_74 sourceBody134_87

def sourceBody134_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_73 sourceBody134_88

def sourceBody134_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_69 sourceBody134_89

def sourceBody134_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_68 sourceBody134_90

def sourceBody134_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44, 34, 54, 20]

def sourceBody134_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_92 sourceBody134_11

def sourceBody134_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_78 sourceBody134_93

def sourceBody134_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_77 sourceBody134_94

def sourceBody134_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_76 sourceBody134_95

def sourceBody134_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_75 sourceBody134_96

def sourceBody134_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_91 sourceBody134_97

def sourceBody134_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_67 sourceBody134_98

def sourceBody134_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_99

def sourceBody134_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_100

def sourceBody134_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_101

def sourceBody134_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_102

def sourceBody134_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_103

def sourceBody134_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_104

def sourceBody134_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_105

def sourceBody134_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_106

def sourceBody134_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_47 sourceBody134_107

def sourceBody134_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_108

def sourceBody134_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_109

def sourceBody134_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_110

def sourceBody134_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_111

def sourceBody134_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_112

def sourceBody134_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_113

def sourceBody134_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_114

def sourceBody134_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_115

def sourceBody134_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_35 sourceBody134_116

def sourceBody134_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_117

def sourceBody134_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_118

def sourceBody134_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_119

def sourceBody134_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_120

def sourceBody134_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_121

def sourceBody134_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_122

def sourceBody134_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_123

def sourceBody134_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_11 sourceBody134_124

def sourceBody134_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody134_23 sourceBody134_125

def source134 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (134, 9, sourceBody134_126)
end InitECandidate.Proofs.WordStages
