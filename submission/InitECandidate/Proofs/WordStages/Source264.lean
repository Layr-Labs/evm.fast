import InitECandidate.Proofs.WordStages.Source248
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody264_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody264_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody264_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody264_0, 264, 2)) (some 69) ([]) (some (8, sourceBody264_1, 264, 3))

def sourceBody264_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody264_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_2 sourceBody264_3

def sourceBody264_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_4 sourceBody264_0

def sourceBody264_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody264_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody264_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody264_0, 264, 4)) (some 68) ([14]) (some (14, sourceBody264_7, 264, 5))

def sourceBody264_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_8 sourceBody264_3

def sourceBody264_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_9 sourceBody264_0

def sourceBody264_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_6 sourceBody264_10

def sourceBody264_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody264_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody264_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody264_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody264_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody264_0, 264, 6)) (some 242) ([10, 18, 6]) (some (10, sourceBody264_15, 264, 7))

def sourceBody264_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_16 sourceBody264_3

def sourceBody264_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_17 sourceBody264_0

def sourceBody264_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_14 sourceBody264_18

def sourceBody264_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_13 sourceBody264_19

def sourceBody264_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_12 sourceBody264_20

def sourceBody264_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_21

def sourceBody264_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_22

def sourceBody264_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64])

def sourceBody264_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody264_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody264_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody264_0, 264, 8)) (some 242) ([10, 18, 6]) (some (10, sourceBody264_15, 264, 9))

def sourceBody264_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_27 sourceBody264_3

def sourceBody264_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_28 sourceBody264_0

def sourceBody264_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_26 sourceBody264_29

def sourceBody264_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_25 sourceBody264_30

def sourceBody264_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_24 sourceBody264_31

def sourceBody264_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_32

def sourceBody264_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_33

def sourceBody264_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_23 sourceBody264_34

def sourceBody264_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody264_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody264_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody264_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody264_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody264_0, 264, 10)) (some 235) ([10, 18, 6, 12]) (some (10, sourceBody264_15, 264, 11))

def sourceBody264_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_40 sourceBody264_3

def sourceBody264_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_41 sourceBody264_0

def sourceBody264_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_39 sourceBody264_42

def sourceBody264_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_38 sourceBody264_43

def sourceBody264_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_37 sourceBody264_44

def sourceBody264_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_36 sourceBody264_45

def sourceBody264_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_46

def sourceBody264_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_47

def sourceBody264_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_35 sourceBody264_48

def sourceBody264_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody264_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody264_0, 264, 12)) (some 70) ([10]) (some (10, sourceBody264_15, 264, 13))

def sourceBody264_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_51 sourceBody264_3

def sourceBody264_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_52 sourceBody264_0

def sourceBody264_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_50 sourceBody264_53

def sourceBody264_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_54

def sourceBody264_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_55

def sourceBody264_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_49 sourceBody264_56

def sourceBody264_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody264_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody264_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_59 sourceBody264_0

def sourceBody264_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_58 sourceBody264_60

def sourceBody264_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_57 sourceBody264_61

def sourceBody264_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_11 sourceBody264_62

def sourceBody264_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_63

def sourceBody264_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_64

def sourceBody264_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_5 sourceBody264_65

def sourceBody264_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_66

def sourceBody264_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody264_0 sourceBody264_67

def source264 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (264, 3, sourceBody264_68)
end InitECandidate.Proofs.WordStages
