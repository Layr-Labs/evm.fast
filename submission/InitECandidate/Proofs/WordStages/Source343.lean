import InitECandidate.Proofs.WordStages.Source327
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody343_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody343_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody343_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody343_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody343_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody343_0, 343, 2)) (some 169) ([16, 12]) (some (16, sourceBody343_3, 343, 3))

def sourceBody343_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody343_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_4 sourceBody343_5

def sourceBody343_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_6 sourceBody343_0

def sourceBody343_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_2 sourceBody343_7

def sourceBody343_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_1 sourceBody343_8

def sourceBody343_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody343_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody343_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody343_0, 343, 4)) (some 68) ([12]) (some (12, sourceBody343_11, 343, 5))

def sourceBody343_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_12 sourceBody343_5

def sourceBody343_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_13 sourceBody343_0

def sourceBody343_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_10 sourceBody343_14

def sourceBody343_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody343_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody343_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody343_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody343_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody343_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) sourceBody343_19 sourceBody343_20

def sourceBody343_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_21 sourceBody343_5

def sourceBody343_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody343_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody343_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody343_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody343_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody343_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody343_0, 343, 6)) (some 339) ([6, 14, 10]) (some (6, sourceBody343_27, 343, 7))

def sourceBody343_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_28 sourceBody343_5

def sourceBody343_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_29 sourceBody343_0

def sourceBody343_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_26 sourceBody343_30

def sourceBody343_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_25 sourceBody343_31

def sourceBody343_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_24 sourceBody343_32

def sourceBody343_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody343_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody343_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody343_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody343_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody343_0, 343, 8)) (some 77) ([14, 10, 20]) (some (14, sourceBody343_37, 343, 9))

def sourceBody343_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_38 sourceBody343_5

def sourceBody343_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_39 sourceBody343_0

def sourceBody343_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_36 sourceBody343_40

def sourceBody343_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_35 sourceBody343_41

def sourceBody343_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_34 sourceBody343_42

def sourceBody343_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_43

def sourceBody343_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_44

def sourceBody343_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody343_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody343_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_47 sourceBody343_0

def sourceBody343_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_48 sourceBody343_0

def sourceBody343_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_46 sourceBody343_49

def sourceBody343_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_50

def sourceBody343_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_45 sourceBody343_51

def sourceBody343_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_33 sourceBody343_52

def sourceBody343_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_53

def sourceBody343_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_54

def sourceBody343_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody343_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_55 sourceBody343_56

def sourceBody343_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody343_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody343_57 sourceBody343_58

def sourceBody343_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_59 sourceBody343_5

def sourceBody343_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_60 sourceBody343_0

def sourceBody343_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_23 sourceBody343_61

def sourceBody343_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_22 sourceBody343_62

def sourceBody343_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_18 sourceBody343_63

def sourceBody343_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_17 sourceBody343_64

def sourceBody343_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody343_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody343_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_66 sourceBody343_5

def sourceBody343_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_5 sourceBody343_67

def sourceBody343_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody343_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody343_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22, 6]

def sourceBody343_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_71 sourceBody343_0

def sourceBody343_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_70 sourceBody343_72

def sourceBody343_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_69 sourceBody343_73

def sourceBody343_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_68 sourceBody343_74

def sourceBody343_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_16 sourceBody343_75

def sourceBody343_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_76

def sourceBody343_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_15 sourceBody343_77

def sourceBody343_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_78

def sourceBody343_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_79

def sourceBody343_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_9 sourceBody343_80

def sourceBody343_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_81

def sourceBody343_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_82

def sourceBody343_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_83

def sourceBody343_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody343_0 sourceBody343_84

def source343 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (343, 3, sourceBody343_85)
end InitECandidate.Proofs.WordStages
