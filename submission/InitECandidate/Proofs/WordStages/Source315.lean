import InitECandidate.Proofs.WordStages.Source299
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody315_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody315_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody315_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody315_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 22) sourceBody315_7 sourceBody315_8

def sourceBody315_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_9 sourceBody315_4

def sourceBody315_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody315_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_13 sourceBody315_0

def sourceBody315_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_14 sourceBody315_0

def sourceBody315_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 2)

def sourceBody315_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 14) sourceBody315_18 sourceBody315_19

def sourceBody315_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_20 sourceBody315_4

def sourceBody315_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 48)

def sourceBody315_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody315_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody315_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody315_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 2)) (some 296) ([30, 48, 14, 32]) (some (30, sourceBody315_27, 315, 3))

def sourceBody315_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_28 sourceBody315_4

def sourceBody315_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_29 sourceBody315_0

def sourceBody315_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_26 sourceBody315_30

def sourceBody315_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_25 sourceBody315_31

def sourceBody315_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_24 sourceBody315_32

def sourceBody315_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_23 sourceBody315_33

def sourceBody315_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody315_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody315_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 32) sourceBody315_38 sourceBody315_17

def sourceBody315_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_39 sourceBody315_4

def sourceBody315_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody315_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody315_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody315_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 4)) (some 286) ([14]) (some (14, sourceBody315_43, 315, 5))

def sourceBody315_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_44 sourceBody315_4

def sourceBody315_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_45 sourceBody315_0

def sourceBody315_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_42 sourceBody315_46

def sourceBody315_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_47

def sourceBody315_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_48

def sourceBody315_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody315_49 sourceBody315_0

def sourceBody315_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_50 sourceBody315_4

def sourceBody315_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_51 sourceBody315_0

def sourceBody315_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_41 sourceBody315_52

def sourceBody315_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_40 sourceBody315_53

def sourceBody315_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_37 sourceBody315_54

def sourceBody315_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_36 sourceBody315_55

def sourceBody315_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody315_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 6)) (some 299) ([14]) (some (14, sourceBody315_43, 315, 7))

def sourceBody315_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_58 sourceBody315_4

def sourceBody315_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_59 sourceBody315_0

def sourceBody315_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_57 sourceBody315_60

def sourceBody315_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_61

def sourceBody315_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_62

def sourceBody315_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_56 sourceBody315_63

def sourceBody315_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody315_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody315_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody315_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 8)) (some 313) ([48, 14, 32, 24, 40]) (some (48, sourceBody315_70, 315, 9))

def sourceBody315_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_71 sourceBody315_4

def sourceBody315_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_72 sourceBody315_0

def sourceBody315_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_69 sourceBody315_73

def sourceBody315_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_68 sourceBody315_74

def sourceBody315_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_67 sourceBody315_75

def sourceBody315_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_66 sourceBody315_76

def sourceBody315_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_16 sourceBody315_77

def sourceBody315_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody315_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody315_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody315_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody315_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def sourceBody315_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody315_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 10)) (some 291) ([24, 40, 20, 36]) (some (24, sourceBody315_86, 315, 11))

def sourceBody315_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_87 sourceBody315_4

def sourceBody315_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_88 sourceBody315_0

def sourceBody315_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_85 sourceBody315_89

def sourceBody315_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_84 sourceBody315_90

def sourceBody315_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_83 sourceBody315_91

def sourceBody315_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_82 sourceBody315_92

def sourceBody315_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody315_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody315_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 20) sourceBody315_96 sourceBody315_97

def sourceBody315_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_98 sourceBody315_4

def sourceBody315_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody315_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody315_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_101 sourceBody315_0

def sourceBody315_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_102 sourceBody315_0

def sourceBody315_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody315_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_104 sourceBody315_0

def sourceBody315_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_105 sourceBody315_0

def sourceBody315_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_103 sourceBody315_106

def sourceBody315_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody315_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_108 sourceBody315_0

def sourceBody315_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_109 sourceBody315_0

def sourceBody315_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_107 sourceBody315_110

def sourceBody315_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 32])

def sourceBody315_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_112 sourceBody315_0

def sourceBody315_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_113 sourceBody315_0

def sourceBody315_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_111 sourceBody315_114

def sourceBody315_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_3 sourceBody315_0

def sourceBody315_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_116 sourceBody315_0

def sourceBody315_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_115 sourceBody315_117

def sourceBody315_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody315_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody315_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody315_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody315_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody315_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 12)) (some 314) ([40, 20, 36, 28, 46, 18]) (some (40, sourceBody315_123, 315, 13))

def sourceBody315_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_124 sourceBody315_4

def sourceBody315_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_125 sourceBody315_0

def sourceBody315_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_122 sourceBody315_126

def sourceBody315_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_121 sourceBody315_127

def sourceBody315_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_120 sourceBody315_128

def sourceBody315_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_85 sourceBody315_129

def sourceBody315_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_84 sourceBody315_130

def sourceBody315_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_119 sourceBody315_131

def sourceBody315_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody315_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody315_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody315_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 36) sourceBody315_135 sourceBody315_133

def sourceBody315_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_136 sourceBody315_4

def sourceBody315_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody315_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 48)

def sourceBody315_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def sourceBody315_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody315_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody315_0, 315, 14)) (some 297) ([40, 20, 36]) (some (40, sourceBody315_123, 315, 15))

def sourceBody315_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_142 sourceBody315_4

def sourceBody315_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_143 sourceBody315_0

def sourceBody315_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_141 sourceBody315_144

def sourceBody315_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_140 sourceBody315_145

def sourceBody315_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_139 sourceBody315_146

def sourceBody315_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody315_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_148 sourceBody315_0

def sourceBody315_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_149 sourceBody315_0

def sourceBody315_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody315_147 sourceBody315_150

def sourceBody315_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_151 sourceBody315_4

def sourceBody315_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_152 sourceBody315_0

def sourceBody315_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_138 sourceBody315_153

def sourceBody315_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_137 sourceBody315_154

def sourceBody315_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_134 sourceBody315_155

def sourceBody315_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_133 sourceBody315_156

def sourceBody315_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_132 sourceBody315_157

def sourceBody315_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_158

def sourceBody315_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_159

def sourceBody315_161 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody315_118 sourceBody315_160

def sourceBody315_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_161 sourceBody315_4

def sourceBody315_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_162 sourceBody315_0

def sourceBody315_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_100 sourceBody315_163

def sourceBody315_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_99 sourceBody315_164

def sourceBody315_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_95 sourceBody315_165

def sourceBody315_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_94 sourceBody315_166

def sourceBody315_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_93 sourceBody315_167

def sourceBody315_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_168

def sourceBody315_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_169

def sourceBody315_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_81 sourceBody315_170

def sourceBody315_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_171

def sourceBody315_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_80 sourceBody315_172

def sourceBody315_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_173

def sourceBody315_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody315_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody315_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody315_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody315_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 48) 32

def sourceBody315_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_179 sourceBody315_0

def sourceBody315_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_178 sourceBody315_180

def sourceBody315_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_181 sourceBody315_0

def sourceBody315_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_25 sourceBody315_182

def sourceBody315_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_183

def sourceBody315_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_177 sourceBody315_184

def sourceBody315_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_185

def sourceBody315_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody315_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody315_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_188 sourceBody315_182

def sourceBody315_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_189

def sourceBody315_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_187 sourceBody315_190

def sourceBody315_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_191

def sourceBody315_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_186 sourceBody315_192

def sourceBody315_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_193 sourceBody315_103

def sourceBody315_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody315_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 48 (Flapjack.WordLangAddr.addr 48 0#64))

def sourceBody315_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_196 sourceBody315_0

def sourceBody315_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_195 sourceBody315_197

def sourceBody315_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def sourceBody315_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody315_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_200 sourceBody315_0

def sourceBody315_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_201 sourceBody315_0

def sourceBody315_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_103 sourceBody315_202

def sourceBody315_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody315_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_204 sourceBody315_0

def sourceBody315_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_205 sourceBody315_0

def sourceBody315_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_203 sourceBody315_206

def sourceBody315_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody315_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_208 sourceBody315_0

def sourceBody315_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_209 sourceBody315_0

def sourceBody315_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_207 sourceBody315_210

def sourceBody315_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_211 sourceBody315_117

def sourceBody315_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_199 sourceBody315_212

def sourceBody315_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_198 sourceBody315_213

def sourceBody315_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody315_194 sourceBody315_214

def sourceBody315_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_215 sourceBody315_4

def sourceBody315_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_216 sourceBody315_0

def sourceBody315_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_41 sourceBody315_217

def sourceBody315_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_40 sourceBody315_218

def sourceBody315_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_176 sourceBody315_219

def sourceBody315_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_175 sourceBody315_220

def sourceBody315_222 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody315_174 sourceBody315_221

def sourceBody315_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_222 sourceBody315_4

def sourceBody315_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_223 sourceBody315_0

def sourceBody315_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_41 sourceBody315_224

def sourceBody315_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_40 sourceBody315_225

def sourceBody315_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_79 sourceBody315_226

def sourceBody315_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_36 sourceBody315_227

def sourceBody315_229 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody315_78 sourceBody315_228

def sourceBody315_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_229 sourceBody315_4

def sourceBody315_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_230 sourceBody315_0

def sourceBody315_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_41 sourceBody315_231

def sourceBody315_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_40 sourceBody315_232

def sourceBody315_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_65 sourceBody315_233

def sourceBody315_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_36 sourceBody315_234

def sourceBody315_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_64 sourceBody315_235

def sourceBody315_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_35 sourceBody315_236

def sourceBody315_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_237

def sourceBody315_239 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody315_34 sourceBody315_238

def sourceBody315_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_239 sourceBody315_4

def sourceBody315_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_240 sourceBody315_0

def sourceBody315_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_22 sourceBody315_241

def sourceBody315_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_21 sourceBody315_242

def sourceBody315_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_17 sourceBody315_243

def sourceBody315_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_16 sourceBody315_244

def sourceBody315_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_15 sourceBody315_245

def sourceBody315_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def sourceBody315_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 26)

def sourceBody315_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_248 sourceBody315_0

def sourceBody315_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_249 sourceBody315_0

def sourceBody315_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody315_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody315_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 14

def sourceBody315_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_253 sourceBody315_0

def sourceBody315_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_199 sourceBody315_254

def sourceBody315_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_255 sourceBody315_0

def sourceBody315_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_252 sourceBody315_256

def sourceBody315_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_257

def sourceBody315_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_251 sourceBody315_258

def sourceBody315_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_259

def sourceBody315_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody315_250 sourceBody315_260

def sourceBody315_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_261 sourceBody315_4

def sourceBody315_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_262 sourceBody315_0

def sourceBody315_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_22 sourceBody315_263

def sourceBody315_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_21 sourceBody315_264

def sourceBody315_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_17 sourceBody315_265

def sourceBody315_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_247 sourceBody315_266

def sourceBody315_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_246 sourceBody315_267

def sourceBody315_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 42)

def sourceBody315_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_269 sourceBody315_0

def sourceBody315_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_270 sourceBody315_0

def sourceBody315_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_268 sourceBody315_271

def sourceBody315_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody315_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_273 sourceBody315_0

def sourceBody315_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_274 sourceBody315_0

def sourceBody315_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_272 sourceBody315_275

def sourceBody315_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 38)

def sourceBody315_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_277 sourceBody315_0

def sourceBody315_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_278 sourceBody315_0

def sourceBody315_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_276 sourceBody315_279

def sourceBody315_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_12 sourceBody315_280

def sourceBody315_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_281

def sourceBody315_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_6 sourceBody315_282

def sourceBody315_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_283

def sourceBody315_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_8 sourceBody315_284

def sourceBody315_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_285

def sourceBody315_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_286

def sourceBody315_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_287

def sourceBody315_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody315_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_288 sourceBody315_289

def sourceBody315_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody315_292 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody315_290 sourceBody315_291

def sourceBody315_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_292 sourceBody315_4

def sourceBody315_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_293 sourceBody315_0

def sourceBody315_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_11 sourceBody315_294

def sourceBody315_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_10 sourceBody315_295

def sourceBody315_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_6 sourceBody315_296

def sourceBody315_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_5 sourceBody315_297

def sourceBody315_299 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody315_298 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody315_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_299 sourceBody315_4

def sourceBody315_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_4 sourceBody315_300

def sourceBody315_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody315_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody315_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_303 sourceBody315_0

def sourceBody315_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_302 sourceBody315_304

def sourceBody315_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_301 sourceBody315_305

def sourceBody315_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_3 sourceBody315_306

def sourceBody315_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_307

def sourceBody315_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_2 sourceBody315_308

def sourceBody315_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_309

def sourceBody315_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_1 sourceBody315_310

def sourceBody315_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody315_0 sourceBody315_311

def source315 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (315, 7, sourceBody315_312)
end InitECandidate.Proofs.WordStages
