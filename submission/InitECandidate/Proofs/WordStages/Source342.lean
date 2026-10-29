import InitECandidate.Proofs.WordStages.Source326
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody342_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody342_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody342_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody342_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody342_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 2)) (some 169) ([36, 24]) (some (36, sourceBody342_3, 342, 3))

def sourceBody342_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody342_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_4 sourceBody342_5

def sourceBody342_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_6 sourceBody342_0

def sourceBody342_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_2 sourceBody342_7

def sourceBody342_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_1 sourceBody342_8

def sourceBody342_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody342_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody342_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 24 48))

def sourceBody342_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody342_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody342_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 4)) (some 68) ([32]) (some (24, sourceBody342_14, 342, 5))

def sourceBody342_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_15 sourceBody342_5

def sourceBody342_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_16 sourceBody342_0

def sourceBody342_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_13 sourceBody342_17

def sourceBody342_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_12 sourceBody342_18

def sourceBody342_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_11 sourceBody342_19

def sourceBody342_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_10 sourceBody342_20

def sourceBody342_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody342_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody342_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 32) sourceBody342_25 sourceBody342_26

def sourceBody342_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_27 sourceBody342_5

def sourceBody342_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody342_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody342_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody342_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody342_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 8, 32, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 6)) (some 161) ([46, 16]) (some (46, sourceBody342_32, 342, 7))

def sourceBody342_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_33 sourceBody342_5

def sourceBody342_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_34 sourceBody342_0

def sourceBody342_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_31 sourceBody342_35

def sourceBody342_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_30 sourceBody342_36

def sourceBody342_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 48)

def sourceBody342_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 40) sourceBody342_40 sourceBody342_41

def sourceBody342_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_42 sourceBody342_5

def sourceBody342_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody342_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 19#64)

def sourceBody342_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 46)

def sourceBody342_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_46 sourceBody342_0

def sourceBody342_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_47 sourceBody342_0

def sourceBody342_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_45 sourceBody342_48

def sourceBody342_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_49

def sourceBody342_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody342_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_51 sourceBody342_32

def sourceBody342_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_50 sourceBody342_52

def sourceBody342_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody342_53 sourceBody342_0

def sourceBody342_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_54 sourceBody342_5

def sourceBody342_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_55 sourceBody342_0

def sourceBody342_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_44 sourceBody342_56

def sourceBody342_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_43 sourceBody342_57

def sourceBody342_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_39 sourceBody342_58

def sourceBody342_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_38 sourceBody342_59

def sourceBody342_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def sourceBody342_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody342_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody342_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 8)) (some 169) ([40, 28]) (some (40, sourceBody342_63, 342, 9))

def sourceBody342_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_64 sourceBody342_5

def sourceBody342_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_65 sourceBody342_0

def sourceBody342_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_62 sourceBody342_66

def sourceBody342_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_61 sourceBody342_67

def sourceBody342_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody342_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 52) sourceBody342_70 sourceBody342_71

def sourceBody342_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_72 sourceBody342_5

def sourceBody342_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 28)

def sourceBody342_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 19#64)

def sourceBody342_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 40)

def sourceBody342_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_76 sourceBody342_0

def sourceBody342_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_77 sourceBody342_0

def sourceBody342_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_75 sourceBody342_78

def sourceBody342_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_79

def sourceBody342_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody342_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_81 sourceBody342_63

def sourceBody342_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_80 sourceBody342_82

def sourceBody342_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody342_83 sourceBody342_0

def sourceBody342_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_84 sourceBody342_5

def sourceBody342_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_85 sourceBody342_0

def sourceBody342_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_74 sourceBody342_86

def sourceBody342_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_73 sourceBody342_87

def sourceBody342_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_69 sourceBody342_88

def sourceBody342_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_44 sourceBody342_89

def sourceBody342_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 46)

def sourceBody342_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody342_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody342_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 10)) (some 339) ([28, 52, 6]) (some (28, sourceBody342_94, 342, 11))

def sourceBody342_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_95 sourceBody342_5

def sourceBody342_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_96 sourceBody342_0

def sourceBody342_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_93 sourceBody342_97

def sourceBody342_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_92 sourceBody342_98

def sourceBody342_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_91 sourceBody342_99

def sourceBody342_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 46)

def sourceBody342_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody342_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 12)) (some 341) ([6, 30]) (some (6, sourceBody342_103, 342, 13))

def sourceBody342_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_104 sourceBody342_5

def sourceBody342_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_105 sourceBody342_0

def sourceBody342_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_102 sourceBody342_106

def sourceBody342_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_101 sourceBody342_107

def sourceBody342_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody342_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 52)

def sourceBody342_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody342_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 14)) (some 169) ([18, 44]) (some (18, sourceBody342_111, 342, 15))

def sourceBody342_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_112 sourceBody342_5

def sourceBody342_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_113 sourceBody342_0

def sourceBody342_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_110 sourceBody342_114

def sourceBody342_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_109 sourceBody342_115

def sourceBody342_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody342_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody342_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 16)) (some 68) ([44]) (some (44, sourceBody342_118, 342, 17))

def sourceBody342_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_119 sourceBody342_5

def sourceBody342_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_120 sourceBody342_0

def sourceBody342_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_117 sourceBody342_121

def sourceBody342_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody342_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody342_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody342_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody342_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 38 (Flapjack.WordRegImm.reg 26) sourceBody342_126 sourceBody342_127

def sourceBody342_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_128 sourceBody342_5

def sourceBody342_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 38)

def sourceBody342_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody342_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody342_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody342_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody342_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 18)) (some 339) ([38, 26, 50]) (some (38, sourceBody342_134, 342, 19))

def sourceBody342_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_135 sourceBody342_5

def sourceBody342_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_136 sourceBody342_0

def sourceBody342_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_133 sourceBody342_137

def sourceBody342_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_132 sourceBody342_138

def sourceBody342_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_131 sourceBody342_139

def sourceBody342_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody342_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def sourceBody342_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody342_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody342_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody342_0, 342, 20)) (some 77) ([26, 50, 10]) (some (26, sourceBody342_144, 342, 21))

def sourceBody342_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_145 sourceBody342_5

def sourceBody342_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_146 sourceBody342_0

def sourceBody342_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_143 sourceBody342_147

def sourceBody342_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_142 sourceBody342_148

def sourceBody342_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_141 sourceBody342_149

def sourceBody342_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_150

def sourceBody342_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_151

def sourceBody342_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody342_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody342_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_154 sourceBody342_0

def sourceBody342_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_155 sourceBody342_0

def sourceBody342_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_153 sourceBody342_156

def sourceBody342_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_157

def sourceBody342_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_152 sourceBody342_158

def sourceBody342_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_140 sourceBody342_159

def sourceBody342_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_160

def sourceBody342_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_161

def sourceBody342_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody342_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_162 sourceBody342_163

def sourceBody342_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody342_166 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody342_164 sourceBody342_165

def sourceBody342_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_166 sourceBody342_5

def sourceBody342_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_167 sourceBody342_0

def sourceBody342_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_130 sourceBody342_168

def sourceBody342_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_129 sourceBody342_169

def sourceBody342_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_125 sourceBody342_170

def sourceBody342_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_124 sourceBody342_171

def sourceBody342_173 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody342_172 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody342_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_173 sourceBody342_5

def sourceBody342_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_5 sourceBody342_174

def sourceBody342_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody342_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody342_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 14 38))

def sourceBody342_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_178 sourceBody342_0

def sourceBody342_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_177 sourceBody342_179

def sourceBody342_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_176 sourceBody342_180

def sourceBody342_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 26])

def sourceBody342_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody342_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody342_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody342_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 22

def sourceBody342_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_186 sourceBody342_0

def sourceBody342_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_185 sourceBody342_187

def sourceBody342_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_188 sourceBody342_0

def sourceBody342_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_184 sourceBody342_189

def sourceBody342_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_190

def sourceBody342_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_183 sourceBody342_191

def sourceBody342_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_192

def sourceBody342_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody342_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody342_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_195 sourceBody342_189

def sourceBody342_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_196

def sourceBody342_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_194 sourceBody342_197

def sourceBody342_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_198

def sourceBody342_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_193 sourceBody342_199

def sourceBody342_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody342_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody342_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_202 sourceBody342_189

def sourceBody342_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_203

def sourceBody342_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_201 sourceBody342_204

def sourceBody342_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_205

def sourceBody342_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_200 sourceBody342_206

def sourceBody342_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody342_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody342_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_209 sourceBody342_0

def sourceBody342_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_210 sourceBody342_0

def sourceBody342_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_208 sourceBody342_211

def sourceBody342_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_212

def sourceBody342_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_207 sourceBody342_213

def sourceBody342_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_182 sourceBody342_214

def sourceBody342_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_181 sourceBody342_215

def sourceBody342_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_175 sourceBody342_216

def sourceBody342_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_123 sourceBody342_217

def sourceBody342_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_218

def sourceBody342_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_122 sourceBody342_219

def sourceBody342_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_220

def sourceBody342_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_221

def sourceBody342_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_116 sourceBody342_222

def sourceBody342_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_223

def sourceBody342_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_224

def sourceBody342_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_225

def sourceBody342_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_226

def sourceBody342_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_108 sourceBody342_227

def sourceBody342_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_228

def sourceBody342_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_229

def sourceBody342_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_230

def sourceBody342_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_231

def sourceBody342_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_100 sourceBody342_232

def sourceBody342_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_233

def sourceBody342_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_234

def sourceBody342_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_90 sourceBody342_235

def sourceBody342_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_68 sourceBody342_236

def sourceBody342_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_237

def sourceBody342_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_238

def sourceBody342_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_239

def sourceBody342_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_240

def sourceBody342_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_60 sourceBody342_241

def sourceBody342_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_37 sourceBody342_242

def sourceBody342_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_243

def sourceBody342_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_244

def sourceBody342_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_245

def sourceBody342_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_246

def sourceBody342_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_247

def sourceBody342_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_248

def sourceBody342_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_249

def sourceBody342_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_250

def sourceBody342_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_251 sourceBody342_163

def sourceBody342_253 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody342_252 sourceBody342_165

def sourceBody342_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_253 sourceBody342_5

def sourceBody342_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_254 sourceBody342_0

def sourceBody342_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_29 sourceBody342_255

def sourceBody342_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_28 sourceBody342_256

def sourceBody342_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_24 sourceBody342_257

def sourceBody342_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_23 sourceBody342_258

def sourceBody342_260 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody342_259 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody342_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_260 sourceBody342_5

def sourceBody342_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_5 sourceBody342_261

def sourceBody342_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 36)

def sourceBody342_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody342_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48, 8]

def sourceBody342_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_265 sourceBody342_0

def sourceBody342_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_264 sourceBody342_266

def sourceBody342_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_263 sourceBody342_267

def sourceBody342_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_262 sourceBody342_268

def sourceBody342_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_22 sourceBody342_269

def sourceBody342_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_270

def sourceBody342_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_21 sourceBody342_271

def sourceBody342_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_272

def sourceBody342_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_273

def sourceBody342_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_9 sourceBody342_274

def sourceBody342_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_275

def sourceBody342_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_276

def sourceBody342_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_277

def sourceBody342_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody342_0 sourceBody342_278

def source342 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (342, 3, sourceBody342_279)
end InitECandidate.Proofs.WordStages
