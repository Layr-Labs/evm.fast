import InitECandidate.Proofs.WordStages.Source245
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody261_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody261_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody261_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 2)) (some 69) ([]) (some (8, sourceBody261_1, 261, 3))

def sourceBody261_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody261_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_2 sourceBody261_3

def sourceBody261_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_4 sourceBody261_0

def sourceBody261_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody261_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody261_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 4)) (some 68) ([14]) (some (14, sourceBody261_7, 261, 5))

def sourceBody261_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_8 sourceBody261_3

def sourceBody261_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_9 sourceBody261_0

def sourceBody261_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_6 sourceBody261_10

def sourceBody261_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody261_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody261_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody261_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody261_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 6)) (some 242) ([10, 18, 6]) (some (10, sourceBody261_15, 261, 7))

def sourceBody261_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_16 sourceBody261_3

def sourceBody261_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_17 sourceBody261_0

def sourceBody261_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_14 sourceBody261_18

def sourceBody261_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_13 sourceBody261_19

def sourceBody261_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_12 sourceBody261_20

def sourceBody261_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_21

def sourceBody261_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_22

def sourceBody261_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64])

def sourceBody261_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody261_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody261_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 8)) (some 242) ([10, 18, 6]) (some (10, sourceBody261_15, 261, 9))

def sourceBody261_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_27 sourceBody261_3

def sourceBody261_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_28 sourceBody261_0

def sourceBody261_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_26 sourceBody261_29

def sourceBody261_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_25 sourceBody261_30

def sourceBody261_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_24 sourceBody261_31

def sourceBody261_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_32

def sourceBody261_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_33

def sourceBody261_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_23 sourceBody261_34

def sourceBody261_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 68#64])

def sourceBody261_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody261_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 10)) (some 244) ([10, 18]) (some (10, sourceBody261_15, 261, 11))

def sourceBody261_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_38 sourceBody261_3

def sourceBody261_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_39 sourceBody261_0

def sourceBody261_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_37 sourceBody261_40

def sourceBody261_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_36 sourceBody261_41

def sourceBody261_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_42

def sourceBody261_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_43

def sourceBody261_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_35 sourceBody261_44

def sourceBody261_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody261_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody261_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody261_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody261_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody261_0, 261, 12)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody261_15, 261, 13))

def sourceBody261_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_50 sourceBody261_3

def sourceBody261_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_51 sourceBody261_0

def sourceBody261_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_49 sourceBody261_52

def sourceBody261_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_48 sourceBody261_53

def sourceBody261_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_47 sourceBody261_54

def sourceBody261_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_46 sourceBody261_55

def sourceBody261_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_56

def sourceBody261_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_57

def sourceBody261_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_45 sourceBody261_58

def sourceBody261_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody261_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody261_0, 261, 14)) (some 70) ([10]) (some (10, sourceBody261_15, 261, 15))

def sourceBody261_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_61 sourceBody261_3

def sourceBody261_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_62 sourceBody261_0

def sourceBody261_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_60 sourceBody261_63

def sourceBody261_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_64

def sourceBody261_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_65

def sourceBody261_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_59 sourceBody261_66

def sourceBody261_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody261_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody261_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_69 sourceBody261_0

def sourceBody261_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_68 sourceBody261_70

def sourceBody261_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_67 sourceBody261_71

def sourceBody261_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_11 sourceBody261_72

def sourceBody261_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_73

def sourceBody261_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_74

def sourceBody261_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_5 sourceBody261_75

def sourceBody261_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_76

def sourceBody261_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody261_0 sourceBody261_77

def source261 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (261, 3, sourceBody261_78)
end InitECandidate.Proofs.WordStages
