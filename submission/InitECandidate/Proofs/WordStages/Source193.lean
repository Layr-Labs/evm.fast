import InitECandidate.Proofs.WordStages.Source177
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody193_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody193_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody193_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody193_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody193_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody193_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody193_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody193_0, 193, 2)) (some 185) ([16, 32]) (some (16, sourceBody193_5, 193, 3))

def sourceBody193_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody193_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_6 sourceBody193_7

def sourceBody193_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_8 sourceBody193_0

def sourceBody193_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_4 sourceBody193_9

def sourceBody193_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_3 sourceBody193_10

def sourceBody193_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody193_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody193_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 8) sourceBody193_14 sourceBody193_15

def sourceBody193_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_16 sourceBody193_7

def sourceBody193_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody193_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody193_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_20 sourceBody193_0

def sourceBody193_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_19 sourceBody193_21

def sourceBody193_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody193_22 sourceBody193_0

def sourceBody193_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_23 sourceBody193_7

def sourceBody193_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_24 sourceBody193_0

def sourceBody193_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_18 sourceBody193_25

def sourceBody193_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_17 sourceBody193_26

def sourceBody193_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_13 sourceBody193_27

def sourceBody193_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_12 sourceBody193_28

def sourceBody193_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody193_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody193_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody193_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 8 22))

def sourceBody193_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 14])

def sourceBody193_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody193_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody193_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody193_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody193_0, 193, 4)) (some 79) ([30, 12, 26]) (some (8, sourceBody193_37, 193, 5))

def sourceBody193_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_38 sourceBody193_7

def sourceBody193_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_39 sourceBody193_0

def sourceBody193_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_36 sourceBody193_40

def sourceBody193_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_35 sourceBody193_41

def sourceBody193_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_34 sourceBody193_42

def sourceBody193_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_33 sourceBody193_43

def sourceBody193_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_32 sourceBody193_44

def sourceBody193_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_31 sourceBody193_45

def sourceBody193_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody193_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 14) sourceBody193_48 sourceBody193_49

def sourceBody193_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_50 sourceBody193_7

def sourceBody193_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody193_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody193_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_53 sourceBody193_0

def sourceBody193_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_13 sourceBody193_54

def sourceBody193_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody193_55 sourceBody193_0

def sourceBody193_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_56 sourceBody193_7

def sourceBody193_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_57 sourceBody193_0

def sourceBody193_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_52 sourceBody193_58

def sourceBody193_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_51 sourceBody193_59

def sourceBody193_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_47 sourceBody193_60

def sourceBody193_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_18 sourceBody193_61

def sourceBody193_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody193_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody193_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody193_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody193_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody193_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody193_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 26) sourceBody193_68 sourceBody193_69

def sourceBody193_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_70 sourceBody193_7

def sourceBody193_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody193_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody193_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody193_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 30,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody193_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody193_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 34

def sourceBody193_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_77 sourceBody193_0

def sourceBody193_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_76 sourceBody193_78

def sourceBody193_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_79 sourceBody193_0

def sourceBody193_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_72 sourceBody193_80

def sourceBody193_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_81

def sourceBody193_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_75 sourceBody193_82

def sourceBody193_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_83

def sourceBody193_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody193_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody193_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_86 sourceBody193_80

def sourceBody193_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_87

def sourceBody193_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_85 sourceBody193_88

def sourceBody193_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_89

def sourceBody193_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_84 sourceBody193_90

def sourceBody193_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_74 sourceBody193_91

def sourceBody193_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_92

def sourceBody193_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_73 sourceBody193_93

def sourceBody193_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_94

def sourceBody193_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody193_95 sourceBody193_0

def sourceBody193_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_96 sourceBody193_7

def sourceBody193_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_97 sourceBody193_0

def sourceBody193_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_72 sourceBody193_98

def sourceBody193_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_71 sourceBody193_99

def sourceBody193_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_67 sourceBody193_100

def sourceBody193_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_66 sourceBody193_101

def sourceBody193_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody193_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody193_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody193_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 26

def sourceBody193_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_106 sourceBody193_0

def sourceBody193_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_105 sourceBody193_107

def sourceBody193_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_108 sourceBody193_0

def sourceBody193_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_104 sourceBody193_109

def sourceBody193_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_110

def sourceBody193_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_103 sourceBody193_111

def sourceBody193_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_112

def sourceBody193_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_102 sourceBody193_113

def sourceBody193_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody193_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody193_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 26) sourceBody193_68 sourceBody193_69

def sourceBody193_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_117 sourceBody193_7

def sourceBody193_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody193_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_69 sourceBody193_109

def sourceBody193_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_120

def sourceBody193_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_119 sourceBody193_121

def sourceBody193_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_122

def sourceBody193_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody193_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody193_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody193_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody193_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody193_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody193_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_131 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 6) sourceBody193_129 sourceBody193_130

def sourceBody193_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_131 sourceBody193_7

def sourceBody193_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody193_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody193_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_134 sourceBody193_0

def sourceBody193_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_135 sourceBody193_0

def sourceBody193_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody193_136 sourceBody193_0

def sourceBody193_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_137 sourceBody193_7

def sourceBody193_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_138 sourceBody193_0

def sourceBody193_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_133 sourceBody193_139

def sourceBody193_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_132 sourceBody193_140

def sourceBody193_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_128 sourceBody193_141

def sourceBody193_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_127 sourceBody193_142

def sourceBody193_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody193_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody193_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 34)

def sourceBody193_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 6

def sourceBody193_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_147 sourceBody193_0

def sourceBody193_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_146 sourceBody193_148

def sourceBody193_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_149 sourceBody193_0

def sourceBody193_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_145 sourceBody193_150

def sourceBody193_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_151

def sourceBody193_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_144 sourceBody193_152

def sourceBody193_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_153

def sourceBody193_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_143 sourceBody193_154

def sourceBody193_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody193_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody193_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_127 sourceBody193_150

def sourceBody193_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_158

def sourceBody193_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_157 sourceBody193_159

def sourceBody193_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_160

def sourceBody193_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody193_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody193_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody193_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_164 sourceBody193_159

def sourceBody193_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_165

def sourceBody193_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody193_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_167 sourceBody193_159

def sourceBody193_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_168

def sourceBody193_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody193_166 sourceBody193_169

def sourceBody193_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_170 sourceBody193_7

def sourceBody193_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_171 sourceBody193_0

def sourceBody193_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_133 sourceBody193_172

def sourceBody193_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_132 sourceBody193_173

def sourceBody193_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_163 sourceBody193_174

def sourceBody193_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_162 sourceBody193_175

def sourceBody193_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody193_161 sourceBody193_176

def sourceBody193_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_177 sourceBody193_7

def sourceBody193_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_178 sourceBody193_0

def sourceBody193_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_133 sourceBody193_179

def sourceBody193_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_132 sourceBody193_180

def sourceBody193_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_156 sourceBody193_181

def sourceBody193_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_145 sourceBody193_182

def sourceBody193_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_155 sourceBody193_183

def sourceBody193_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody193_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody193_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_186 sourceBody193_150

def sourceBody193_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_187

def sourceBody193_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_185 sourceBody193_188

def sourceBody193_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_189

def sourceBody193_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_184 sourceBody193_190

def sourceBody193_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody193_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody193_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_193 sourceBody193_150

def sourceBody193_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_194

def sourceBody193_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_192 sourceBody193_195

def sourceBody193_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_196

def sourceBody193_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_191 sourceBody193_197

def sourceBody193_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_126 sourceBody193_198

def sourceBody193_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_199

def sourceBody193_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_125 sourceBody193_200

def sourceBody193_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_201

def sourceBody193_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_124 sourceBody193_202

def sourceBody193_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_203

def sourceBody193_205 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody193_123 sourceBody193_204

def sourceBody193_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_205 sourceBody193_7

def sourceBody193_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_206 sourceBody193_0

def sourceBody193_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_72 sourceBody193_207

def sourceBody193_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_118 sourceBody193_208

def sourceBody193_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_116 sourceBody193_209

def sourceBody193_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_115 sourceBody193_210

def sourceBody193_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_114 sourceBody193_211

def sourceBody193_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody193_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody193_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_214 sourceBody193_109

def sourceBody193_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_215

def sourceBody193_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_213 sourceBody193_216

def sourceBody193_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_217

def sourceBody193_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_212 sourceBody193_218

def sourceBody193_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody193_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_115 sourceBody193_109

def sourceBody193_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_221

def sourceBody193_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_220 sourceBody193_222

def sourceBody193_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_223

def sourceBody193_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_219 sourceBody193_224

def sourceBody193_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody193_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody193_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_227 sourceBody193_0

def sourceBody193_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_226 sourceBody193_228

def sourceBody193_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_225 sourceBody193_229

def sourceBody193_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_65 sourceBody193_230

def sourceBody193_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_231

def sourceBody193_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_64 sourceBody193_232

def sourceBody193_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_233

def sourceBody193_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_63 sourceBody193_234

def sourceBody193_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_235

def sourceBody193_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_62 sourceBody193_236

def sourceBody193_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_46 sourceBody193_237

def sourceBody193_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_238

def sourceBody193_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_239

def sourceBody193_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_30 sourceBody193_240

def sourceBody193_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_241

def sourceBody193_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_29 sourceBody193_242

def sourceBody193_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_11 sourceBody193_243

def sourceBody193_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_244

def sourceBody193_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_245

def sourceBody193_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_2 sourceBody193_246

def sourceBody193_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_247

def sourceBody193_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_1 sourceBody193_248

def sourceBody193_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody193_0 sourceBody193_249

def source193 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (193, 3, sourceBody193_250)
end InitECandidate.Proofs.WordStages
