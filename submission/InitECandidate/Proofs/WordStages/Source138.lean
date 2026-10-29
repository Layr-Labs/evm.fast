import InitECandidate.Proofs.WordStages.Source122
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody138_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody138_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody138_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody138_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody138_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 16) sourceBody138_2 sourceBody138_3

def sourceBody138_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody138_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_4 sourceBody138_5

def sourceBody138_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody138_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody138_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody138_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody138_8, 138, 2)) (some 137) ([12]) (some (12, sourceBody138_9, 138, 3))

def sourceBody138_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_10 sourceBody138_5

def sourceBody138_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_11 sourceBody138_8

def sourceBody138_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_0 sourceBody138_12

def sourceBody138_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 192#64, Flapjack.WordLangExpHOL.var 14])

def sourceBody138_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody138_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_15 sourceBody138_8

def sourceBody138_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_14 sourceBody138_16

def sourceBody138_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_13 sourceBody138_17

def sourceBody138_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_18

def sourceBody138_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_19

def sourceBody138_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody138_20 sourceBody138_8

def sourceBody138_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_21 sourceBody138_5

def sourceBody138_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_22 sourceBody138_8

def sourceBody138_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_7 sourceBody138_23

def sourceBody138_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_6 sourceBody138_24

def sourceBody138_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_1 sourceBody138_25

def sourceBody138_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_0 sourceBody138_26

def sourceBody138_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody138_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody138_8, 138, 4)) (some 137) ([12]) (some (12, sourceBody138_9, 138, 5))

def sourceBody138_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_29 sourceBody138_5

def sourceBody138_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_30 sourceBody138_8

def sourceBody138_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_28 sourceBody138_31

def sourceBody138_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 128#64, Flapjack.WordLangExpHOL.var 14])

def sourceBody138_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_33 sourceBody138_16

def sourceBody138_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_32 sourceBody138_34

def sourceBody138_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_35

def sourceBody138_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_36

def sourceBody138_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody138_37 sourceBody138_8

def sourceBody138_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_38 sourceBody138_5

def sourceBody138_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_39 sourceBody138_8

def sourceBody138_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_7 sourceBody138_40

def sourceBody138_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_6 sourceBody138_41

def sourceBody138_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_1 sourceBody138_42

def sourceBody138_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_28 sourceBody138_43

def sourceBody138_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_27 sourceBody138_44

def sourceBody138_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody138_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody138_8, 138, 6)) (some 137) ([12]) (some (12, sourceBody138_9, 138, 7))

def sourceBody138_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_47 sourceBody138_5

def sourceBody138_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_48 sourceBody138_8

def sourceBody138_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_46 sourceBody138_49

def sourceBody138_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 14])

def sourceBody138_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_51 sourceBody138_16

def sourceBody138_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_50 sourceBody138_52

def sourceBody138_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_53

def sourceBody138_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_8 sourceBody138_54

def sourceBody138_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody138_55 sourceBody138_8

def sourceBody138_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_56 sourceBody138_5

def sourceBody138_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_57 sourceBody138_8

def sourceBody138_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_7 sourceBody138_58

def sourceBody138_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_6 sourceBody138_59

def sourceBody138_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_1 sourceBody138_60

def sourceBody138_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_46 sourceBody138_61

def sourceBody138_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_45 sourceBody138_62

def sourceBody138_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody138_65 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 137) ([0, 14]) (none)

def sourceBody138_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_65 sourceBody138_8

def sourceBody138_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_64 sourceBody138_66

def sourceBody138_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody138_63 sourceBody138_67

def source138 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (138, 5, sourceBody138_68)
end InitECandidate.Proofs.WordStages
