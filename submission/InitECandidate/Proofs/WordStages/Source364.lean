import InitECandidate.Proofs.WordStages.Source348
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody364_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody364_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody364_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody364_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody364_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody364_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody364_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody364_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody364_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody364_6 sourceBody364_7

def sourceBody364_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_8 sourceBody364_3

def sourceBody364_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody364_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody364_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 6 10 18))

def sourceBody364_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 6])

def sourceBody364_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody364_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody364_0, 364, 2)) (some 363) ([12]) (some (10, sourceBody364_14, 364, 3))

def sourceBody364_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_15 sourceBody364_3

def sourceBody364_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_16 sourceBody364_0

def sourceBody364_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_13 sourceBody364_17

def sourceBody364_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_12 sourceBody364_18

def sourceBody364_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_11 sourceBody364_19

def sourceBody364_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_4 sourceBody364_20

def sourceBody364_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody364_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody364_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody364_0, 364, 4)) (some 180) ([18]) (some (18, sourceBody364_23, 364, 5))

def sourceBody364_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_24 sourceBody364_3

def sourceBody364_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_25 sourceBody364_0

def sourceBody364_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_22 sourceBody364_26

def sourceBody364_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 14])

def sourceBody364_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody364_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_29 sourceBody364_0

def sourceBody364_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_30 sourceBody364_0

def sourceBody364_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_28 sourceBody364_31

def sourceBody364_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_32

def sourceBody364_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody364_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody364_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_35 sourceBody364_0

def sourceBody364_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_36 sourceBody364_0

def sourceBody364_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_34 sourceBody364_37

def sourceBody364_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_38

def sourceBody364_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_33 sourceBody364_39

def sourceBody364_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_27 sourceBody364_40

def sourceBody364_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_41

def sourceBody364_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_42

def sourceBody364_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_21 sourceBody364_43

def sourceBody364_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_44

def sourceBody364_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_45

def sourceBody364_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody364_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_46 sourceBody364_47

def sourceBody364_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody364_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody364_48 sourceBody364_49

def sourceBody364_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_50 sourceBody364_3

def sourceBody364_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_51 sourceBody364_0

def sourceBody364_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_10 sourceBody364_52

def sourceBody364_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_9 sourceBody364_53

def sourceBody364_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_5 sourceBody364_54

def sourceBody364_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_4 sourceBody364_55

def sourceBody364_57 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody364_56 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody364_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_57 sourceBody364_3

def sourceBody364_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_3 sourceBody364_58

def sourceBody364_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody364_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody364_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_61 sourceBody364_0

def sourceBody364_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_60 sourceBody364_62

def sourceBody364_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_59 sourceBody364_63

def sourceBody364_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_2 sourceBody364_64

def sourceBody364_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_65

def sourceBody364_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_1 sourceBody364_66

def sourceBody364_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody364_0 sourceBody364_67

def source364 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (364, 3, sourceBody364_68)
end InitECandidate.Proofs.WordStages
