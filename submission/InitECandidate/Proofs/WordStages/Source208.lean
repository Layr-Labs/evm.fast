import InitECandidate.Proofs.WordStages.Source192
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody208_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody208_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody208_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody208_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody208_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def sourceBody208_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody208_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 32) sourceBody208_10 sourceBody208_8

def sourceBody208_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_11 sourceBody208_7

def sourceBody208_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody208_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody208_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody208_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_15 sourceBody208_0

def sourceBody208_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_16 sourceBody208_0

def sourceBody208_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_14 sourceBody208_17

def sourceBody208_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_18

def sourceBody208_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 38)

def sourceBody208_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody208_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 32) sourceBody208_10 sourceBody208_8

def sourceBody208_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_22 sourceBody208_7

def sourceBody208_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody208_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody208_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody208_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody208_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody208_29 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), sourceBody208_0, 208, 2)) (some 207) ([46, 18, 32, 24]) (some (46, sourceBody208_28, 208, 3))

def sourceBody208_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_29 sourceBody208_7

def sourceBody208_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_30 sourceBody208_0

def sourceBody208_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_27 sourceBody208_31

def sourceBody208_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_26 sourceBody208_32

def sourceBody208_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_25 sourceBody208_33

def sourceBody208_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_24 sourceBody208_34

def sourceBody208_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody208_35 sourceBody208_0

def sourceBody208_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_36 sourceBody208_7

def sourceBody208_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_37 sourceBody208_0

def sourceBody208_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_13 sourceBody208_38

def sourceBody208_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_23 sourceBody208_39

def sourceBody208_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_21 sourceBody208_40

def sourceBody208_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_20 sourceBody208_41

def sourceBody208_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_19 sourceBody208_42

def sourceBody208_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody208_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody208_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody208_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody208_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody208_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody208_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), sourceBody208_0, 208, 4)) (some 104) ([18, 32, 24, 40, 20]) (some (18, sourceBody208_49, 208, 5))

def sourceBody208_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_50 sourceBody208_7

def sourceBody208_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_51 sourceBody208_0

def sourceBody208_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_48 sourceBody208_52

def sourceBody208_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_47 sourceBody208_53

def sourceBody208_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_46 sourceBody208_54

def sourceBody208_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_45 sourceBody208_55

def sourceBody208_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_44 sourceBody208_56

def sourceBody208_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody208_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody208_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody208_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 24) sourceBody208_21 sourceBody208_60

def sourceBody208_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_61 sourceBody208_7

def sourceBody208_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody208_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody208_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody208_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody208_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody208_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody208_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody208_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody208_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody208_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 26, 42, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody208_0, 208, 6)) (some 206) ([18, 32, 24, 40, 20, 36, 28, 44]) (some (18, sourceBody208_49, 208, 7))

def sourceBody208_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_72 sourceBody208_7

def sourceBody208_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_73 sourceBody208_0

def sourceBody208_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_71 sourceBody208_74

def sourceBody208_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_70 sourceBody208_75

def sourceBody208_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_69 sourceBody208_76

def sourceBody208_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_68 sourceBody208_77

def sourceBody208_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_67 sourceBody208_78

def sourceBody208_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_66 sourceBody208_79

def sourceBody208_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_65 sourceBody208_80

def sourceBody208_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_64 sourceBody208_81

def sourceBody208_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody208_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_83 sourceBody208_0

def sourceBody208_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_84 sourceBody208_0

def sourceBody208_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_82 sourceBody208_85

def sourceBody208_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody208_86 sourceBody208_0

def sourceBody208_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_87 sourceBody208_7

def sourceBody208_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_88 sourceBody208_0

def sourceBody208_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_63 sourceBody208_89

def sourceBody208_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_62 sourceBody208_90

def sourceBody208_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_59 sourceBody208_91

def sourceBody208_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_58 sourceBody208_92

def sourceBody208_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_57 sourceBody208_93

def sourceBody208_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_94

def sourceBody208_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_95

def sourceBody208_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_43 sourceBody208_96

def sourceBody208_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody208_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_97 sourceBody208_98

def sourceBody208_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody208_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody208_99 sourceBody208_100

def sourceBody208_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_101 sourceBody208_7

def sourceBody208_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_102 sourceBody208_0

def sourceBody208_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_13 sourceBody208_103

def sourceBody208_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_12 sourceBody208_104

def sourceBody208_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_9 sourceBody208_105

def sourceBody208_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_8 sourceBody208_106

def sourceBody208_108 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) sourceBody208_107 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody208_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_108 sourceBody208_7

def sourceBody208_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_7 sourceBody208_109

def sourceBody208_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 18, 32, 24]

def sourceBody208_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_111 sourceBody208_0

def sourceBody208_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_27 sourceBody208_112

def sourceBody208_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_26 sourceBody208_113

def sourceBody208_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_25 sourceBody208_114

def sourceBody208_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_24 sourceBody208_115

def sourceBody208_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_110 sourceBody208_116

def sourceBody208_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_6 sourceBody208_117

def sourceBody208_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_118

def sourceBody208_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_5 sourceBody208_119

def sourceBody208_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_120

def sourceBody208_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_4 sourceBody208_121

def sourceBody208_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_122

def sourceBody208_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_3 sourceBody208_123

def sourceBody208_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_124

def sourceBody208_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_2 sourceBody208_125

def sourceBody208_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_126

def sourceBody208_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_1 sourceBody208_127

def sourceBody208_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody208_0 sourceBody208_128

def source208 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (208, 9, sourceBody208_129)
end InitECandidate.Proofs.WordStages
