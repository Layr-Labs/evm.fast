import InitECandidate.Proofs.WordStages.Source416
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody432_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody432_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody432_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody432_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody432_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody432_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody432_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody432_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody432_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 22) sourceBody432_6 sourceBody432_7

def sourceBody432_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_8 sourceBody432_3

def sourceBody432_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody432_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody432_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody432_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody432_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 12, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody432_0, 432, 2)) (some 197) ([6, 14]) (some (6, sourceBody432_13, 432, 3))

def sourceBody432_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_14 sourceBody432_3

def sourceBody432_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_15 sourceBody432_0

def sourceBody432_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_12 sourceBody432_16

def sourceBody432_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_11 sourceBody432_17

def sourceBody432_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody432_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody432_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody432_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody432_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 10) sourceBody432_21 sourceBody432_22

def sourceBody432_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_23 sourceBody432_3

def sourceBody432_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody432_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody432_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody432_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody432_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody432_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody432_0, 432, 4)) (some 192) ([14, 10, 20]) (some (14, sourceBody432_29, 432, 5))

def sourceBody432_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_30 sourceBody432_3

def sourceBody432_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_31 sourceBody432_0

def sourceBody432_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_28 sourceBody432_32

def sourceBody432_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_27 sourceBody432_33

def sourceBody432_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_26 sourceBody432_34

def sourceBody432_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_35

def sourceBody432_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_36

def sourceBody432_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody432_37 sourceBody432_0

def sourceBody432_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_38 sourceBody432_3

def sourceBody432_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_39 sourceBody432_0

def sourceBody432_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_25 sourceBody432_40

def sourceBody432_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_24 sourceBody432_41

def sourceBody432_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_20 sourceBody432_42

def sourceBody432_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_19 sourceBody432_43

def sourceBody432_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody432_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody432_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_46 sourceBody432_0

def sourceBody432_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_47 sourceBody432_0

def sourceBody432_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_45 sourceBody432_48

def sourceBody432_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_49

def sourceBody432_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_44 sourceBody432_50

def sourceBody432_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_18 sourceBody432_51

def sourceBody432_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_52

def sourceBody432_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_53

def sourceBody432_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_54

def sourceBody432_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_55

def sourceBody432_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_56

def sourceBody432_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_57

def sourceBody432_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody432_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_58 sourceBody432_59

def sourceBody432_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody432_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody432_60 sourceBody432_61

def sourceBody432_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_62 sourceBody432_3

def sourceBody432_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_63 sourceBody432_0

def sourceBody432_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_10 sourceBody432_64

def sourceBody432_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_9 sourceBody432_65

def sourceBody432_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_5 sourceBody432_66

def sourceBody432_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_4 sourceBody432_67

def sourceBody432_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody432_68 (Flapjack.Spt.ls PUnit.unit)

def sourceBody432_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_69 sourceBody432_3

def sourceBody432_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_3 sourceBody432_70

def sourceBody432_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody432_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody432_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_73 sourceBody432_0

def sourceBody432_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_72 sourceBody432_74

def sourceBody432_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_71 sourceBody432_75

def sourceBody432_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_2 sourceBody432_76

def sourceBody432_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_77

def sourceBody432_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_1 sourceBody432_78

def sourceBody432_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody432_0 sourceBody432_79

def source432 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (432, 3, sourceBody432_80)
end InitECandidate.Proofs.WordStages
