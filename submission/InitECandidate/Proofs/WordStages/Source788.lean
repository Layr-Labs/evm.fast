import InitECandidate.Proofs.WordStages.Source772
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody788_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody788_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody788_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 2)) (some 69) ([]) (some (6, sourceBody788_1, 788, 3))

def sourceBody788_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody788_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_2 sourceBody788_3

def sourceBody788_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_4 sourceBody788_0

def sourceBody788_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody788_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody788_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 4)) (some 68) ([10]) (some (10, sourceBody788_7, 788, 5))

def sourceBody788_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_8 sourceBody788_3

def sourceBody788_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_9 sourceBody788_0

def sourceBody788_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_6 sourceBody788_10

def sourceBody788_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody788_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody788_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody788_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 6)) (some 785) ([8, 14]) (some (8, sourceBody788_14, 788, 7))

def sourceBody788_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_15 sourceBody788_3

def sourceBody788_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_16 sourceBody788_0

def sourceBody788_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_13 sourceBody788_17

def sourceBody788_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_12 sourceBody788_18

def sourceBody788_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_19

def sourceBody788_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_20

def sourceBody788_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody788_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 8)) (some 728) ([8, 14]) (some (8, sourceBody788_14, 788, 9))

def sourceBody788_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_23 sourceBody788_3

def sourceBody788_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_24 sourceBody788_0

def sourceBody788_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_22 sourceBody788_25

def sourceBody788_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_12 sourceBody788_26

def sourceBody788_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_27

def sourceBody788_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_28

def sourceBody788_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_21 sourceBody788_29

def sourceBody788_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody788_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody788_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 10)) (some 728) ([8, 14]) (some (8, sourceBody788_14, 788, 11))

def sourceBody788_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_33 sourceBody788_3

def sourceBody788_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_34 sourceBody788_0

def sourceBody788_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_32 sourceBody788_35

def sourceBody788_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_31 sourceBody788_36

def sourceBody788_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_37

def sourceBody788_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_38

def sourceBody788_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_30 sourceBody788_39

def sourceBody788_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody788_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody788_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 12)) (some 728) ([8, 14]) (some (8, sourceBody788_14, 788, 13))

def sourceBody788_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_43 sourceBody788_3

def sourceBody788_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_44 sourceBody788_0

def sourceBody788_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_42 sourceBody788_45

def sourceBody788_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_41 sourceBody788_46

def sourceBody788_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_47

def sourceBody788_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_48

def sourceBody788_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_40 sourceBody788_49

def sourceBody788_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 144#64])

def sourceBody788_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody788_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody788_0, 788, 14)) (some 728) ([8, 14]) (some (8, sourceBody788_14, 788, 15))

def sourceBody788_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_53 sourceBody788_3

def sourceBody788_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_54 sourceBody788_0

def sourceBody788_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_52 sourceBody788_55

def sourceBody788_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_51 sourceBody788_56

def sourceBody788_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_57

def sourceBody788_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_58

def sourceBody788_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_50 sourceBody788_59

def sourceBody788_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody788_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody788_0, 788, 16)) (some 70) ([8]) (some (8, sourceBody788_14, 788, 17))

def sourceBody788_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_62 sourceBody788_3

def sourceBody788_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_63 sourceBody788_0

def sourceBody788_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_61 sourceBody788_64

def sourceBody788_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_65

def sourceBody788_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_66

def sourceBody788_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_60 sourceBody788_67

def sourceBody788_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody788_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody788_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_70 sourceBody788_0

def sourceBody788_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_69 sourceBody788_71

def sourceBody788_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_68 sourceBody788_72

def sourceBody788_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_11 sourceBody788_73

def sourceBody788_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_74

def sourceBody788_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_75

def sourceBody788_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_5 sourceBody788_76

def sourceBody788_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_77

def sourceBody788_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody788_0 sourceBody788_78

def source788 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (788, 3, sourceBody788_79)
end InitECandidate.Proofs.WordStages
