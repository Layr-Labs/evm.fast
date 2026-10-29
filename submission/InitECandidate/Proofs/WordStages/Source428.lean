import InitECandidate.Proofs.WordStages.Source412
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody428_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody428_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody428_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody428_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody428_0, 428, 2)) (some 407) ([34]) (some (34, sourceBody428_2, 428, 3))

def sourceBody428_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody428_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_3 sourceBody428_4

def sourceBody428_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_5 sourceBody428_0

def sourceBody428_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_1 sourceBody428_6

def sourceBody428_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody428_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody428_0, 428, 4)) (some 395) ([34]) (some (34, sourceBody428_2, 428, 5))

def sourceBody428_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_9 sourceBody428_4

def sourceBody428_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_10 sourceBody428_0

def sourceBody428_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_8 sourceBody428_11

def sourceBody428_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody428_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody428_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody428_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody428_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody428_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody428_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody428_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody428_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody428_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 14, 28, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody428_0, 428, 6)) (some 116) ([32, 16, 30, 24, 36, 12, 26, 18]) (some (32, sourceBody428_21, 428, 7))

def sourceBody428_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_22 sourceBody428_4

def sourceBody428_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_23 sourceBody428_0

def sourceBody428_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_20 sourceBody428_24

def sourceBody428_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_19 sourceBody428_25

def sourceBody428_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_18 sourceBody428_26

def sourceBody428_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_17 sourceBody428_27

def sourceBody428_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_16 sourceBody428_28

def sourceBody428_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_15 sourceBody428_29

def sourceBody428_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_14 sourceBody428_30

def sourceBody428_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_13 sourceBody428_31

def sourceBody428_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody428_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody428_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody428_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody428_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody428_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody428_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 12

def sourceBody428_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_39 sourceBody428_0

def sourceBody428_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_38 sourceBody428_40

def sourceBody428_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody428_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64])
  12

def sourceBody428_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_43 sourceBody428_0

def sourceBody428_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_42 sourceBody428_44

def sourceBody428_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody428_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody428_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_47 sourceBody428_0

def sourceBody428_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_46 sourceBody428_48

def sourceBody428_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody428_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody428_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_51 sourceBody428_0

def sourceBody428_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_50 sourceBody428_52

def sourceBody428_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_53 sourceBody428_0

def sourceBody428_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_49 sourceBody428_54

def sourceBody428_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_45 sourceBody428_55

def sourceBody428_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_41 sourceBody428_56

def sourceBody428_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_37 sourceBody428_57

def sourceBody428_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_58

def sourceBody428_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_36 sourceBody428_59

def sourceBody428_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_60

def sourceBody428_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_35 sourceBody428_61

def sourceBody428_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_62

def sourceBody428_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_34 sourceBody428_63

def sourceBody428_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_64

def sourceBody428_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_33 sourceBody428_65

def sourceBody428_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_66

def sourceBody428_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody428_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody428_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody428_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody428_0, 428, 8)) (some 423) ([16, 30]) (some (16, sourceBody428_70, 428, 9))

def sourceBody428_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_71 sourceBody428_4

def sourceBody428_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_72 sourceBody428_0

def sourceBody428_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_69 sourceBody428_73

def sourceBody428_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_68 sourceBody428_74

def sourceBody428_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_75

def sourceBody428_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_76

def sourceBody428_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_67 sourceBody428_77

def sourceBody428_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody428_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody428_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_80 sourceBody428_0

def sourceBody428_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_79 sourceBody428_81

def sourceBody428_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_78 sourceBody428_82

def sourceBody428_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_32 sourceBody428_83

def sourceBody428_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_84

def sourceBody428_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_85

def sourceBody428_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_86

def sourceBody428_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_87

def sourceBody428_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_88

def sourceBody428_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_89

def sourceBody428_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_90

def sourceBody428_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_91

def sourceBody428_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_12 sourceBody428_92

def sourceBody428_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_7 sourceBody428_93

def sourceBody428_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_94

def sourceBody428_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody428_0 sourceBody428_95

def source428 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (428, 6, sourceBody428_96)
end InitECandidate.Proofs.WordStages
