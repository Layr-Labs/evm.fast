import InitECandidate.Proofs.WordStages.Source368
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody384_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody384_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody384_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def sourceBody384_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody384_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 10)

def sourceBody384_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody384_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody384_0, 384, 2)) (some 383) ([20, 42]) (some (20, sourceBody384_5, 384, 3))

def sourceBody384_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody384_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_6 sourceBody384_7

def sourceBody384_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_8 sourceBody384_0

def sourceBody384_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_4 sourceBody384_9

def sourceBody384_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_3 sourceBody384_10

def sourceBody384_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody384_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody384_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody384_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody384_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody384_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody384_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody384_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody384_0, 384, 4)) (some 102) ([28, 18, 40, 14]) (some (28, sourceBody384_18, 384, 5))

def sourceBody384_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_19 sourceBody384_7

def sourceBody384_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_20 sourceBody384_0

def sourceBody384_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_17 sourceBody384_21

def sourceBody384_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_16 sourceBody384_22

def sourceBody384_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_15 sourceBody384_23

def sourceBody384_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_14 sourceBody384_24

def sourceBody384_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 42)

def sourceBody384_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody384_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 34) sourceBody384_30 sourceBody384_31

def sourceBody384_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_32 sourceBody384_7

def sourceBody384_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody384_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 12000#64)

def sourceBody384_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_35 sourceBody384_0

def sourceBody384_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_36 sourceBody384_0

def sourceBody384_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 31#64])
      (Flapjack.WordLangExpHOL.const 5#64))
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody384_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_38 sourceBody384_0

def sourceBody384_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_39 sourceBody384_0

def sourceBody384_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_37 sourceBody384_40

def sourceBody384_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody384_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody384_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody384_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody384_0, 384, 6)) (some 79) ([14, 34, 24]) (some (14, sourceBody384_44, 384, 7))

def sourceBody384_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_45 sourceBody384_7

def sourceBody384_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_46 sourceBody384_0

def sourceBody384_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_43 sourceBody384_47

def sourceBody384_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_42 sourceBody384_48

def sourceBody384_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_28 sourceBody384_49

def sourceBody384_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody384_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody384_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 24) sourceBody384_53 sourceBody384_29

def sourceBody384_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_54 sourceBody384_7

def sourceBody384_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody384_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 3000#64)

def sourceBody384_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_57 sourceBody384_0

def sourceBody384_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_58 sourceBody384_0

def sourceBody384_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def sourceBody384_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 6000#64])

def sourceBody384_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody384_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_62 sourceBody384_0

def sourceBody384_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_63 sourceBody384_0

def sourceBody384_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_61 sourceBody384_64

def sourceBody384_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_65

def sourceBody384_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody384_66 sourceBody384_0

def sourceBody384_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_67 sourceBody384_7

def sourceBody384_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_68 sourceBody384_0

def sourceBody384_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_56 sourceBody384_69

def sourceBody384_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_55 sourceBody384_70

def sourceBody384_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_52 sourceBody384_71

def sourceBody384_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_60 sourceBody384_72

def sourceBody384_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_59 sourceBody384_73

def sourceBody384_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody384_74 sourceBody384_0

def sourceBody384_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_75 sourceBody384_7

def sourceBody384_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_76 sourceBody384_0

def sourceBody384_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_56 sourceBody384_77

def sourceBody384_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_55 sourceBody384_78

def sourceBody384_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_52 sourceBody384_79

def sourceBody384_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_51 sourceBody384_80

def sourceBody384_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_50 sourceBody384_81

def sourceBody384_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_82

def sourceBody384_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_83

def sourceBody384_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody384_41 sourceBody384_84

def sourceBody384_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_85 sourceBody384_7

def sourceBody384_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_86 sourceBody384_0

def sourceBody384_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_34 sourceBody384_87

def sourceBody384_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_33 sourceBody384_88

def sourceBody384_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_29 sourceBody384_89

def sourceBody384_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_28 sourceBody384_90

def sourceBody384_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody384_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody384_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 46) sourceBody384_95 sourceBody384_52

def sourceBody384_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_96 sourceBody384_7

def sourceBody384_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody384_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody384_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody384_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 46)

def sourceBody384_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody384_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody384_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 16) sourceBody384_103 sourceBody384_104

def sourceBody384_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_105 sourceBody384_7

def sourceBody384_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody384_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 46)

def sourceBody384_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody384_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 6 26))

def sourceBody384_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_110 sourceBody384_0

def sourceBody384_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_109 sourceBody384_111

def sourceBody384_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_108 sourceBody384_112

def sourceBody384_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody384_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 38)

def sourceBody384_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 2100#64, Flapjack.WordLangExpHOL.const 100#64])

def sourceBody384_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 22 22 12 32))

def sourceBody384_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_117 sourceBody384_0

def sourceBody384_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_116 sourceBody384_118

def sourceBody384_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_115 sourceBody384_119

def sourceBody384_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 40,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 3000#64, Flapjack.WordLangExpHOL.const 100#64],
      Flapjack.WordLangExpHOL.var 22])

def sourceBody384_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody384_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_122 sourceBody384_0

def sourceBody384_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_123 sourceBody384_0

def sourceBody384_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_121 sourceBody384_124

def sourceBody384_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_120 sourceBody384_125

def sourceBody384_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 80#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.const 7#64)])

def sourceBody384_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody384_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_128 sourceBody384_0

def sourceBody384_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_129 sourceBody384_0

def sourceBody384_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_127 sourceBody384_130

def sourceBody384_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_131

def sourceBody384_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_126 sourceBody384_132

def sourceBody384_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody384_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody384_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_135 sourceBody384_0

def sourceBody384_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_136 sourceBody384_0

def sourceBody384_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_134 sourceBody384_137

def sourceBody384_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_138

def sourceBody384_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_133 sourceBody384_139

def sourceBody384_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_114 sourceBody384_140

def sourceBody384_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_113 sourceBody384_141

def sourceBody384_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody384_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_142 sourceBody384_143

def sourceBody384_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody384_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody384_144 sourceBody384_145

def sourceBody384_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_146 sourceBody384_7

def sourceBody384_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_147 sourceBody384_0

def sourceBody384_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_107 sourceBody384_148

def sourceBody384_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_106 sourceBody384_149

def sourceBody384_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_102 sourceBody384_150

def sourceBody384_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_101 sourceBody384_151

def sourceBody384_153 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody384_152 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody384_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_153 sourceBody384_7

def sourceBody384_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_7 sourceBody384_154

def sourceBody384_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_94 sourceBody384_155

def sourceBody384_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_156

def sourceBody384_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_100 sourceBody384_157

def sourceBody384_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_158

def sourceBody384_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_99 sourceBody384_159

def sourceBody384_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_160

def sourceBody384_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody384_161 sourceBody384_0

def sourceBody384_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_162 sourceBody384_7

def sourceBody384_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_163 sourceBody384_0

def sourceBody384_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_98 sourceBody384_164

def sourceBody384_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_97 sourceBody384_165

def sourceBody384_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_94 sourceBody384_166

def sourceBody384_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_93 sourceBody384_167

def sourceBody384_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 40,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 4#64)])

def sourceBody384_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody384_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_170 sourceBody384_0

def sourceBody384_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_171 sourceBody384_0

def sourceBody384_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_169 sourceBody384_172

def sourceBody384_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_173

def sourceBody384_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_168 sourceBody384_174

def sourceBody384_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody384_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody384_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody384_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 6) sourceBody384_178 sourceBody384_94

def sourceBody384_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_179 sourceBody384_7

def sourceBody384_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody384_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 7816#64)

def sourceBody384_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 6 24 46))

def sourceBody384_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody384_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_184 sourceBody384_0

def sourceBody384_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_183 sourceBody384_185

def sourceBody384_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_182 sourceBody384_186

def sourceBody384_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_181 sourceBody384_187

def sourceBody384_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_188 sourceBody384_0

def sourceBody384_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody384_189 sourceBody384_0

def sourceBody384_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_190 sourceBody384_7

def sourceBody384_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_191 sourceBody384_0

def sourceBody384_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_101 sourceBody384_192

def sourceBody384_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_180 sourceBody384_193

def sourceBody384_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_177 sourceBody384_194

def sourceBody384_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_176 sourceBody384_195

def sourceBody384_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody384_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 14])

def sourceBody384_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 12000#64, Flapjack.WordLangExpHOL.var 28])

def sourceBody384_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 20,
      Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 34])

def sourceBody384_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 46)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.var 6])

def sourceBody384_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody384_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody384_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38, 12, 32]

def sourceBody384_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_204 sourceBody384_0

def sourceBody384_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_203 sourceBody384_205

def sourceBody384_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_202 sourceBody384_206

def sourceBody384_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_107 sourceBody384_207

def sourceBody384_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_201 sourceBody384_208

def sourceBody384_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_209

def sourceBody384_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_200 sourceBody384_210

def sourceBody384_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_211

def sourceBody384_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_199 sourceBody384_212

def sourceBody384_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_213

def sourceBody384_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_198 sourceBody384_214

def sourceBody384_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_215

def sourceBody384_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_197 sourceBody384_216

def sourceBody384_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_217

def sourceBody384_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_196 sourceBody384_218

def sourceBody384_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_29 sourceBody384_219

def sourceBody384_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_220

def sourceBody384_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_175 sourceBody384_221

def sourceBody384_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_31 sourceBody384_222

def sourceBody384_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_223

def sourceBody384_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_92 sourceBody384_224

def sourceBody384_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_225

def sourceBody384_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_91 sourceBody384_226

def sourceBody384_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_27 sourceBody384_227

def sourceBody384_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_228

def sourceBody384_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_26 sourceBody384_229

def sourceBody384_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_230

def sourceBody384_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_25 sourceBody384_231

def sourceBody384_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_232

def sourceBody384_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_233

def sourceBody384_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_13 sourceBody384_234

def sourceBody384_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_235

def sourceBody384_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_12 sourceBody384_236

def sourceBody384_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_237

def sourceBody384_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_11 sourceBody384_238

def sourceBody384_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_239

def sourceBody384_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_240

def sourceBody384_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_2 sourceBody384_241

def sourceBody384_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_242

def sourceBody384_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_1 sourceBody384_243

def sourceBody384_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody384_0 sourceBody384_244

def source384 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (384, 3, sourceBody384_245)
end InitECandidate.Proofs.WordStages
