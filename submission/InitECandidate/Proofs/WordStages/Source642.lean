import InitECandidate.Proofs.WordStages.Source626
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody642_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody642_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody642_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 4)

def sourceBody642_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody642_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody642_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody642_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody642_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody642_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody642_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody642_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 24, 44]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody642_0, 642, 2)) (some 115) ([34, 52, 18, 36, 26, 46, 22, 42]) (some (34, sourceBody642_9, 642, 3))

def sourceBody642_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody642_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_10 sourceBody642_11

def sourceBody642_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_12 sourceBody642_0

def sourceBody642_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_8 sourceBody642_13

def sourceBody642_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_7 sourceBody642_14

def sourceBody642_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_6 sourceBody642_15

def sourceBody642_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_5 sourceBody642_16

def sourceBody642_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_4 sourceBody642_17

def sourceBody642_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_3 sourceBody642_18

def sourceBody642_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_2 sourceBody642_19

def sourceBody642_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_1 sourceBody642_20

def sourceBody642_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody642_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody642_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def sourceBody642_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody642_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody642_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody642_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody642_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody642_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 22) sourceBody642_28 sourceBody642_29

def sourceBody642_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_30 sourceBody642_11

def sourceBody642_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody642_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody642_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody642_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody642_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody642_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody642_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody642_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody642_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody642_41 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 26, 46, 22, 42, 32, 50, 20, 40]) (none)

def sourceBody642_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_41 sourceBody642_0

def sourceBody642_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_40 sourceBody642_42

def sourceBody642_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_39 sourceBody642_43

def sourceBody642_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_38 sourceBody642_44

def sourceBody642_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_37 sourceBody642_45

def sourceBody642_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_36 sourceBody642_46

def sourceBody642_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_35 sourceBody642_47

def sourceBody642_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_34 sourceBody642_48

def sourceBody642_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_33 sourceBody642_49

def sourceBody642_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody642_50 sourceBody642_0

def sourceBody642_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_51 sourceBody642_11

def sourceBody642_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_52 sourceBody642_0

def sourceBody642_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_32 sourceBody642_53

def sourceBody642_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_31 sourceBody642_54

def sourceBody642_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_27 sourceBody642_55

def sourceBody642_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_26 sourceBody642_56

def sourceBody642_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody642_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 52)

def sourceBody642_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 18)

def sourceBody642_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody642_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody642_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody642_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody642_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody642_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody642_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody642_0, 642, 4)) (some 106) ([46, 22, 42, 32, 50, 20, 40, 30]) (some (46, sourceBody642_66, 642, 5))

def sourceBody642_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_67 sourceBody642_11

def sourceBody642_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_68 sourceBody642_0

def sourceBody642_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_65 sourceBody642_69

def sourceBody642_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_64 sourceBody642_70

def sourceBody642_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_63 sourceBody642_71

def sourceBody642_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_62 sourceBody642_72

def sourceBody642_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_61 sourceBody642_73

def sourceBody642_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_60 sourceBody642_74

def sourceBody642_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_59 sourceBody642_75

def sourceBody642_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_58 sourceBody642_76

def sourceBody642_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody642_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody642_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody642_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 42) sourceBody642_27 sourceBody642_80

def sourceBody642_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_81 sourceBody642_11

def sourceBody642_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody642_84 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 46, 22, 42, 32, 50, 20, 40, 30]) (none)

def sourceBody642_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_84 sourceBody642_0

def sourceBody642_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_65 sourceBody642_85

def sourceBody642_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_64 sourceBody642_86

def sourceBody642_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_63 sourceBody642_87

def sourceBody642_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_62 sourceBody642_88

def sourceBody642_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_61 sourceBody642_89

def sourceBody642_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_60 sourceBody642_90

def sourceBody642_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_59 sourceBody642_91

def sourceBody642_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_58 sourceBody642_92

def sourceBody642_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody642_93 sourceBody642_0

def sourceBody642_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_94 sourceBody642_11

def sourceBody642_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_95 sourceBody642_0

def sourceBody642_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_83 sourceBody642_96

def sourceBody642_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_82 sourceBody642_97

def sourceBody642_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_79 sourceBody642_98

def sourceBody642_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_78 sourceBody642_99

def sourceBody642_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 22, 42, 32]

def sourceBody642_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_101 sourceBody642_0

def sourceBody642_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_61 sourceBody642_102

def sourceBody642_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_60 sourceBody642_103

def sourceBody642_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_59 sourceBody642_104

def sourceBody642_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_58 sourceBody642_105

def sourceBody642_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_100 sourceBody642_106

def sourceBody642_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_77 sourceBody642_107

def sourceBody642_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_108

def sourceBody642_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_109

def sourceBody642_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_57 sourceBody642_110

def sourceBody642_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_25 sourceBody642_111

def sourceBody642_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_112

def sourceBody642_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_24 sourceBody642_113

def sourceBody642_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_114

def sourceBody642_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_23 sourceBody642_115

def sourceBody642_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_116

def sourceBody642_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_22 sourceBody642_117

def sourceBody642_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_118

def sourceBody642_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_21 sourceBody642_119

def sourceBody642_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_120

def sourceBody642_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_121

def sourceBody642_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_122

def sourceBody642_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_123

def sourceBody642_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_124

def sourceBody642_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_125

def sourceBody642_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_126

def sourceBody642_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_127

def sourceBody642_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_128

def sourceBody642_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody642_0 sourceBody642_129

def source642 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (642, 9, sourceBody642_130)
end InitECandidate.Proofs.WordStages
