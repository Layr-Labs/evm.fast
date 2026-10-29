import InitECandidate.Proofs.WordStages.Source837
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody853_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody853_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody853_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 2)) (some 69) ([]) (some (10, sourceBody853_1, 853, 3))

def sourceBody853_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody853_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_2 sourceBody853_3

def sourceBody853_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_4 sourceBody853_0

def sourceBody853_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody853_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody853_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 4)) (some 276) ([18]) (some (18, sourceBody853_7, 853, 5))

def sourceBody853_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_8 sourceBody853_3

def sourceBody853_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_9 sourceBody853_0

def sourceBody853_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_6 sourceBody853_10

def sourceBody853_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody853_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody853_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 6)) (some 70) ([40]) (some (40, sourceBody853_13, 853, 7))

def sourceBody853_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_14 sourceBody853_3

def sourceBody853_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_15 sourceBody853_0

def sourceBody853_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_12 sourceBody853_16

def sourceBody853_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_17

def sourceBody853_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_18

def sourceBody853_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody853_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody853_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody853_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody853_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody853_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody853_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 32) sourceBody853_27 sourceBody853_28

def sourceBody853_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_29 sourceBody853_3

def sourceBody853_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody853_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody853_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody853_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody853_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 44) sourceBody853_35 sourceBody853_36

def sourceBody853_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_37 sourceBody853_3

def sourceBody853_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody853_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody853_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 32 0#64))

def sourceBody853_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 32)

def sourceBody853_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_42 sourceBody853_0

def sourceBody853_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_41 sourceBody853_43

def sourceBody853_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_40 sourceBody853_44

def sourceBody853_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_45 sourceBody853_0

def sourceBody853_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody853_46 sourceBody853_0

def sourceBody853_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_47 sourceBody853_3

def sourceBody853_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_48 sourceBody853_0

def sourceBody853_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_39 sourceBody853_49

def sourceBody853_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_38 sourceBody853_50

def sourceBody853_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_34 sourceBody853_51

def sourceBody853_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_33 sourceBody853_52

def sourceBody853_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody853_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody853_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody853_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 6) sourceBody853_57 sourceBody853_34

def sourceBody853_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_58 sourceBody853_3

def sourceBody853_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody853_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody853_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody853_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 36) sourceBody853_62 sourceBody853_63

def sourceBody853_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_64 sourceBody853_3

def sourceBody853_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.var 14])

def sourceBody853_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody853_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 20) sourceBody853_68 sourceBody853_66

def sourceBody853_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_69 sourceBody853_3

def sourceBody853_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody853_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody853_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 8)) (some 179) ([22, 44]) (some (22, sourceBody853_72, 853, 9))

def sourceBody853_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_73 sourceBody853_3

def sourceBody853_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_74 sourceBody853_0

def sourceBody853_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_55 sourceBody853_75

def sourceBody853_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_31 sourceBody853_76

def sourceBody853_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody853_77 sourceBody853_0

def sourceBody853_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_78 sourceBody853_3

def sourceBody853_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_79 sourceBody853_0

def sourceBody853_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_71 sourceBody853_80

def sourceBody853_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_70 sourceBody853_81

def sourceBody853_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_67 sourceBody853_82

def sourceBody853_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_66 sourceBody853_83

def sourceBody853_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_65 sourceBody853_84

def sourceBody853_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_61 sourceBody853_85

def sourceBody853_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_60 sourceBody853_86

def sourceBody853_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_59 sourceBody853_87

def sourceBody853_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_56 sourceBody853_88

def sourceBody853_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_55 sourceBody853_89

def sourceBody853_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 32])

def sourceBody853_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody853_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_92 sourceBody853_0

def sourceBody853_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_93 sourceBody853_0

def sourceBody853_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_91 sourceBody853_94

def sourceBody853_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_95

def sourceBody853_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_90 sourceBody853_96

def sourceBody853_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody853_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody853_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_99 sourceBody853_0

def sourceBody853_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_100 sourceBody853_0

def sourceBody853_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_98 sourceBody853_101

def sourceBody853_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_102

def sourceBody853_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_97 sourceBody853_103

def sourceBody853_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_54 sourceBody853_104

def sourceBody853_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_105

def sourceBody853_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_53 sourceBody853_106

def sourceBody853_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_28 sourceBody853_107

def sourceBody853_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_108

def sourceBody853_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_32 sourceBody853_109

def sourceBody853_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_110

def sourceBody853_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody853_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_111 sourceBody853_112

def sourceBody853_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody853_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody853_113 sourceBody853_114

def sourceBody853_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_115 sourceBody853_3

def sourceBody853_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_116 sourceBody853_0

def sourceBody853_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_31 sourceBody853_117

def sourceBody853_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_30 sourceBody853_118

def sourceBody853_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_26 sourceBody853_119

def sourceBody853_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_25 sourceBody853_120

def sourceBody853_122 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody853_121 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody853_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_122 sourceBody853_3

def sourceBody853_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_3 sourceBody853_123

def sourceBody853_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody853_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody853_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 10)) (some 180) ([12]) (some (12, sourceBody853_126, 853, 11))

def sourceBody853_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_127 sourceBody853_3

def sourceBody853_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_128 sourceBody853_0

def sourceBody853_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_125 sourceBody853_129

def sourceBody853_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 26])

def sourceBody853_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody853_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_132 sourceBody853_0

def sourceBody853_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_133 sourceBody853_0

def sourceBody853_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_131 sourceBody853_134

def sourceBody853_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_135

def sourceBody853_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody853_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_137 sourceBody853_134

def sourceBody853_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_138

def sourceBody853_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_136 sourceBody853_139

def sourceBody853_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody853_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody853_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_24 sourceBody853_0

def sourceBody853_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_143 sourceBody853_0

def sourceBody853_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 16)

def sourceBody853_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody853_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 44 (Flapjack.WordRegImm.reg 6) sourceBody853_57 sourceBody853_34

def sourceBody853_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_147 sourceBody853_3

def sourceBody853_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 44)

def sourceBody853_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody853_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 24 24 44 6))

def sourceBody853_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.var 24])

def sourceBody853_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody853_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 12)) (some 844) ([14]) (some (44, sourceBody853_153, 853, 13))

def sourceBody853_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_154 sourceBody853_3

def sourceBody853_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_155 sourceBody853_0

def sourceBody853_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_152 sourceBody853_156

def sourceBody853_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_151 sourceBody853_157

def sourceBody853_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_150 sourceBody853_158

def sourceBody853_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_145 sourceBody853_159

def sourceBody853_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 22])

def sourceBody853_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 44)

def sourceBody853_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_162 sourceBody853_0

def sourceBody853_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_163 sourceBody853_0

def sourceBody853_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_161 sourceBody853_164

def sourceBody853_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_165

def sourceBody853_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody853_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 44)

def sourceBody853_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_168 sourceBody853_0

def sourceBody853_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_169 sourceBody853_0

def sourceBody853_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_167 sourceBody853_170

def sourceBody853_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_171

def sourceBody853_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_166 sourceBody853_172

def sourceBody853_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_160 sourceBody853_173

def sourceBody853_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_174

def sourceBody853_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_175

def sourceBody853_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_176 sourceBody853_112

def sourceBody853_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody853_177 sourceBody853_114

def sourceBody853_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_178 sourceBody853_3

def sourceBody853_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_179 sourceBody853_0

def sourceBody853_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_149 sourceBody853_180

def sourceBody853_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_148 sourceBody853_181

def sourceBody853_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_146 sourceBody853_182

def sourceBody853_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_145 sourceBody853_183

def sourceBody853_185 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody853_184 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody853_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_185 sourceBody853_3

def sourceBody853_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_3 sourceBody853_186

def sourceBody853_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_144 sourceBody853_187

def sourceBody853_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody853_190 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 14)) (some 180) ([22]) (some (22, sourceBody853_72, 853, 15))

def sourceBody853_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_190 sourceBody853_3

def sourceBody853_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_191 sourceBody853_0

def sourceBody853_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_189 sourceBody853_192

def sourceBody853_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_188 sourceBody853_193

def sourceBody853_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 32])

def sourceBody853_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody853_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_196 sourceBody853_0

def sourceBody853_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_197 sourceBody853_0

def sourceBody853_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_195 sourceBody853_198

def sourceBody853_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_199

def sourceBody853_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_194 sourceBody853_200

def sourceBody853_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody853_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody853_0, 853, 16)) (some 180) ([22]) (some (22, sourceBody853_72, 853, 17))

def sourceBody853_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_203 sourceBody853_3

def sourceBody853_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_204 sourceBody853_0

def sourceBody853_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_202 sourceBody853_205

def sourceBody853_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_201 sourceBody853_206

def sourceBody853_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 38])

def sourceBody853_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody853_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_209 sourceBody853_0

def sourceBody853_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_208 sourceBody853_210

def sourceBody853_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_207 sourceBody853_211

def sourceBody853_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_142 sourceBody853_212

def sourceBody853_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_213

def sourceBody853_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_141 sourceBody853_214

def sourceBody853_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_215

def sourceBody853_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_140 sourceBody853_216

def sourceBody853_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_130 sourceBody853_217

def sourceBody853_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_218

def sourceBody853_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_219

def sourceBody853_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_124 sourceBody853_220

def sourceBody853_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_24 sourceBody853_221

def sourceBody853_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_222

def sourceBody853_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_23 sourceBody853_223

def sourceBody853_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_224

def sourceBody853_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_22 sourceBody853_225

def sourceBody853_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_226

def sourceBody853_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_21 sourceBody853_227

def sourceBody853_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_228

def sourceBody853_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_20 sourceBody853_229

def sourceBody853_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_230

def sourceBody853_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_19 sourceBody853_231

def sourceBody853_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_11 sourceBody853_232

def sourceBody853_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_233

def sourceBody853_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_234

def sourceBody853_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_235

def sourceBody853_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_236

def sourceBody853_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_5 sourceBody853_237

def sourceBody853_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_238

def sourceBody853_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody853_0 sourceBody853_239

def source853 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (853, 3, sourceBody853_240)
end InitECandidate.Proofs.WordStages
