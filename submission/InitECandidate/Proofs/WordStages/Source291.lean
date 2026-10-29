import InitECandidate.Proofs.WordStages.Source275
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody291_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody291_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody291_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody291_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody291_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody291_0, 291, 2)) (some 92) ([16, 24]) (some (16, sourceBody291_3, 291, 3))

def sourceBody291_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody291_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_4 sourceBody291_5

def sourceBody291_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_6 sourceBody291_0

def sourceBody291_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_2 sourceBody291_7

def sourceBody291_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_1 sourceBody291_8

def sourceBody291_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody291_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody291_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody291_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody291_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody291_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody291_13 sourceBody291_14

def sourceBody291_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_15 sourceBody291_5

def sourceBody291_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody291_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 16])

def sourceBody291_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody291_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 16])

def sourceBody291_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody291_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody291_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody291_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody291_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody291_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 22) sourceBody291_24 sourceBody291_25

def sourceBody291_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_26 sourceBody291_5

def sourceBody291_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody291_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody291_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody291_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_30 sourceBody291_0

def sourceBody291_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_29 sourceBody291_31

def sourceBody291_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody291_32 sourceBody291_0

def sourceBody291_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_33 sourceBody291_5

def sourceBody291_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_34 sourceBody291_0

def sourceBody291_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_28 sourceBody291_35

def sourceBody291_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_27 sourceBody291_36

def sourceBody291_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_23 sourceBody291_37

def sourceBody291_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_22 sourceBody291_38

def sourceBody291_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_21 sourceBody291_39

def sourceBody291_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_20 sourceBody291_40

def sourceBody291_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_19 sourceBody291_41

def sourceBody291_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_18 sourceBody291_42

def sourceBody291_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody291_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody291_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_45 sourceBody291_0

def sourceBody291_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_46 sourceBody291_0

def sourceBody291_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_44 sourceBody291_47

def sourceBody291_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_0 sourceBody291_48

def sourceBody291_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_43 sourceBody291_49

def sourceBody291_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody291_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_50 sourceBody291_51

def sourceBody291_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody291_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody291_52 sourceBody291_53

def sourceBody291_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_54 sourceBody291_5

def sourceBody291_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_55 sourceBody291_0

def sourceBody291_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_17 sourceBody291_56

def sourceBody291_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_16 sourceBody291_57

def sourceBody291_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_12 sourceBody291_58

def sourceBody291_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_11 sourceBody291_59

def sourceBody291_61 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody291_60 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody291_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_61 sourceBody291_5

def sourceBody291_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_5 sourceBody291_62

def sourceBody291_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody291_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_64 sourceBody291_31

def sourceBody291_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_63 sourceBody291_65

def sourceBody291_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_10 sourceBody291_66

def sourceBody291_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_0 sourceBody291_67

def sourceBody291_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_9 sourceBody291_68

def sourceBody291_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_0 sourceBody291_69

def sourceBody291_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody291_0 sourceBody291_70

def source291 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (291, 5, sourceBody291_71)
end InitECandidate.Proofs.WordStages
