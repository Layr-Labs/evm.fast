import InitECandidate.Proofs.WordStages.Source637
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody653_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody653_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody653_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody653_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody653_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody653_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 22)

def sourceBody653_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 56)

def sourceBody653_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody653_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 48)

def sourceBody653_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody653_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody653_0, 653, 2)) (some 102) ([66, 8, 44, 28]) (some (66, sourceBody653_9, 653, 3))

def sourceBody653_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody653_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_10 sourceBody653_11

def sourceBody653_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_12 sourceBody653_0

def sourceBody653_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_8 sourceBody653_13

def sourceBody653_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_7 sourceBody653_14

def sourceBody653_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_6 sourceBody653_15

def sourceBody653_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_5 sourceBody653_16

def sourceBody653_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody653_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody653_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody653_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody653_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 44) sourceBody653_20 sourceBody653_21

def sourceBody653_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_22 sourceBody653_11

def sourceBody653_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody653_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody653_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [66]

def sourceBody653_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_26 sourceBody653_0

def sourceBody653_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_25 sourceBody653_27

def sourceBody653_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody653_28 sourceBody653_0

def sourceBody653_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_29 sourceBody653_11

def sourceBody653_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_30 sourceBody653_0

def sourceBody653_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_24 sourceBody653_31

def sourceBody653_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_23 sourceBody653_32

def sourceBody653_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_19 sourceBody653_33

def sourceBody653_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_18 sourceBody653_34

def sourceBody653_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 22)

def sourceBody653_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 56)

def sourceBody653_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 12)

def sourceBody653_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 48)

def sourceBody653_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody653_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([66, 8, 44, 28]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody653_0, 653, 4)) (some 647) ([62, 18, 52, 36]) (some (62, sourceBody653_40, 653, 5))

def sourceBody653_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_41 sourceBody653_11

def sourceBody653_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_42 sourceBody653_0

def sourceBody653_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_39 sourceBody653_43

def sourceBody653_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_38 sourceBody653_44

def sourceBody653_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_37 sourceBody653_45

def sourceBody653_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_36 sourceBody653_46

def sourceBody653_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 66)

def sourceBody653_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody653_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody653_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody653_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def sourceBody653_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([62, 18, 52, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody653_0, 653, 6)) (some 646) ([70, 6, 42, 26]) (some (70, sourceBody653_52, 653, 7))

def sourceBody653_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_53 sourceBody653_11

def sourceBody653_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_54 sourceBody653_0

def sourceBody653_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_51 sourceBody653_55

def sourceBody653_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_50 sourceBody653_56

def sourceBody653_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_49 sourceBody653_57

def sourceBody653_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_48 sourceBody653_58

def sourceBody653_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def sourceBody653_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody653_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody653_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody653_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 66)

def sourceBody653_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody653_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody653_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody653_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody653_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 6, 42, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody653_0, 653, 8)) (some 645) ([60, 16, 50, 34, 68, 10, 46, 30]) (some (60, sourceBody653_68, 653, 9))

def sourceBody653_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_69 sourceBody653_11

def sourceBody653_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_70 sourceBody653_0

def sourceBody653_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_67 sourceBody653_71

def sourceBody653_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_66 sourceBody653_72

def sourceBody653_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_65 sourceBody653_73

def sourceBody653_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_64 sourceBody653_74

def sourceBody653_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_63 sourceBody653_75

def sourceBody653_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_62 sourceBody653_76

def sourceBody653_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_61 sourceBody653_77

def sourceBody653_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_60 sourceBody653_78

def sourceBody653_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody653_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody653_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody653_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody653_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody653_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody653_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody653_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody653_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def sourceBody653_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody653_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody653_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody653_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 62)

def sourceBody653_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody653_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def sourceBody653_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody653_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def sourceBody653_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 16, 50, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody653_0, 653, 10)) (some 645) ([64, 20, 54, 38, 72, 4, 40, 24]) (some (64, sourceBody653_96, 653, 11))

def sourceBody653_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_97 sourceBody653_11

def sourceBody653_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_98 sourceBody653_0

def sourceBody653_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_95 sourceBody653_99

def sourceBody653_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_94 sourceBody653_100

def sourceBody653_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_93 sourceBody653_101

def sourceBody653_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_92 sourceBody653_102

def sourceBody653_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_91 sourceBody653_103

def sourceBody653_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_90 sourceBody653_104

def sourceBody653_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_89 sourceBody653_105

def sourceBody653_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_88 sourceBody653_106

def sourceBody653_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 68)

def sourceBody653_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody653_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 46)

def sourceBody653_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody653_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 70)

def sourceBody653_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody653_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody653_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody653_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 10, 46, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody653_0, 653, 12)) (some 645) ([64, 20, 54, 38, 72, 4, 40, 24]) (some (64, sourceBody653_96, 653, 13))

def sourceBody653_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_116 sourceBody653_11

def sourceBody653_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_117 sourceBody653_0

def sourceBody653_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_115 sourceBody653_118

def sourceBody653_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_114 sourceBody653_119

def sourceBody653_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_113 sourceBody653_120

def sourceBody653_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_112 sourceBody653_121

def sourceBody653_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_111 sourceBody653_122

def sourceBody653_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_110 sourceBody653_123

def sourceBody653_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_109 sourceBody653_124

def sourceBody653_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_108 sourceBody653_125

def sourceBody653_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_107 sourceBody653_126

def sourceBody653_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody653_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody653_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody653_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 50)

def sourceBody653_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 34)

def sourceBody653_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 68)

def sourceBody653_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody653_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 46)

def sourceBody653_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody653_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody653_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody653_0, 653, 14)) (some 649) ([20, 54, 38, 72, 4, 40, 24, 58, 14]) (some (20, sourceBody653_137, 653, 15))

def sourceBody653_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_138 sourceBody653_11

def sourceBody653_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_139 sourceBody653_0

def sourceBody653_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_136 sourceBody653_140

def sourceBody653_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_135 sourceBody653_141

def sourceBody653_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_134 sourceBody653_142

def sourceBody653_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_133 sourceBody653_143

def sourceBody653_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_132 sourceBody653_144

def sourceBody653_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_131 sourceBody653_145

def sourceBody653_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_130 sourceBody653_146

def sourceBody653_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_129 sourceBody653_147

def sourceBody653_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_128 sourceBody653_148

def sourceBody653_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_149

def sourceBody653_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_150

def sourceBody653_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_127 sourceBody653_151

def sourceBody653_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody653_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [64]

def sourceBody653_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_154 sourceBody653_0

def sourceBody653_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_153 sourceBody653_155

def sourceBody653_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_152 sourceBody653_156

def sourceBody653_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_87 sourceBody653_157

def sourceBody653_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_158

def sourceBody653_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_86 sourceBody653_159

def sourceBody653_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_160

def sourceBody653_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_85 sourceBody653_161

def sourceBody653_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_162

def sourceBody653_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_84 sourceBody653_163

def sourceBody653_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_164

def sourceBody653_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_83 sourceBody653_165

def sourceBody653_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_166

def sourceBody653_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_82 sourceBody653_167

def sourceBody653_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_168

def sourceBody653_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_81 sourceBody653_169

def sourceBody653_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_170

def sourceBody653_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_80 sourceBody653_171

def sourceBody653_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_172

def sourceBody653_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_79 sourceBody653_173

def sourceBody653_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_174

def sourceBody653_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_175

def sourceBody653_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_176

def sourceBody653_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_177

def sourceBody653_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_178

def sourceBody653_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_179

def sourceBody653_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_180

def sourceBody653_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_181

def sourceBody653_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_59 sourceBody653_182

def sourceBody653_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_183

def sourceBody653_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_184

def sourceBody653_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_185

def sourceBody653_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_186

def sourceBody653_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_187

def sourceBody653_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_188

def sourceBody653_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_189

def sourceBody653_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_190

def sourceBody653_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_47 sourceBody653_191

def sourceBody653_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_192

def sourceBody653_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_193

def sourceBody653_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_194

def sourceBody653_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_195

def sourceBody653_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_196

def sourceBody653_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_197

def sourceBody653_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_198

def sourceBody653_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_199

def sourceBody653_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_35 sourceBody653_200

def sourceBody653_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_17 sourceBody653_201

def sourceBody653_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_202

def sourceBody653_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_203

def sourceBody653_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_4 sourceBody653_204

def sourceBody653_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_205

def sourceBody653_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_3 sourceBody653_206

def sourceBody653_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_207

def sourceBody653_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_2 sourceBody653_208

def sourceBody653_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_209

def sourceBody653_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_1 sourceBody653_210

def sourceBody653_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody653_0 sourceBody653_211

def source653 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (653, 2, sourceBody653_212)
end InitECandidate.Proofs.WordStages
