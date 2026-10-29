import InitECandidate.Proofs.WordStages.Source239
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody255_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody255_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody255_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody255_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody255_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody255_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody255_0, 255, 2)) (some 251) ([22, 10, 16]) (some (22, sourceBody255_4, 255, 3))

def sourceBody255_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody255_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_5 sourceBody255_6

def sourceBody255_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_7 sourceBody255_0

def sourceBody255_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_3 sourceBody255_8

def sourceBody255_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_2 sourceBody255_9

def sourceBody255_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_1 sourceBody255_10

def sourceBody255_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody255_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody255_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody255_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody255_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody255_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 12) sourceBody255_15 sourceBody255_16

def sourceBody255_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_17 sourceBody255_6

def sourceBody255_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody255_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody255_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody255_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 12) sourceBody255_15 sourceBody255_16

def sourceBody255_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_22 sourceBody255_6

def sourceBody255_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 70#64)

def sourceBody255_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody255_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody255_0, 255, 4)) (some 245) ([16]) (some (16, sourceBody255_25, 255, 5))

def sourceBody255_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_26 sourceBody255_6

def sourceBody255_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_27 sourceBody255_0

def sourceBody255_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_24 sourceBody255_28

def sourceBody255_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_29

def sourceBody255_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_30

def sourceBody255_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody255_31 sourceBody255_0

def sourceBody255_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_32 sourceBody255_6

def sourceBody255_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_33 sourceBody255_0

def sourceBody255_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_19 sourceBody255_34

def sourceBody255_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_23 sourceBody255_35

def sourceBody255_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_21 sourceBody255_36

def sourceBody255_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_20 sourceBody255_37

def sourceBody255_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody255_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody255_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_40 sourceBody255_0

def sourceBody255_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_41 sourceBody255_0

def sourceBody255_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_39 sourceBody255_42

def sourceBody255_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_43

def sourceBody255_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_38 sourceBody255_44

def sourceBody255_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody255_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_45 sourceBody255_46

def sourceBody255_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody255_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody255_47 sourceBody255_48

def sourceBody255_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_49 sourceBody255_6

def sourceBody255_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_50 sourceBody255_0

def sourceBody255_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_19 sourceBody255_51

def sourceBody255_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_18 sourceBody255_52

def sourceBody255_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_14 sourceBody255_53

def sourceBody255_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_13 sourceBody255_54

def sourceBody255_56 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody255_55 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody255_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_56 sourceBody255_6

def sourceBody255_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_6 sourceBody255_57

def sourceBody255_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody255_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody255_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 16]

def sourceBody255_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_61 sourceBody255_0

def sourceBody255_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_60 sourceBody255_62

def sourceBody255_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_59 sourceBody255_63

def sourceBody255_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_58 sourceBody255_64

def sourceBody255_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_12 sourceBody255_65

def sourceBody255_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_66

def sourceBody255_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_11 sourceBody255_67

def sourceBody255_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_68

def sourceBody255_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_69

def sourceBody255_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_70

def sourceBody255_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody255_0 sourceBody255_71

def source255 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (255, 5, sourceBody255_72)
end InitECandidate.Proofs.WordStages
