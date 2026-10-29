import InitECandidate.Proofs.WordStages.Source463
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody479_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody479_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody479_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody479_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody479_0, 479, 2)) (some 465) ([18]) (some (18, sourceBody479_2, 479, 3))

def sourceBody479_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody479_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_3 sourceBody479_4

def sourceBody479_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_5 sourceBody479_0

def sourceBody479_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_1 sourceBody479_6

def sourceBody479_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody479_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody479_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody479_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 6]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody479_0, 479, 4)) (some 119) ([16, 12]) (some (16, sourceBody479_10, 479, 5))

def sourceBody479_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_11 sourceBody479_4

def sourceBody479_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_12 sourceBody479_0

def sourceBody479_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_9 sourceBody479_13

def sourceBody479_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_8 sourceBody479_14

def sourceBody479_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody479_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody479_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody479_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody479_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 20) sourceBody479_18 sourceBody479_19

def sourceBody479_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_20 sourceBody479_4

def sourceBody479_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody479_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody479_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody479_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_24 sourceBody479_0

def sourceBody479_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_23 sourceBody479_25

def sourceBody479_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody479_26 sourceBody479_0

def sourceBody479_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_27 sourceBody479_4

def sourceBody479_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_28 sourceBody479_0

def sourceBody479_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_22 sourceBody479_29

def sourceBody479_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_21 sourceBody479_30

def sourceBody479_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_17 sourceBody479_31

def sourceBody479_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_16 sourceBody479_32

def sourceBody479_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody479_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 4 4 12 20))

def sourceBody479_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody479_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 9#64))

def sourceBody479_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody479_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody479_0, 479, 6)) (some 463) ([14, 10]) (some (12, sourceBody479_38, 479, 7))

def sourceBody479_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_39 sourceBody479_4

def sourceBody479_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_40 sourceBody479_0

def sourceBody479_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_37 sourceBody479_41

def sourceBody479_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_36 sourceBody479_42

def sourceBody479_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_35 sourceBody479_43

def sourceBody479_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_34 sourceBody479_44

def sourceBody479_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_9 sourceBody479_45

def sourceBody479_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody479_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody479_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_48 sourceBody479_0

def sourceBody479_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_47 sourceBody479_49

def sourceBody479_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_46 sourceBody479_50

def sourceBody479_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_51

def sourceBody479_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_52

def sourceBody479_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_33 sourceBody479_53

def sourceBody479_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_15 sourceBody479_54

def sourceBody479_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_55

def sourceBody479_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_56

def sourceBody479_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_57

def sourceBody479_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_58

def sourceBody479_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_7 sourceBody479_59

def sourceBody479_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_60

def sourceBody479_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody479_0 sourceBody479_61

def source479 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (479, 2, sourceBody479_62)
end InitECandidate.Proofs.WordStages
