import InitECandidate.Proofs.WordStages.Source314
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody330_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody330_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody330_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody330_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody330_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody330_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody330_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody330_4 sourceBody330_5

def sourceBody330_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody330_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_6 sourceBody330_7

def sourceBody330_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody330_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody330_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody330_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_11 sourceBody330_0

def sourceBody330_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_10 sourceBody330_12

def sourceBody330_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody330_13 sourceBody330_0

def sourceBody330_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_14 sourceBody330_7

def sourceBody330_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_15 sourceBody330_0

def sourceBody330_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_9 sourceBody330_16

def sourceBody330_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_8 sourceBody330_17

def sourceBody330_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_3 sourceBody330_18

def sourceBody330_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_2 sourceBody330_19

def sourceBody330_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody330_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody330_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody330_0, 330, 2)) (some 325) ([14]) (some (14, sourceBody330_22, 330, 3))

def sourceBody330_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_23 sourceBody330_7

def sourceBody330_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_24 sourceBody330_0

def sourceBody330_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_21 sourceBody330_25

def sourceBody330_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody330_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody330_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody330_0, 330, 4)) (some 68) ([10]) (some (10, sourceBody330_28, 330, 5))

def sourceBody330_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_29 sourceBody330_7

def sourceBody330_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_30 sourceBody330_0

def sourceBody330_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_27 sourceBody330_31

def sourceBody330_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody330_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody330_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody330_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody330_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody330_0, 330, 6)) (some 158) ([18, 4, 12]) (some (18, sourceBody330_36, 330, 7))

def sourceBody330_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_37 sourceBody330_7

def sourceBody330_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_38 sourceBody330_0

def sourceBody330_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_35 sourceBody330_39

def sourceBody330_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_34 sourceBody330_40

def sourceBody330_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_33 sourceBody330_41

def sourceBody330_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_42

def sourceBody330_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_43

def sourceBody330_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody330_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody330_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody330_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 4

def sourceBody330_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_48 sourceBody330_0

def sourceBody330_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_47 sourceBody330_49

def sourceBody330_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_50 sourceBody330_0

def sourceBody330_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_46 sourceBody330_51

def sourceBody330_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_52

def sourceBody330_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_45 sourceBody330_53

def sourceBody330_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_54

def sourceBody330_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_44 sourceBody330_55

def sourceBody330_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody330_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody330_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_58 sourceBody330_0

def sourceBody330_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_57 sourceBody330_59

def sourceBody330_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_56 sourceBody330_60

def sourceBody330_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_32 sourceBody330_61

def sourceBody330_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_62

def sourceBody330_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_63

def sourceBody330_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_26 sourceBody330_64

def sourceBody330_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_65

def sourceBody330_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_66

def sourceBody330_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_67

def sourceBody330_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_68

def sourceBody330_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_20 sourceBody330_69

def sourceBody330_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_1 sourceBody330_70

def sourceBody330_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody330_0 sourceBody330_71

def source330 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (330, 2, sourceBody330_72)
end InitECandidate.Proofs.WordStages
