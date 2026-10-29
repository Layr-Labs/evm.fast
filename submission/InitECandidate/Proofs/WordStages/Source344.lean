import InitECandidate.Proofs.WordStages.Source328
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody344_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody344_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 2)

def sourceBody344_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody344_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody344_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 2)) (some 169) ([48, 32]) (some (48, sourceBody344_3, 344, 3))

def sourceBody344_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody344_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_4 sourceBody344_5

def sourceBody344_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_6 sourceBody344_0

def sourceBody344_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_2 sourceBody344_7

def sourceBody344_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_1 sourceBody344_8

def sourceBody344_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody344_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody344_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 32 66))

def sourceBody344_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody344_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody344_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 4)) (some 68) ([44]) (some (32, sourceBody344_14, 344, 5))

def sourceBody344_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_15 sourceBody344_5

def sourceBody344_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_16 sourceBody344_0

def sourceBody344_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_13 sourceBody344_17

def sourceBody344_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_12 sourceBody344_18

def sourceBody344_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_11 sourceBody344_19

def sourceBody344_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_10 sourceBody344_20

def sourceBody344_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody344_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def sourceBody344_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 14)

def sourceBody344_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody344_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 44) sourceBody344_25 sourceBody344_26

def sourceBody344_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_27 sourceBody344_5

def sourceBody344_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody344_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 56,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody344_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 56,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody344_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody344_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([66, 10, 44, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 6)) (some 161) ([62, 20]) (some (62, sourceBody344_32, 344, 7))

def sourceBody344_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_33 sourceBody344_5

def sourceBody344_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_34 sourceBody344_0

def sourceBody344_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_31 sourceBody344_35

def sourceBody344_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_30 sourceBody344_36

def sourceBody344_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 66)

def sourceBody344_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody344_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 52) sourceBody344_40 sourceBody344_41

def sourceBody344_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_42 sourceBody344_5

def sourceBody344_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody344_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody344_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_46 sourceBody344_0

def sourceBody344_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_47 sourceBody344_0

def sourceBody344_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_45 sourceBody344_48

def sourceBody344_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_49

def sourceBody344_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody344_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_51 sourceBody344_32

def sourceBody344_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_50 sourceBody344_52

def sourceBody344_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody344_53 sourceBody344_0

def sourceBody344_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_54 sourceBody344_5

def sourceBody344_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_55 sourceBody344_0

def sourceBody344_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_44 sourceBody344_56

def sourceBody344_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_43 sourceBody344_57

def sourceBody344_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_39 sourceBody344_58

def sourceBody344_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_38 sourceBody344_59

def sourceBody344_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 10)

def sourceBody344_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 44)

def sourceBody344_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody344_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([62, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 8)) (some 169) ([52, 36]) (some (52, sourceBody344_63, 344, 9))

def sourceBody344_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_64 sourceBody344_5

def sourceBody344_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_65 sourceBody344_0

def sourceBody344_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_62 sourceBody344_66

def sourceBody344_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_61 sourceBody344_67

def sourceBody344_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody344_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody344_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.reg 70) sourceBody344_70 sourceBody344_71

def sourceBody344_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_72 sourceBody344_5

def sourceBody344_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 36)

def sourceBody344_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody344_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 52)

def sourceBody344_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_76 sourceBody344_0

def sourceBody344_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_77 sourceBody344_0

def sourceBody344_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_75 sourceBody344_78

def sourceBody344_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_79

def sourceBody344_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody344_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_81 sourceBody344_63

def sourceBody344_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_80 sourceBody344_82

def sourceBody344_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody344_83 sourceBody344_0

def sourceBody344_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_84 sourceBody344_5

def sourceBody344_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_85 sourceBody344_0

def sourceBody344_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_74 sourceBody344_86

def sourceBody344_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_73 sourceBody344_87

def sourceBody344_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_69 sourceBody344_88

def sourceBody344_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_44 sourceBody344_89

def sourceBody344_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 32)

def sourceBody344_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody344_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 70 70 52 36))

def sourceBody344_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_93 sourceBody344_0

def sourceBody344_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_92 sourceBody344_94

def sourceBody344_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_91 sourceBody344_95

def sourceBody344_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.var 70])

def sourceBody344_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody344_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody344_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody344_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 26, 60, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 10)) (some 336) ([50, 34, 68]) (some (50, sourceBody344_101, 344, 11))

def sourceBody344_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_102 sourceBody344_5

def sourceBody344_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_103 sourceBody344_0

def sourceBody344_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_100 sourceBody344_104

def sourceBody344_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_99 sourceBody344_105

def sourceBody344_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_98 sourceBody344_106

def sourceBody344_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody344_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 42)

def sourceBody344_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 26)

def sourceBody344_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 60)

def sourceBody344_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def sourceBody344_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody344_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 50) 30

def sourceBody344_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_114 sourceBody344_0

def sourceBody344_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_113 sourceBody344_115

def sourceBody344_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 68)

def sourceBody344_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 8#64])
  30

def sourceBody344_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_118 sourceBody344_0

def sourceBody344_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_117 sourceBody344_119

def sourceBody344_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody344_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 16#64])
  30

def sourceBody344_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_122 sourceBody344_0

def sourceBody344_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_121 sourceBody344_123

def sourceBody344_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody344_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 24#64])
  30

def sourceBody344_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_126 sourceBody344_0

def sourceBody344_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_125 sourceBody344_127

def sourceBody344_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_128 sourceBody344_0

def sourceBody344_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_124 sourceBody344_129

def sourceBody344_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_120 sourceBody344_130

def sourceBody344_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_116 sourceBody344_131

def sourceBody344_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_112 sourceBody344_132

def sourceBody344_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_133

def sourceBody344_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_111 sourceBody344_134

def sourceBody344_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_135

def sourceBody344_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_110 sourceBody344_136

def sourceBody344_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_137

def sourceBody344_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_109 sourceBody344_138

def sourceBody344_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_139

def sourceBody344_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_108 sourceBody344_140

def sourceBody344_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_141

def sourceBody344_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody344_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody344_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 12)) (some 339) ([34, 68, 12]) (some (34, sourceBody344_146, 344, 13))

def sourceBody344_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_147 sourceBody344_5

def sourceBody344_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_148 sourceBody344_0

def sourceBody344_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_145 sourceBody344_149

def sourceBody344_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_144 sourceBody344_150

def sourceBody344_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_143 sourceBody344_151

def sourceBody344_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody344_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 50)

def sourceBody344_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 68)

def sourceBody344_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 12

def sourceBody344_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_156 sourceBody344_0

def sourceBody344_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_155 sourceBody344_157

def sourceBody344_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_158 sourceBody344_0

def sourceBody344_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_154 sourceBody344_159

def sourceBody344_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_160

def sourceBody344_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_153 sourceBody344_161

def sourceBody344_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_162

def sourceBody344_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody344_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody344_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody344_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody344_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 14)) (some 337) ([68, 12, 46, 30]) (some (68, sourceBody344_168, 344, 15))

def sourceBody344_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_169 sourceBody344_5

def sourceBody344_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_170 sourceBody344_0

def sourceBody344_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_167 sourceBody344_171

def sourceBody344_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_166 sourceBody344_172

def sourceBody344_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_165 sourceBody344_173

def sourceBody344_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_164 sourceBody344_174

def sourceBody344_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody344_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody344_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody344_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 68) 46

def sourceBody344_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_179 sourceBody344_0

def sourceBody344_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_178 sourceBody344_180

def sourceBody344_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_181 sourceBody344_0

def sourceBody344_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_177 sourceBody344_182

def sourceBody344_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_183

def sourceBody344_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_176 sourceBody344_184

def sourceBody344_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_185

def sourceBody344_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody344_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody344_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 16)) (some 337) ([68, 12, 46, 30]) (some (68, sourceBody344_168, 344, 17))

def sourceBody344_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_189 sourceBody344_5

def sourceBody344_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_190 sourceBody344_0

def sourceBody344_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_167 sourceBody344_191

def sourceBody344_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_188 sourceBody344_192

def sourceBody344_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_187 sourceBody344_193

def sourceBody344_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_164 sourceBody344_194

def sourceBody344_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_186 sourceBody344_195

def sourceBody344_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody344_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_197 sourceBody344_184

def sourceBody344_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_198

def sourceBody344_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_196 sourceBody344_199

def sourceBody344_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody344_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody344_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def sourceBody344_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 12, 46, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 18)) (some 336) ([64, 22, 54]) (some (64, sourceBody344_204, 344, 19))

def sourceBody344_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_205 sourceBody344_5

def sourceBody344_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_206 sourceBody344_0

def sourceBody344_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_203 sourceBody344_207

def sourceBody344_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_202 sourceBody344_208

def sourceBody344_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_201 sourceBody344_209

def sourceBody344_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody344_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 68)

def sourceBody344_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody344_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def sourceBody344_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 30)

def sourceBody344_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody344_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 64) 6

def sourceBody344_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_217 sourceBody344_0

def sourceBody344_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_216 sourceBody344_218

def sourceBody344_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 54)

def sourceBody344_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 64, Flapjack.WordLangExpHOL.const 8#64]) 6

def sourceBody344_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_221 sourceBody344_0

def sourceBody344_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_220 sourceBody344_222

def sourceBody344_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 38)

def sourceBody344_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 64, Flapjack.WordLangExpHOL.const 16#64])
  6

def sourceBody344_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_225 sourceBody344_0

def sourceBody344_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_224 sourceBody344_226

def sourceBody344_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 72)

def sourceBody344_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 64, Flapjack.WordLangExpHOL.const 24#64])
  6

def sourceBody344_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_229 sourceBody344_0

def sourceBody344_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_228 sourceBody344_230

def sourceBody344_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_231 sourceBody344_0

def sourceBody344_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_227 sourceBody344_232

def sourceBody344_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_223 sourceBody344_233

def sourceBody344_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_219 sourceBody344_234

def sourceBody344_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_215 sourceBody344_235

def sourceBody344_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_236

def sourceBody344_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_214 sourceBody344_237

def sourceBody344_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_238

def sourceBody344_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_213 sourceBody344_239

def sourceBody344_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_240

def sourceBody344_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_212 sourceBody344_241

def sourceBody344_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_242

def sourceBody344_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_211 sourceBody344_243

def sourceBody344_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_244

def sourceBody344_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 62)

def sourceBody344_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody344_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody344_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def sourceBody344_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([64, 22, 54, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody344_0, 344, 20)) (some 336) ([72, 6, 40]) (some (72, sourceBody344_249, 344, 21))

def sourceBody344_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_250 sourceBody344_5

def sourceBody344_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_251 sourceBody344_0

def sourceBody344_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_248 sourceBody344_252

def sourceBody344_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_247 sourceBody344_253

def sourceBody344_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_246 sourceBody344_254

def sourceBody344_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody344_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 64)

def sourceBody344_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody344_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 54)

def sourceBody344_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 38)

def sourceBody344_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody344_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 72) 16

def sourceBody344_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_262 sourceBody344_0

def sourceBody344_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_261 sourceBody344_263

def sourceBody344_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 40)

def sourceBody344_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 8#64])
  16

def sourceBody344_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_266 sourceBody344_0

def sourceBody344_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_265 sourceBody344_267

def sourceBody344_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody344_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 16#64])
  16

def sourceBody344_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_270 sourceBody344_0

def sourceBody344_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_269 sourceBody344_271

def sourceBody344_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 58)

def sourceBody344_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 24#64])
  16

def sourceBody344_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_274 sourceBody344_0

def sourceBody344_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_273 sourceBody344_275

def sourceBody344_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_276 sourceBody344_0

def sourceBody344_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_272 sourceBody344_277

def sourceBody344_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_268 sourceBody344_278

def sourceBody344_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_264 sourceBody344_279

def sourceBody344_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_260 sourceBody344_280

def sourceBody344_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_281

def sourceBody344_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_259 sourceBody344_282

def sourceBody344_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_283

def sourceBody344_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_258 sourceBody344_284

def sourceBody344_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_285

def sourceBody344_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_257 sourceBody344_286

def sourceBody344_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_287

def sourceBody344_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_256 sourceBody344_288

def sourceBody344_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_289

def sourceBody344_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody344_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 72)

def sourceBody344_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_292 sourceBody344_0

def sourceBody344_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_293 sourceBody344_0

def sourceBody344_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_291 sourceBody344_294

def sourceBody344_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_295

def sourceBody344_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_290 sourceBody344_296

def sourceBody344_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_255 sourceBody344_297

def sourceBody344_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_298

def sourceBody344_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_299

def sourceBody344_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_300

def sourceBody344_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_301

def sourceBody344_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_302

def sourceBody344_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_303

def sourceBody344_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_304

def sourceBody344_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_305

def sourceBody344_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_245 sourceBody344_306

def sourceBody344_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_210 sourceBody344_307

def sourceBody344_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_308

def sourceBody344_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_309

def sourceBody344_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_310

def sourceBody344_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_311

def sourceBody344_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_312

def sourceBody344_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_313

def sourceBody344_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_314

def sourceBody344_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_315

def sourceBody344_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_200 sourceBody344_316

def sourceBody344_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_175 sourceBody344_317

def sourceBody344_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_318

def sourceBody344_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_319

def sourceBody344_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_163 sourceBody344_320

def sourceBody344_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_152 sourceBody344_321

def sourceBody344_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_322

def sourceBody344_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_323

def sourceBody344_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_142 sourceBody344_324

def sourceBody344_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_107 sourceBody344_325

def sourceBody344_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_326

def sourceBody344_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_327

def sourceBody344_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_328

def sourceBody344_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_329

def sourceBody344_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_330

def sourceBody344_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_331

def sourceBody344_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_332

def sourceBody344_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_333

def sourceBody344_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_97 sourceBody344_334

def sourceBody344_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_96 sourceBody344_335

def sourceBody344_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_90 sourceBody344_336

def sourceBody344_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_68 sourceBody344_337

def sourceBody344_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_338

def sourceBody344_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_339

def sourceBody344_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_340

def sourceBody344_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_341

def sourceBody344_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_60 sourceBody344_342

def sourceBody344_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_37 sourceBody344_343

def sourceBody344_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_344

def sourceBody344_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_345

def sourceBody344_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_346

def sourceBody344_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_347

def sourceBody344_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_348

def sourceBody344_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_349

def sourceBody344_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_350

def sourceBody344_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_351

def sourceBody344_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody344_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_352 sourceBody344_353

def sourceBody344_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody344_356 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody344_354 sourceBody344_355

def sourceBody344_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_356 sourceBody344_5

def sourceBody344_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_357 sourceBody344_0

def sourceBody344_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_29 sourceBody344_358

def sourceBody344_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_28 sourceBody344_359

def sourceBody344_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_24 sourceBody344_360

def sourceBody344_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_23 sourceBody344_361

def sourceBody344_363 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody344_362 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody344_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_363 sourceBody344_5

def sourceBody344_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_5 sourceBody344_364

def sourceBody344_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 48)

def sourceBody344_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody344_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [66, 10]

def sourceBody344_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_368 sourceBody344_0

def sourceBody344_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_367 sourceBody344_369

def sourceBody344_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_366 sourceBody344_370

def sourceBody344_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_365 sourceBody344_371

def sourceBody344_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_22 sourceBody344_372

def sourceBody344_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_373

def sourceBody344_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_21 sourceBody344_374

def sourceBody344_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_375

def sourceBody344_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_376

def sourceBody344_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_9 sourceBody344_377

def sourceBody344_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_378

def sourceBody344_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_379

def sourceBody344_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_380

def sourceBody344_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody344_0 sourceBody344_381

def source344 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (344, 3, sourceBody344_382)
end InitECandidate.Proofs.WordStages
