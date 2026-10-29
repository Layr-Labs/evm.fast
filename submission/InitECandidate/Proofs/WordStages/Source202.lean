import InitECandidate.Proofs.WordStages.Source186
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody202_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody202_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody202_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 4)

def sourceBody202_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody202_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody202_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody202_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody202_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody202_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody202_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody202_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 24, 44]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody202_0, 202, 2)) (some 115) ([34, 52, 18, 36, 26, 46, 22, 42]) (some (34, sourceBody202_9, 202, 3))

def sourceBody202_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody202_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_10 sourceBody202_11

def sourceBody202_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_12 sourceBody202_0

def sourceBody202_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_8 sourceBody202_13

def sourceBody202_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_7 sourceBody202_14

def sourceBody202_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_6 sourceBody202_15

def sourceBody202_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_5 sourceBody202_16

def sourceBody202_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_4 sourceBody202_17

def sourceBody202_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_3 sourceBody202_18

def sourceBody202_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_2 sourceBody202_19

def sourceBody202_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_1 sourceBody202_20

def sourceBody202_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody202_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody202_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def sourceBody202_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody202_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody202_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody202_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody202_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody202_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 22) sourceBody202_28 sourceBody202_29

def sourceBody202_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_30 sourceBody202_11

def sourceBody202_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody202_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody202_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody202_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody202_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody202_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody202_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody202_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody202_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody202_41 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 26, 46, 22, 42, 32, 50, 20, 40]) (none)

def sourceBody202_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_41 sourceBody202_0

def sourceBody202_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_40 sourceBody202_42

def sourceBody202_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_39 sourceBody202_43

def sourceBody202_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_38 sourceBody202_44

def sourceBody202_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_37 sourceBody202_45

def sourceBody202_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_36 sourceBody202_46

def sourceBody202_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_35 sourceBody202_47

def sourceBody202_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_34 sourceBody202_48

def sourceBody202_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_33 sourceBody202_49

def sourceBody202_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody202_50 sourceBody202_0

def sourceBody202_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_51 sourceBody202_11

def sourceBody202_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_52 sourceBody202_0

def sourceBody202_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_32 sourceBody202_53

def sourceBody202_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_31 sourceBody202_54

def sourceBody202_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_27 sourceBody202_55

def sourceBody202_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_26 sourceBody202_56

def sourceBody202_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody202_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 52)

def sourceBody202_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 18)

def sourceBody202_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody202_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody202_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody202_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody202_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody202_0, 202, 4)) (some 106) ([46, 22, 42, 32, 50, 20, 40, 30]) (some (46, sourceBody202_64, 202, 5))

def sourceBody202_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_65 sourceBody202_11

def sourceBody202_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_66 sourceBody202_0

def sourceBody202_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_63 sourceBody202_67

def sourceBody202_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_40 sourceBody202_68

def sourceBody202_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_39 sourceBody202_69

def sourceBody202_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_62 sourceBody202_70

def sourceBody202_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_61 sourceBody202_71

def sourceBody202_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_60 sourceBody202_72

def sourceBody202_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_59 sourceBody202_73

def sourceBody202_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_58 sourceBody202_74

def sourceBody202_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody202_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody202_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody202_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 42) sourceBody202_27 sourceBody202_78

def sourceBody202_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_79 sourceBody202_11

def sourceBody202_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody202_82 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 46, 22, 42, 32, 50, 20, 40, 30]) (none)

def sourceBody202_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_82 sourceBody202_0

def sourceBody202_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_63 sourceBody202_83

def sourceBody202_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_40 sourceBody202_84

def sourceBody202_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_39 sourceBody202_85

def sourceBody202_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_62 sourceBody202_86

def sourceBody202_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_61 sourceBody202_87

def sourceBody202_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_60 sourceBody202_88

def sourceBody202_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_59 sourceBody202_89

def sourceBody202_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_58 sourceBody202_90

def sourceBody202_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody202_91 sourceBody202_0

def sourceBody202_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_92 sourceBody202_11

def sourceBody202_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_93 sourceBody202_0

def sourceBody202_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_81 sourceBody202_94

def sourceBody202_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_80 sourceBody202_95

def sourceBody202_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_77 sourceBody202_96

def sourceBody202_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_76 sourceBody202_97

def sourceBody202_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 22, 42, 32]

def sourceBody202_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_99 sourceBody202_0

def sourceBody202_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_61 sourceBody202_100

def sourceBody202_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_60 sourceBody202_101

def sourceBody202_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_59 sourceBody202_102

def sourceBody202_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_58 sourceBody202_103

def sourceBody202_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_98 sourceBody202_104

def sourceBody202_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_75 sourceBody202_105

def sourceBody202_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_106

def sourceBody202_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_107

def sourceBody202_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_57 sourceBody202_108

def sourceBody202_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_25 sourceBody202_109

def sourceBody202_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_110

def sourceBody202_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_24 sourceBody202_111

def sourceBody202_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_112

def sourceBody202_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_23 sourceBody202_113

def sourceBody202_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_114

def sourceBody202_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_22 sourceBody202_115

def sourceBody202_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_116

def sourceBody202_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_21 sourceBody202_117

def sourceBody202_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_118

def sourceBody202_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_119

def sourceBody202_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_120

def sourceBody202_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_121

def sourceBody202_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_122

def sourceBody202_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_123

def sourceBody202_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_124

def sourceBody202_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_125

def sourceBody202_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_126

def sourceBody202_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody202_0 sourceBody202_127

def source202 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (202, 9, sourceBody202_128)
end InitECandidate.Proofs.WordStages
