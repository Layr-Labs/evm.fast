import InitECandidate.Proofs.WordStages.Source173
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody189_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody189_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody189_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody189_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody189_0, 189, 2)) (some 188) ([20]) (some (20, sourceBody189_2, 189, 3))

def sourceBody189_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody189_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_3 sourceBody189_4

def sourceBody189_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_5 sourceBody189_0

def sourceBody189_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_1 sourceBody189_6

def sourceBody189_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody189_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody189_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody189_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody189_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 8 18))

def sourceBody189_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]),
      Flapjack.WordLangExpHOL.var 14])

def sourceBody189_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody189_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody189_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody189_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody189_0, 189, 4)) (some 77) ([24, 12, 22]) (some (8, sourceBody189_16, 189, 5))

def sourceBody189_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_17 sourceBody189_4

def sourceBody189_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_18 sourceBody189_0

def sourceBody189_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_15 sourceBody189_19

def sourceBody189_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_14 sourceBody189_20

def sourceBody189_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_13 sourceBody189_21

def sourceBody189_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_12 sourceBody189_22

def sourceBody189_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_11 sourceBody189_23

def sourceBody189_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_10 sourceBody189_24

def sourceBody189_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_25

def sourceBody189_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_26

def sourceBody189_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody189_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody189_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody189_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody189_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 14

def sourceBody189_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_32 sourceBody189_0

def sourceBody189_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_31 sourceBody189_33

def sourceBody189_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_34 sourceBody189_0

def sourceBody189_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_30 sourceBody189_35

def sourceBody189_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_36

def sourceBody189_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_29 sourceBody189_37

def sourceBody189_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_38

def sourceBody189_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody189_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody189_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_41 sourceBody189_35

def sourceBody189_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_42

def sourceBody189_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_40 sourceBody189_43

def sourceBody189_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_44

def sourceBody189_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_39 sourceBody189_45

def sourceBody189_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody189_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody189_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody189_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody189_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 24

def sourceBody189_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_51 sourceBody189_0

def sourceBody189_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_50 sourceBody189_52

def sourceBody189_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_53 sourceBody189_0

def sourceBody189_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_49 sourceBody189_54

def sourceBody189_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_55

def sourceBody189_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_48 sourceBody189_56

def sourceBody189_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_57

def sourceBody189_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody189_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody189_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_60 sourceBody189_54

def sourceBody189_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_61

def sourceBody189_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_59 sourceBody189_62

def sourceBody189_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_63

def sourceBody189_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_58 sourceBody189_64

def sourceBody189_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody189_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody189_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_67 sourceBody189_54

def sourceBody189_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_68

def sourceBody189_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_66 sourceBody189_69

def sourceBody189_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_70

def sourceBody189_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_65 sourceBody189_71

def sourceBody189_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody189_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody189_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_74 sourceBody189_54

def sourceBody189_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_75

def sourceBody189_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_73 sourceBody189_76

def sourceBody189_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_77

def sourceBody189_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_72 sourceBody189_78

def sourceBody189_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody189_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody189_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_81 sourceBody189_0

def sourceBody189_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_80 sourceBody189_82

def sourceBody189_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_79 sourceBody189_83

def sourceBody189_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_47 sourceBody189_84

def sourceBody189_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_85

def sourceBody189_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_46 sourceBody189_86

def sourceBody189_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_28 sourceBody189_87

def sourceBody189_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_88

def sourceBody189_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_27 sourceBody189_89

def sourceBody189_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_9 sourceBody189_90

def sourceBody189_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_91

def sourceBody189_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_8 sourceBody189_92

def sourceBody189_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_93

def sourceBody189_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_7 sourceBody189_94

def sourceBody189_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_95

def sourceBody189_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody189_0 sourceBody189_96

def source189 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (189, 4, sourceBody189_97)
end InitECandidate.Proofs.WordStages
