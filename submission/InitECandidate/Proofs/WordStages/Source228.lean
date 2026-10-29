import InitECandidate.Proofs.WordStages.Source212
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody228_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody228_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody228_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody228_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody228_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody228_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 22)

def sourceBody228_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 56)

def sourceBody228_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody228_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 48)

def sourceBody228_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody228_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody228_0, 228, 2)) (some 102) ([66, 8, 44, 28]) (some (66, sourceBody228_9, 228, 3))

def sourceBody228_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody228_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_10 sourceBody228_11

def sourceBody228_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_12 sourceBody228_0

def sourceBody228_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_8 sourceBody228_13

def sourceBody228_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_7 sourceBody228_14

def sourceBody228_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_6 sourceBody228_15

def sourceBody228_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_5 sourceBody228_16

def sourceBody228_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody228_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody228_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody228_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody228_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 44) sourceBody228_20 sourceBody228_21

def sourceBody228_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_22 sourceBody228_11

def sourceBody228_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody228_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody228_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [66]

def sourceBody228_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_26 sourceBody228_0

def sourceBody228_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_25 sourceBody228_27

def sourceBody228_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody228_28 sourceBody228_0

def sourceBody228_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_29 sourceBody228_11

def sourceBody228_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_30 sourceBody228_0

def sourceBody228_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_24 sourceBody228_31

def sourceBody228_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_23 sourceBody228_32

def sourceBody228_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_19 sourceBody228_33

def sourceBody228_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_18 sourceBody228_34

def sourceBody228_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 22)

def sourceBody228_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 56)

def sourceBody228_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 12)

def sourceBody228_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 48)

def sourceBody228_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody228_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([66, 8, 44, 28]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody228_0, 228, 4)) (some 213) ([62, 18, 52, 36]) (some (62, sourceBody228_40, 228, 5))

def sourceBody228_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_41 sourceBody228_11

def sourceBody228_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_42 sourceBody228_0

def sourceBody228_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_39 sourceBody228_43

def sourceBody228_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_38 sourceBody228_44

def sourceBody228_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_37 sourceBody228_45

def sourceBody228_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_36 sourceBody228_46

def sourceBody228_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 66)

def sourceBody228_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody228_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody228_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody228_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def sourceBody228_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), sourceBody228_0, 228, 6)) (some 207) ([70, 6, 42, 26]) (some (70, sourceBody228_52, 228, 7))

def sourceBody228_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_53 sourceBody228_11

def sourceBody228_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_54 sourceBody228_0

def sourceBody228_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_51 sourceBody228_55

def sourceBody228_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_50 sourceBody228_56

def sourceBody228_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_49 sourceBody228_57

def sourceBody228_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_48 sourceBody228_58

def sourceBody228_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def sourceBody228_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody228_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody228_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody228_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 66)

def sourceBody228_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody228_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody228_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody228_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody228_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 6, 42, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody228_0, 228, 8)) (some 206) ([60, 16, 50, 34, 68, 10, 46, 30]) (some (60, sourceBody228_68, 228, 9))

def sourceBody228_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_69 sourceBody228_11

def sourceBody228_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_70 sourceBody228_0

def sourceBody228_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_67 sourceBody228_71

def sourceBody228_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_66 sourceBody228_72

def sourceBody228_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_65 sourceBody228_73

def sourceBody228_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_64 sourceBody228_74

def sourceBody228_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_63 sourceBody228_75

def sourceBody228_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_62 sourceBody228_76

def sourceBody228_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_61 sourceBody228_77

def sourceBody228_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_60 sourceBody228_78

def sourceBody228_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody228_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody228_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody228_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody228_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody228_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody228_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody228_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody228_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def sourceBody228_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody228_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody228_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody228_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 62)

def sourceBody228_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody228_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def sourceBody228_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody228_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def sourceBody228_97 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), sourceBody228_0, 228, 10)) (some 206) ([64, 20, 54, 38, 72, 4, 40, 24]) (some (64, sourceBody228_96, 228, 11))

def sourceBody228_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_97 sourceBody228_11

def sourceBody228_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_98 sourceBody228_0

def sourceBody228_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_95 sourceBody228_99

def sourceBody228_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_94 sourceBody228_100

def sourceBody228_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_93 sourceBody228_101

def sourceBody228_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_92 sourceBody228_102

def sourceBody228_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_91 sourceBody228_103

def sourceBody228_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_90 sourceBody228_104

def sourceBody228_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_89 sourceBody228_105

def sourceBody228_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_88 sourceBody228_106

def sourceBody228_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 68)

def sourceBody228_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody228_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 46)

def sourceBody228_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody228_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 70)

def sourceBody228_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody228_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody228_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody228_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 10, 46, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody228_0, 228, 12)) (some 206) ([64, 20, 54, 38, 72, 4, 40, 24]) (some (64, sourceBody228_96, 228, 13))

def sourceBody228_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_116 sourceBody228_11

def sourceBody228_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_117 sourceBody228_0

def sourceBody228_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_115 sourceBody228_118

def sourceBody228_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_114 sourceBody228_119

def sourceBody228_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_113 sourceBody228_120

def sourceBody228_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_112 sourceBody228_121

def sourceBody228_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_111 sourceBody228_122

def sourceBody228_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_110 sourceBody228_123

def sourceBody228_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_109 sourceBody228_124

def sourceBody228_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_108 sourceBody228_125

def sourceBody228_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_107 sourceBody228_126

def sourceBody228_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody228_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody228_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody228_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 50)

def sourceBody228_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 34)

def sourceBody228_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 68)

def sourceBody228_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody228_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 46)

def sourceBody228_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody228_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody228_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody228_0, 228, 14)) (some 221) ([20, 54, 38, 72, 4, 40, 24, 58, 14]) (some (20, sourceBody228_137, 228, 15))

def sourceBody228_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_138 sourceBody228_11

def sourceBody228_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_139 sourceBody228_0

def sourceBody228_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_136 sourceBody228_140

def sourceBody228_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_135 sourceBody228_141

def sourceBody228_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_134 sourceBody228_142

def sourceBody228_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_133 sourceBody228_143

def sourceBody228_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_132 sourceBody228_144

def sourceBody228_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_131 sourceBody228_145

def sourceBody228_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_130 sourceBody228_146

def sourceBody228_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_129 sourceBody228_147

def sourceBody228_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_128 sourceBody228_148

def sourceBody228_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_149

def sourceBody228_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_150

def sourceBody228_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_127 sourceBody228_151

def sourceBody228_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody228_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [64]

def sourceBody228_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_154 sourceBody228_0

def sourceBody228_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_153 sourceBody228_155

def sourceBody228_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_152 sourceBody228_156

def sourceBody228_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_87 sourceBody228_157

def sourceBody228_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_158

def sourceBody228_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_86 sourceBody228_159

def sourceBody228_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_160

def sourceBody228_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_85 sourceBody228_161

def sourceBody228_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_162

def sourceBody228_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_84 sourceBody228_163

def sourceBody228_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_164

def sourceBody228_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_83 sourceBody228_165

def sourceBody228_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_166

def sourceBody228_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_82 sourceBody228_167

def sourceBody228_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_168

def sourceBody228_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_81 sourceBody228_169

def sourceBody228_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_170

def sourceBody228_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_80 sourceBody228_171

def sourceBody228_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_172

def sourceBody228_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_79 sourceBody228_173

def sourceBody228_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_174

def sourceBody228_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_175

def sourceBody228_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_176

def sourceBody228_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_177

def sourceBody228_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_178

def sourceBody228_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_179

def sourceBody228_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_180

def sourceBody228_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_181

def sourceBody228_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_59 sourceBody228_182

def sourceBody228_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_183

def sourceBody228_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_184

def sourceBody228_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_185

def sourceBody228_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_186

def sourceBody228_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_187

def sourceBody228_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_188

def sourceBody228_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_189

def sourceBody228_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_190

def sourceBody228_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_47 sourceBody228_191

def sourceBody228_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_192

def sourceBody228_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_193

def sourceBody228_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_194

def sourceBody228_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_195

def sourceBody228_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_196

def sourceBody228_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_197

def sourceBody228_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_198

def sourceBody228_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_199

def sourceBody228_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_35 sourceBody228_200

def sourceBody228_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_17 sourceBody228_201

def sourceBody228_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_202

def sourceBody228_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_203

def sourceBody228_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_4 sourceBody228_204

def sourceBody228_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_205

def sourceBody228_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_3 sourceBody228_206

def sourceBody228_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_207

def sourceBody228_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_2 sourceBody228_208

def sourceBody228_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_209

def sourceBody228_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_1 sourceBody228_210

def sourceBody228_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody228_0 sourceBody228_211

def source228 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (228, 2, sourceBody228_212)
end InitECandidate.Proofs.WordStages
