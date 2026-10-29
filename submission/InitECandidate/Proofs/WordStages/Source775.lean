import InitECandidate.Proofs.WordStages.Source759
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody775_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody775_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody775_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody775_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody775_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody775_0, 775, 2)) (some 727) ([12, 40]) (some (12, sourceBody775_3, 775, 3))

def sourceBody775_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody775_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_4 sourceBody775_5

def sourceBody775_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_6 sourceBody775_0

def sourceBody775_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_2 sourceBody775_7

def sourceBody775_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_1 sourceBody775_8

def sourceBody775_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 48)

def sourceBody775_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 26) sourceBody775_12 sourceBody775_13

def sourceBody775_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_14 sourceBody775_5

def sourceBody775_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody775_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody775_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_18 sourceBody775_0

def sourceBody775_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_17 sourceBody775_19

def sourceBody775_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody775_20 sourceBody775_0

def sourceBody775_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_21 sourceBody775_5

def sourceBody775_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_22 sourceBody775_0

def sourceBody775_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_16 sourceBody775_23

def sourceBody775_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_15 sourceBody775_24

def sourceBody775_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_11 sourceBody775_25

def sourceBody775_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_10 sourceBody775_26

def sourceBody775_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody775_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody775_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody775_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody775_0, 775, 4)) (some 727) ([40, 26]) (some (40, sourceBody775_30, 775, 5))

def sourceBody775_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_31 sourceBody775_5

def sourceBody775_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_32 sourceBody775_0

def sourceBody775_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_29 sourceBody775_33

def sourceBody775_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_28 sourceBody775_34

def sourceBody775_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody775_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 56) sourceBody775_38 sourceBody775_11

def sourceBody775_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_39 sourceBody775_5

def sourceBody775_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody775_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40]

def sourceBody775_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_42 sourceBody775_0

def sourceBody775_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_13 sourceBody775_43

def sourceBody775_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody775_44 sourceBody775_0

def sourceBody775_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_45 sourceBody775_5

def sourceBody775_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_46 sourceBody775_0

def sourceBody775_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_41 sourceBody775_47

def sourceBody775_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_40 sourceBody775_48

def sourceBody775_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_37 sourceBody775_49

def sourceBody775_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_36 sourceBody775_50

def sourceBody775_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def sourceBody775_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody775_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody775_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody775_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody775_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody775_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody775_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody775_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody775_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody775_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody775_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody775_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 40)

def sourceBody775_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 26)

def sourceBody775_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 56)

def sourceBody775_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 8)

def sourceBody775_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 36)

def sourceBody775_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 22)

def sourceBody775_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody775_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody775_0, 775, 6)) (some 705) ([20, 50, 14, 42, 28, 58]) (some (20, sourceBody775_70, 775, 7))

def sourceBody775_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_71 sourceBody775_5

def sourceBody775_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_72 sourceBody775_0

def sourceBody775_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_69 sourceBody775_73

def sourceBody775_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_68 sourceBody775_74

def sourceBody775_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_67 sourceBody775_75

def sourceBody775_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_66 sourceBody775_76

def sourceBody775_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_65 sourceBody775_77

def sourceBody775_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_64 sourceBody775_78

def sourceBody775_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody775_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody775_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody775_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody775_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def sourceBody775_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody775_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody775_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody775_0, 775, 8)) (some 705) ([50, 14, 42, 28, 58, 10]) (some (50, sourceBody775_86, 775, 9))

def sourceBody775_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_87 sourceBody775_5

def sourceBody775_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_88 sourceBody775_0

def sourceBody775_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_85 sourceBody775_89

def sourceBody775_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_84 sourceBody775_90

def sourceBody775_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_83 sourceBody775_91

def sourceBody775_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_82 sourceBody775_92

def sourceBody775_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_81 sourceBody775_93

def sourceBody775_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_80 sourceBody775_94

def sourceBody775_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 34)

def sourceBody775_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 42) sourceBody775_98 sourceBody775_99

def sourceBody775_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_100 sourceBody775_5

def sourceBody775_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody775_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 10) sourceBody775_104 sourceBody775_102

def sourceBody775_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_105 sourceBody775_5

def sourceBody775_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody775_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 54) sourceBody775_109 sourceBody775_110

def sourceBody775_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_111 sourceBody775_5

def sourceBody775_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody775_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.reg 32) sourceBody775_115 sourceBody775_113

def sourceBody775_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_116 sourceBody775_5

def sourceBody775_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.var 46])

def sourceBody775_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody775_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody775_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody775_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 50) 24

def sourceBody775_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_125 sourceBody775_0

def sourceBody775_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_124 sourceBody775_126

def sourceBody775_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody775_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 8#64])
  24

def sourceBody775_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_129 sourceBody775_0

def sourceBody775_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_128 sourceBody775_130

def sourceBody775_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody775_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 16#64])
  24

def sourceBody775_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_133 sourceBody775_0

def sourceBody775_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_132 sourceBody775_134

def sourceBody775_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def sourceBody775_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 24#64])
  24

def sourceBody775_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_137 sourceBody775_0

def sourceBody775_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_136 sourceBody775_138

def sourceBody775_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody775_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 32#64])
  24

def sourceBody775_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_141 sourceBody775_0

def sourceBody775_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_140 sourceBody775_142

def sourceBody775_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody775_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 40#64])
  24

def sourceBody775_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_145 sourceBody775_0

def sourceBody775_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_144 sourceBody775_146

def sourceBody775_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_147 sourceBody775_0

def sourceBody775_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_143 sourceBody775_148

def sourceBody775_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_139 sourceBody775_149

def sourceBody775_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_135 sourceBody775_150

def sourceBody775_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_131 sourceBody775_151

def sourceBody775_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_127 sourceBody775_152

def sourceBody775_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_123 sourceBody775_153

def sourceBody775_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_154

def sourceBody775_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_122 sourceBody775_155

def sourceBody775_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_156

def sourceBody775_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_102 sourceBody775_157

def sourceBody775_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_158

def sourceBody775_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_121 sourceBody775_159

def sourceBody775_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_160

def sourceBody775_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_120 sourceBody775_161

def sourceBody775_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_162

def sourceBody775_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_99 sourceBody775_163

def sourceBody775_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_164

def sourceBody775_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_119 sourceBody775_165

def sourceBody775_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_166

def sourceBody775_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody775_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [50]

def sourceBody775_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_169 sourceBody775_0

def sourceBody775_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_168 sourceBody775_170

def sourceBody775_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_167 sourceBody775_171

def sourceBody775_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 62 (Flapjack.WordRegImm.imm 0#64) sourceBody775_172 sourceBody775_0

def sourceBody775_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_173 sourceBody775_5

def sourceBody775_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_174 sourceBody775_0

def sourceBody775_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_118 sourceBody775_175

def sourceBody775_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_117 sourceBody775_176

def sourceBody775_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_114 sourceBody775_177

def sourceBody775_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_113 sourceBody775_178

def sourceBody775_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_112 sourceBody775_179

def sourceBody775_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_108 sourceBody775_180

def sourceBody775_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_107 sourceBody775_181

def sourceBody775_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_106 sourceBody775_182

def sourceBody775_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_103 sourceBody775_183

def sourceBody775_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_102 sourceBody775_184

def sourceBody775_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_101 sourceBody775_185

def sourceBody775_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_97 sourceBody775_186

def sourceBody775_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_96 sourceBody775_187

def sourceBody775_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8505329371266088957#64)

def sourceBody775_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 17002214543764226050#64)

def sourceBody775_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 6865905132761471162#64)

def sourceBody775_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 8632934651105793861#64)

def sourceBody775_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6631298214892334189#64)

def sourceBody775_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1582556514881692819#64)

def sourceBody775_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_194 sourceBody775_153

def sourceBody775_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_195

def sourceBody775_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_193 sourceBody775_196

def sourceBody775_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_197

def sourceBody775_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_192 sourceBody775_198

def sourceBody775_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_199

def sourceBody775_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_191 sourceBody775_200

def sourceBody775_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_201

def sourceBody775_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_190 sourceBody775_202

def sourceBody775_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_203

def sourceBody775_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_189 sourceBody775_204

def sourceBody775_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_205

def sourceBody775_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_119 sourceBody775_206

def sourceBody775_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_207

def sourceBody775_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_188 sourceBody775_208

def sourceBody775_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 40)

def sourceBody775_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody775_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 56)

def sourceBody775_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody775_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody775_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody775_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 52)

def sourceBody775_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody775_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 44)

def sourceBody775_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody775_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 60)

def sourceBody775_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody775_222 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 774) ([0, 50, 14, 42, 28, 58, 10, 38, 24, 54, 18, 46, 32]) (none)

def sourceBody775_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_222 sourceBody775_0

def sourceBody775_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_221 sourceBody775_223

def sourceBody775_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_220 sourceBody775_224

def sourceBody775_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_219 sourceBody775_225

def sourceBody775_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_218 sourceBody775_226

def sourceBody775_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_217 sourceBody775_227

def sourceBody775_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_216 sourceBody775_228

def sourceBody775_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_215 sourceBody775_229

def sourceBody775_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_214 sourceBody775_230

def sourceBody775_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_213 sourceBody775_231

def sourceBody775_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_212 sourceBody775_232

def sourceBody775_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_211 sourceBody775_233

def sourceBody775_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_210 sourceBody775_234

def sourceBody775_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_209 sourceBody775_235

def sourceBody775_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_95 sourceBody775_236

def sourceBody775_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_237

def sourceBody775_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_238

def sourceBody775_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_79 sourceBody775_239

def sourceBody775_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_240

def sourceBody775_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_241

def sourceBody775_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_63 sourceBody775_242

def sourceBody775_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_243

def sourceBody775_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_62 sourceBody775_244

def sourceBody775_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_245

def sourceBody775_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_61 sourceBody775_246

def sourceBody775_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_247

def sourceBody775_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_60 sourceBody775_248

def sourceBody775_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_249

def sourceBody775_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_59 sourceBody775_250

def sourceBody775_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_251

def sourceBody775_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_58 sourceBody775_252

def sourceBody775_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_253

def sourceBody775_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_57 sourceBody775_254

def sourceBody775_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_255

def sourceBody775_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_56 sourceBody775_256

def sourceBody775_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_257

def sourceBody775_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_55 sourceBody775_258

def sourceBody775_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_259

def sourceBody775_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_54 sourceBody775_260

def sourceBody775_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_261

def sourceBody775_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_53 sourceBody775_262

def sourceBody775_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_263

def sourceBody775_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_52 sourceBody775_264

def sourceBody775_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_265

def sourceBody775_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_51 sourceBody775_266

def sourceBody775_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_35 sourceBody775_267

def sourceBody775_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_268

def sourceBody775_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_269

def sourceBody775_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_27 sourceBody775_270

def sourceBody775_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_9 sourceBody775_271

def sourceBody775_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_272

def sourceBody775_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody775_0 sourceBody775_273

def source775 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (775, 3, sourceBody775_274)
end InitECandidate.Proofs.WordStages
