import InitECandidate.Proofs.WordStages.Source346
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody362_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody362_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody362_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody362_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 20 20 18 14))

def sourceBody362_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody362_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody362_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody362_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody362_0, 362, 2)) (some 178) ([8, 16]) (some (18, sourceBody362_6, 362, 3))

def sourceBody362_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody362_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_7 sourceBody362_8

def sourceBody362_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_9 sourceBody362_0

def sourceBody362_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_5 sourceBody362_10

def sourceBody362_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_4 sourceBody362_11

def sourceBody362_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_3 sourceBody362_12

def sourceBody362_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_2 sourceBody362_13

def sourceBody362_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_1 sourceBody362_14

def sourceBody362_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody362_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody362_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody362_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody362_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody362_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody362_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 16) sourceBody362_20 sourceBody362_21

def sourceBody362_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_22 sourceBody362_8

def sourceBody362_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody362_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody362_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody362_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody362_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody362_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody362_0, 362, 4)) (some 176) ([20, 8, 16]) (some (20, sourceBody362_28, 362, 5))

def sourceBody362_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_29 sourceBody362_8

def sourceBody362_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_30 sourceBody362_0

def sourceBody362_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_27 sourceBody362_31

def sourceBody362_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_26 sourceBody362_32

def sourceBody362_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_25 sourceBody362_33

def sourceBody362_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 10])

def sourceBody362_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody362_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_36 sourceBody362_0

def sourceBody362_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_37 sourceBody362_0

def sourceBody362_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_35 sourceBody362_38

def sourceBody362_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_39

def sourceBody362_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_34 sourceBody362_40

def sourceBody362_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody362_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody362_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_43 sourceBody362_0

def sourceBody362_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_44 sourceBody362_0

def sourceBody362_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_42 sourceBody362_45

def sourceBody362_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_46

def sourceBody362_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_41 sourceBody362_47

def sourceBody362_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody362_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_48 sourceBody362_49

def sourceBody362_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody362_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody362_50 sourceBody362_51

def sourceBody362_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_52 sourceBody362_8

def sourceBody362_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_53 sourceBody362_0

def sourceBody362_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_24 sourceBody362_54

def sourceBody362_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_23 sourceBody362_55

def sourceBody362_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_19 sourceBody362_56

def sourceBody362_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_18 sourceBody362_57

def sourceBody362_59 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody362_58 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody362_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_59 sourceBody362_8

def sourceBody362_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_8 sourceBody362_60

def sourceBody362_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 2])

def sourceBody362_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody362_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_63 sourceBody362_0

def sourceBody362_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_62 sourceBody362_64

def sourceBody362_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_61 sourceBody362_65

def sourceBody362_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_17 sourceBody362_66

def sourceBody362_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_67

def sourceBody362_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_16 sourceBody362_68

def sourceBody362_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_69

def sourceBody362_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_15 sourceBody362_70

def sourceBody362_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_71

def sourceBody362_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody362_0 sourceBody362_72

def source362 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (362, 4, sourceBody362_73)
end InitECandidate.Proofs.WordStages
