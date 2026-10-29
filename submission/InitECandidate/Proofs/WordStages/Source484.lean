import InitECandidate.Proofs.WordStages.Source468
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody484_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody484_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody484_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody484_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody484_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody484_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody484_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 18) sourceBody484_4 sourceBody484_5

def sourceBody484_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody484_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_6 sourceBody484_7

def sourceBody484_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody484_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6])

def sourceBody484_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_10 sourceBody484_0

def sourceBody484_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_11 sourceBody484_0

def sourceBody484_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody484_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody484_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody484_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_15 sourceBody484_0

def sourceBody484_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_16 sourceBody484_0

def sourceBody484_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody484_17 sourceBody484_0

def sourceBody484_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_18 sourceBody484_7

def sourceBody484_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_19 sourceBody484_0

def sourceBody484_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_9 sourceBody484_20

def sourceBody484_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_8 sourceBody484_21

def sourceBody484_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_14 sourceBody484_22

def sourceBody484_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_13 sourceBody484_23

def sourceBody484_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_12 sourceBody484_24

def sourceBody484_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody484_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 6])

def sourceBody484_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody484_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody484_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody484_0, 484, 2)) (some 77) ([12, 18, 14]) (some (12, sourceBody484_29, 484, 3))

def sourceBody484_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_30 sourceBody484_7

def sourceBody484_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_31 sourceBody484_0

def sourceBody484_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_28 sourceBody484_32

def sourceBody484_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_27 sourceBody484_33

def sourceBody484_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_26 sourceBody484_34

def sourceBody484_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_0 sourceBody484_35

def sourceBody484_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_0 sourceBody484_36

def sourceBody484_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_25 sourceBody484_37

def sourceBody484_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody484_38 sourceBody484_0

def sourceBody484_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_39 sourceBody484_7

def sourceBody484_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_40 sourceBody484_0

def sourceBody484_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_9 sourceBody484_41

def sourceBody484_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_8 sourceBody484_42

def sourceBody484_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_3 sourceBody484_43

def sourceBody484_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_2 sourceBody484_44

def sourceBody484_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 16])

def sourceBody484_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16])

def sourceBody484_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody484_0, 484, 4)) (some 78) ([12, 18]) (some (12, sourceBody484_29, 484, 5))

def sourceBody484_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_48 sourceBody484_7

def sourceBody484_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_49 sourceBody484_0

def sourceBody484_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_47 sourceBody484_50

def sourceBody484_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_46 sourceBody484_51

def sourceBody484_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_0 sourceBody484_52

def sourceBody484_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_0 sourceBody484_53

def sourceBody484_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_45 sourceBody484_54

def sourceBody484_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody484_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody484_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_57 sourceBody484_0

def sourceBody484_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_56 sourceBody484_58

def sourceBody484_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_55 sourceBody484_59

def sourceBody484_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_1 sourceBody484_60

def sourceBody484_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody484_0 sourceBody484_61

def source484 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (484, 6, sourceBody484_62)
end InitECandidate.Proofs.WordStages
