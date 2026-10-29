import InitECandidate.Proofs.WordStages.Source621
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody637_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody637_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody637_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody637_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody637_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody637_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody637_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody637_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 26) sourceBody637_5 sourceBody637_6

def sourceBody637_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_7 sourceBody637_2

def sourceBody637_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody637_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody637_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody637_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 26

def sourceBody637_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_12 sourceBody637_0

def sourceBody637_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_11 sourceBody637_13

def sourceBody637_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_14 sourceBody637_0

def sourceBody637_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_6 sourceBody637_15

def sourceBody637_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_16

def sourceBody637_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_10 sourceBody637_17

def sourceBody637_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_18

def sourceBody637_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody637_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def sourceBody637_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_21 sourceBody637_0

def sourceBody637_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_22 sourceBody637_0

def sourceBody637_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_20 sourceBody637_23

def sourceBody637_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_24

def sourceBody637_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_19 sourceBody637_25

def sourceBody637_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody637_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_26 sourceBody637_27

def sourceBody637_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody637_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody637_28 sourceBody637_29

def sourceBody637_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_30 sourceBody637_2

def sourceBody637_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_31 sourceBody637_0

def sourceBody637_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_9 sourceBody637_32

def sourceBody637_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_8 sourceBody637_33

def sourceBody637_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_4 sourceBody637_34

def sourceBody637_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_3 sourceBody637_35

def sourceBody637_37 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody637_36 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody637_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_37 sourceBody637_2

def sourceBody637_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_2 sourceBody637_38

def sourceBody637_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_1 sourceBody637_0

def sourceBody637_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_40 sourceBody637_0

def sourceBody637_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_39 sourceBody637_41

def sourceBody637_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody637_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody637_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody637_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody637_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody637_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody637_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody637_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody637_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 28) sourceBody637_49 sourceBody637_50

def sourceBody637_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_51 sourceBody637_2

def sourceBody637_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody637_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody637_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody637_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 28 28 30 16))

def sourceBody637_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_56 sourceBody637_0

def sourceBody637_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_55 sourceBody637_57

def sourceBody637_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_54 sourceBody637_58

def sourceBody637_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 28,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.var 14])

def sourceBody637_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody637_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody637_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody637_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 24

def sourceBody637_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_64 sourceBody637_0

def sourceBody637_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_63 sourceBody637_65

def sourceBody637_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_66 sourceBody637_0

def sourceBody637_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_62 sourceBody637_67

def sourceBody637_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_68

def sourceBody637_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_61 sourceBody637_69

def sourceBody637_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_70

def sourceBody637_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody637_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_72 sourceBody637_0

def sourceBody637_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_73 sourceBody637_0

def sourceBody637_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_71 sourceBody637_74

def sourceBody637_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody637_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody637_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_77 sourceBody637_0

def sourceBody637_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_78 sourceBody637_0

def sourceBody637_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_76 sourceBody637_79

def sourceBody637_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_80

def sourceBody637_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_75 sourceBody637_81

def sourceBody637_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_60 sourceBody637_82

def sourceBody637_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_59 sourceBody637_83

def sourceBody637_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_84 sourceBody637_27

def sourceBody637_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody637_85 sourceBody637_29

def sourceBody637_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_86 sourceBody637_2

def sourceBody637_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_87 sourceBody637_0

def sourceBody637_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_53 sourceBody637_88

def sourceBody637_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_52 sourceBody637_89

def sourceBody637_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_48 sourceBody637_90

def sourceBody637_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_47 sourceBody637_91

def sourceBody637_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody637_92 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody637_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_93 sourceBody637_2

def sourceBody637_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_2 sourceBody637_94

def sourceBody637_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody637_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody637_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody637_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 28

def sourceBody637_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_99 sourceBody637_0

def sourceBody637_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_98 sourceBody637_100

def sourceBody637_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_101 sourceBody637_0

def sourceBody637_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_97 sourceBody637_102

def sourceBody637_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_103

def sourceBody637_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_96 sourceBody637_104

def sourceBody637_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_105

def sourceBody637_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_95 sourceBody637_106

def sourceBody637_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody637_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody637_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_109 sourceBody637_0

def sourceBody637_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_110 sourceBody637_0

def sourceBody637_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_108 sourceBody637_111

def sourceBody637_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_112

def sourceBody637_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_107 sourceBody637_113

def sourceBody637_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_46 sourceBody637_114

def sourceBody637_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_115

def sourceBody637_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_45 sourceBody637_116

def sourceBody637_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_117

def sourceBody637_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_6 sourceBody637_118

def sourceBody637_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_119

def sourceBody637_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_44 sourceBody637_120

def sourceBody637_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_121

def sourceBody637_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_122 sourceBody637_27

def sourceBody637_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody637_123 sourceBody637_29

def sourceBody637_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_124 sourceBody637_2

def sourceBody637_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_125 sourceBody637_0

def sourceBody637_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_9 sourceBody637_126

def sourceBody637_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_8 sourceBody637_127

def sourceBody637_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_43 sourceBody637_128

def sourceBody637_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_3 sourceBody637_129

def sourceBody637_131 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody637_130 (Flapjack.Spt.ls PUnit.unit)

def sourceBody637_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_131 sourceBody637_2

def sourceBody637_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_2 sourceBody637_132

def sourceBody637_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_42 sourceBody637_133

def sourceBody637_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody637_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody637_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_136 sourceBody637_0

def sourceBody637_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_135 sourceBody637_137

def sourceBody637_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_134 sourceBody637_138

def sourceBody637_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_1 sourceBody637_139

def sourceBody637_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody637_0 sourceBody637_140

def source637 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (637, 6, sourceBody637_141)
end InitECandidate.Proofs.WordStages
