import InitECandidate.Proofs.WordStages.Source272
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody288_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody288_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody288_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody288_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody288_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody288_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody288_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody288_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 16 (Flapjack.WordRegImm.reg 28) sourceBody288_5 sourceBody288_6

def sourceBody288_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_7 sourceBody288_2

def sourceBody288_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody288_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody288_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody288_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_11 sourceBody288_0

def sourceBody288_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_10 sourceBody288_12

def sourceBody288_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody288_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody288_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody288_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody288_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_17 sourceBody288_0

def sourceBody288_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_16 sourceBody288_18

def sourceBody288_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_15 sourceBody288_19

def sourceBody288_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody288_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody288_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_22 sourceBody288_18

def sourceBody288_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_21 sourceBody288_23

def sourceBody288_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_20 sourceBody288_24

def sourceBody288_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody288_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody288_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_27 sourceBody288_0

def sourceBody288_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_26 sourceBody288_28

def sourceBody288_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody288_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody288_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody288_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 14 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody288_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_33 sourceBody288_0

def sourceBody288_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_32 sourceBody288_34

def sourceBody288_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_31 sourceBody288_35

def sourceBody288_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody288_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody288_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_38 sourceBody288_34

def sourceBody288_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_37 sourceBody288_39

def sourceBody288_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_36 sourceBody288_40

def sourceBody288_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody288_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody288_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_43 sourceBody288_0

def sourceBody288_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_42 sourceBody288_44

def sourceBody288_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody288_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 4#64])

def sourceBody288_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody288_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody288_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_49 sourceBody288_0

def sourceBody288_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_48 sourceBody288_50

def sourceBody288_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_47 sourceBody288_51

def sourceBody288_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 5#64])

def sourceBody288_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody288_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_54 sourceBody288_50

def sourceBody288_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_53 sourceBody288_55

def sourceBody288_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_52 sourceBody288_56

def sourceBody288_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody288_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody288_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_59 sourceBody288_0

def sourceBody288_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_58 sourceBody288_60

def sourceBody288_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody288_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 6#64])

def sourceBody288_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody288_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody288_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_65 sourceBody288_0

def sourceBody288_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_64 sourceBody288_66

def sourceBody288_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_63 sourceBody288_67

def sourceBody288_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 7#64])

def sourceBody288_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody288_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_70 sourceBody288_66

def sourceBody288_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_69 sourceBody288_71

def sourceBody288_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_68 sourceBody288_72

def sourceBody288_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody288_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody288_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_75 sourceBody288_0

def sourceBody288_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_76 sourceBody288_0

def sourceBody288_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_74 sourceBody288_77

def sourceBody288_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_0 sourceBody288_78

def sourceBody288_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_73 sourceBody288_79

def sourceBody288_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_62 sourceBody288_80

def sourceBody288_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_61 sourceBody288_81

def sourceBody288_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_57 sourceBody288_82

def sourceBody288_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_46 sourceBody288_83

def sourceBody288_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_45 sourceBody288_84

def sourceBody288_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_41 sourceBody288_85

def sourceBody288_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_30 sourceBody288_86

def sourceBody288_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_29 sourceBody288_87

def sourceBody288_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_25 sourceBody288_88

def sourceBody288_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_14 sourceBody288_89

def sourceBody288_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_13 sourceBody288_90

def sourceBody288_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody288_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_91 sourceBody288_92

def sourceBody288_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody288_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody288_93 sourceBody288_94

def sourceBody288_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_95 sourceBody288_2

def sourceBody288_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_96 sourceBody288_0

def sourceBody288_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_9 sourceBody288_97

def sourceBody288_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_8 sourceBody288_98

def sourceBody288_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_4 sourceBody288_99

def sourceBody288_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_3 sourceBody288_100

def sourceBody288_102 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody288_101 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody288_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_102 sourceBody288_2

def sourceBody288_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_2 sourceBody288_103

def sourceBody288_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody288_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody288_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 28) sourceBody288_5 sourceBody288_6

def sourceBody288_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_107 sourceBody288_2

def sourceBody288_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody288_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody288_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_110 sourceBody288_0

def sourceBody288_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_111 sourceBody288_0

def sourceBody288_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_109 sourceBody288_112

def sourceBody288_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_0 sourceBody288_113

def sourceBody288_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_25 sourceBody288_114

def sourceBody288_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_14 sourceBody288_115

def sourceBody288_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_13 sourceBody288_116

def sourceBody288_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_117 sourceBody288_92

def sourceBody288_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody288_118 sourceBody288_94

def sourceBody288_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_119 sourceBody288_2

def sourceBody288_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_120 sourceBody288_0

def sourceBody288_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_9 sourceBody288_121

def sourceBody288_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_108 sourceBody288_122

def sourceBody288_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_106 sourceBody288_123

def sourceBody288_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_105 sourceBody288_124

def sourceBody288_126 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody288_125 (Flapjack.Spt.ls PUnit.unit)

def sourceBody288_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_126 sourceBody288_2

def sourceBody288_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_2 sourceBody288_127

def sourceBody288_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_104 sourceBody288_128

def sourceBody288_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody288_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody288_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_131 sourceBody288_0

def sourceBody288_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_130 sourceBody288_132

def sourceBody288_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_129 sourceBody288_133

def sourceBody288_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_1 sourceBody288_134

def sourceBody288_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody288_0 sourceBody288_135

def source288 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (288, 4, sourceBody288_136)
end InitECandidate.Proofs.WordStages
