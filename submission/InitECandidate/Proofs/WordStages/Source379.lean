import InitECandidate.Proofs.WordStages.Source363
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody379_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody379_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody379_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody379_0, 379, 2)) (some 69) ([]) (some (28, sourceBody379_1, 379, 3))

def sourceBody379_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody379_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_2 sourceBody379_3

def sourceBody379_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_4 sourceBody379_0

def sourceBody379_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody379_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody379_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody379_0, 379, 4)) (some 68) ([20]) (some (20, sourceBody379_7, 379, 5))

def sourceBody379_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_8 sourceBody379_3

def sourceBody379_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_9 sourceBody379_0

def sourceBody379_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_6 sourceBody379_10

def sourceBody379_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody379_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody379_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody379_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody379_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody379_0, 379, 6)) (some 378) ([34, 10, 26]) (some (34, sourceBody379_15, 379, 7))

def sourceBody379_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_16 sourceBody379_3

def sourceBody379_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_17 sourceBody379_0

def sourceBody379_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_14 sourceBody379_18

def sourceBody379_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_13 sourceBody379_19

def sourceBody379_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_12 sourceBody379_20

def sourceBody379_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody379_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64]))

def sourceBody379_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody379_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody379_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody379_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64]))

def sourceBody379_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody379_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody379_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody379_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody379_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody379_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody379_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody379_0, 379, 8)) (some 231) ([10, 26, 18, 32, 14, 30, 22, 36, 8, 24, 16]) (some (10, sourceBody379_33, 379, 9))

def sourceBody379_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_34 sourceBody379_3

def sourceBody379_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_35 sourceBody379_0

def sourceBody379_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_32 sourceBody379_36

def sourceBody379_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_31 sourceBody379_37

def sourceBody379_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_30 sourceBody379_38

def sourceBody379_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_29 sourceBody379_39

def sourceBody379_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_28 sourceBody379_40

def sourceBody379_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_27 sourceBody379_41

def sourceBody379_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_26 sourceBody379_42

def sourceBody379_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_25 sourceBody379_43

def sourceBody379_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_24 sourceBody379_44

def sourceBody379_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_23 sourceBody379_45

def sourceBody379_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_22 sourceBody379_46

def sourceBody379_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody379_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody379_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody379_0, 379, 10)) (some 70) ([26]) (some (26, sourceBody379_49, 379, 11))

def sourceBody379_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_50 sourceBody379_3

def sourceBody379_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_51 sourceBody379_0

def sourceBody379_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_48 sourceBody379_52

def sourceBody379_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_53

def sourceBody379_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_54

def sourceBody379_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody379_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody379_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody379_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody379_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 18) sourceBody379_58 sourceBody379_59

def sourceBody379_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_60 sourceBody379_3

def sourceBody379_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody379_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 46#64)

def sourceBody379_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody379_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_64 sourceBody379_0

def sourceBody379_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_65 sourceBody379_0

def sourceBody379_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_63 sourceBody379_66

def sourceBody379_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_67

def sourceBody379_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody379_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_69 sourceBody379_33

def sourceBody379_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_68 sourceBody379_70

def sourceBody379_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody379_71 sourceBody379_0

def sourceBody379_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_72 sourceBody379_3

def sourceBody379_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_73 sourceBody379_0

def sourceBody379_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_62 sourceBody379_74

def sourceBody379_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_61 sourceBody379_75

def sourceBody379_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_57 sourceBody379_76

def sourceBody379_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_56 sourceBody379_77

def sourceBody379_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_55 sourceBody379_78

def sourceBody379_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody379_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody379_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_81 sourceBody379_0

def sourceBody379_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_80 sourceBody379_82

def sourceBody379_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_79 sourceBody379_83

def sourceBody379_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_47 sourceBody379_84

def sourceBody379_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_85

def sourceBody379_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_86

def sourceBody379_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_21 sourceBody379_87

def sourceBody379_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_88

def sourceBody379_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_89

def sourceBody379_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_11 sourceBody379_90

def sourceBody379_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_91

def sourceBody379_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_92

def sourceBody379_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_5 sourceBody379_93

def sourceBody379_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_94

def sourceBody379_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody379_0 sourceBody379_95

def source379 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (379, 4, sourceBody379_96)
end InitECandidate.Proofs.WordStages
