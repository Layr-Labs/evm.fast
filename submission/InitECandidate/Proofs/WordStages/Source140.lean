import InitECandidate.Proofs.WordStages.Source124
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody140_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody140_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody140_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 2)

def sourceBody140_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody140_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody140_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody140_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody140_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody140_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody140_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody140_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody140_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody140_0, 140, 2)) (some 138) ([26, 46, 22, 42]) (some (26, sourceBody140_13, 140, 3))

def sourceBody140_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody140_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_14 sourceBody140_15

def sourceBody140_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_16 sourceBody140_0

def sourceBody140_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_12 sourceBody140_17

def sourceBody140_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_11 sourceBody140_18

def sourceBody140_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_10 sourceBody140_19

def sourceBody140_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_9 sourceBody140_20

def sourceBody140_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody140_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody140_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody140_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 42) sourceBody140_25 sourceBody140_26

def sourceBody140_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_27 sourceBody140_15

def sourceBody140_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody140_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody140_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody140_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody140_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody140_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody140_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody140_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody140_0, 140, 4)) (some 104) ([22, 42, 32, 52, 20]) (some (22, sourceBody140_35, 140, 5))

def sourceBody140_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_36 sourceBody140_15

def sourceBody140_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_37 sourceBody140_0

def sourceBody140_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_34 sourceBody140_38

def sourceBody140_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_33 sourceBody140_39

def sourceBody140_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_32 sourceBody140_40

def sourceBody140_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_31 sourceBody140_41

def sourceBody140_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_30 sourceBody140_42

def sourceBody140_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody140_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody140_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody140_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody140_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 32) sourceBody140_46 sourceBody140_47

def sourceBody140_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_48 sourceBody140_15

def sourceBody140_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 42)

def sourceBody140_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody140_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 28)

def sourceBody140_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 48)

def sourceBody140_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 24)

def sourceBody140_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 44)

def sourceBody140_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody140_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def sourceBody140_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 18)

def sourceBody140_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody140_0, 140, 6)) (some 120) ([22, 42, 32, 52, 20, 40, 30, 50]) (some (22, sourceBody140_35, 140, 7))

def sourceBody140_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_59 sourceBody140_15

def sourceBody140_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_60 sourceBody140_0

def sourceBody140_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_58 sourceBody140_61

def sourceBody140_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_57 sourceBody140_62

def sourceBody140_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_56 sourceBody140_63

def sourceBody140_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_55 sourceBody140_64

def sourceBody140_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_54 sourceBody140_65

def sourceBody140_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_53 sourceBody140_66

def sourceBody140_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_52 sourceBody140_67

def sourceBody140_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_51 sourceBody140_68

def sourceBody140_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody140_69 sourceBody140_0

def sourceBody140_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_70 sourceBody140_15

def sourceBody140_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_71 sourceBody140_0

def sourceBody140_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_50 sourceBody140_72

def sourceBody140_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_49 sourceBody140_73

def sourceBody140_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_45 sourceBody140_74

def sourceBody140_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_44 sourceBody140_75

def sourceBody140_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody140_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody140_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_78 sourceBody140_0

def sourceBody140_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_79 sourceBody140_0

def sourceBody140_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_77 sourceBody140_80

def sourceBody140_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_81

def sourceBody140_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_76 sourceBody140_82

def sourceBody140_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody140_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody140_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 42 (Flapjack.WordRegImm.reg 32) sourceBody140_46 sourceBody140_47

def sourceBody140_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_86 sourceBody140_15

def sourceBody140_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 44)

def sourceBody140_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody140_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 54)

def sourceBody140_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 18)

def sourceBody140_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 34, 54, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody140_0, 140, 8)) (some 120) ([22, 42, 32, 52, 20, 40, 30, 50]) (some (22, sourceBody140_35, 140, 9))

def sourceBody140_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_92 sourceBody140_15

def sourceBody140_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_93 sourceBody140_0

def sourceBody140_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_58 sourceBody140_94

def sourceBody140_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_57 sourceBody140_95

def sourceBody140_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_56 sourceBody140_96

def sourceBody140_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_55 sourceBody140_97

def sourceBody140_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_91 sourceBody140_98

def sourceBody140_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_90 sourceBody140_99

def sourceBody140_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_89 sourceBody140_100

def sourceBody140_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_88 sourceBody140_101

def sourceBody140_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody140_102 sourceBody140_0

def sourceBody140_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_103 sourceBody140_15

def sourceBody140_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_104 sourceBody140_0

def sourceBody140_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_50 sourceBody140_105

def sourceBody140_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_87 sourceBody140_106

def sourceBody140_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_85 sourceBody140_107

def sourceBody140_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_84 sourceBody140_108

def sourceBody140_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_83 sourceBody140_109

def sourceBody140_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_43 sourceBody140_110

def sourceBody140_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_111

def sourceBody140_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_112

def sourceBody140_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody140_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_113 sourceBody140_114

def sourceBody140_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody140_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody140_115 sourceBody140_116

def sourceBody140_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_117 sourceBody140_15

def sourceBody140_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_118 sourceBody140_0

def sourceBody140_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_29 sourceBody140_119

def sourceBody140_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_28 sourceBody140_120

def sourceBody140_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_24 sourceBody140_121

def sourceBody140_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_23 sourceBody140_122

def sourceBody140_124 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody140_123 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody140_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_124 sourceBody140_15

def sourceBody140_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_15 sourceBody140_125

def sourceBody140_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 38)

def sourceBody140_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody140_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody140_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody140_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 22, 42, 32]

def sourceBody140_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_131 sourceBody140_0

def sourceBody140_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_130 sourceBody140_132

def sourceBody140_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_129 sourceBody140_133

def sourceBody140_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_128 sourceBody140_134

def sourceBody140_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_127 sourceBody140_135

def sourceBody140_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_126 sourceBody140_136

def sourceBody140_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_22 sourceBody140_137

def sourceBody140_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_138

def sourceBody140_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_21 sourceBody140_139

def sourceBody140_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_140

def sourceBody140_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_141

def sourceBody140_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_8 sourceBody140_142

def sourceBody140_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_143

def sourceBody140_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_7 sourceBody140_144

def sourceBody140_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_145

def sourceBody140_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_6 sourceBody140_146

def sourceBody140_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_147

def sourceBody140_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_5 sourceBody140_148

def sourceBody140_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_149

def sourceBody140_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_4 sourceBody140_150

def sourceBody140_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_151

def sourceBody140_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_3 sourceBody140_152

def sourceBody140_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_153

def sourceBody140_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_2 sourceBody140_154

def sourceBody140_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_155

def sourceBody140_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_1 sourceBody140_156

def sourceBody140_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody140_0 sourceBody140_157

def source140 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (140, 9, sourceBody140_158)
end InitECandidate.Proofs.WordStages
