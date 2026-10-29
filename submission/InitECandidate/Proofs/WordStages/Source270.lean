import InitECandidate.Proofs.WordStages.Source254
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody270_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody270_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody270_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody270_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody270_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody270_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody270_0, 270, 2)) (some 269) ([16, 12, 20]) (some (16, sourceBody270_4, 270, 3))

def sourceBody270_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody270_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_5 sourceBody270_6

def sourceBody270_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_7 sourceBody270_0

def sourceBody270_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_3 sourceBody270_8

def sourceBody270_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_2 sourceBody270_9

def sourceBody270_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_1 sourceBody270_10

def sourceBody270_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody270_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody270_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody270_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody270_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 20) sourceBody270_14 sourceBody270_15

def sourceBody270_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_16 sourceBody270_6

def sourceBody270_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody270_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody270_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody270_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_20 sourceBody270_0

def sourceBody270_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_21 sourceBody270_0

def sourceBody270_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_19 sourceBody270_22

def sourceBody270_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_23

def sourceBody270_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody270_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_25 sourceBody270_4

def sourceBody270_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_24 sourceBody270_26

def sourceBody270_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody270_27 sourceBody270_0

def sourceBody270_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_28 sourceBody270_6

def sourceBody270_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_29 sourceBody270_0

def sourceBody270_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_18 sourceBody270_30

def sourceBody270_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_17 sourceBody270_31

def sourceBody270_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_13 sourceBody270_32

def sourceBody270_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_12 sourceBody270_33

def sourceBody270_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody270_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody270_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody270_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody270_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) sourceBody270_37 sourceBody270_38

def sourceBody270_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_39 sourceBody270_6

def sourceBody270_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody270_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 12])

def sourceBody270_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody270_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_43 sourceBody270_0

def sourceBody270_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_42 sourceBody270_44

def sourceBody270_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 20])

def sourceBody270_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody270_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_47 sourceBody270_0

def sourceBody270_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_48 sourceBody270_0

def sourceBody270_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_46 sourceBody270_49

def sourceBody270_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_45 sourceBody270_50

def sourceBody270_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody270_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody270_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_53 sourceBody270_0

def sourceBody270_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_54 sourceBody270_0

def sourceBody270_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_52 sourceBody270_55

def sourceBody270_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_56

def sourceBody270_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_51 sourceBody270_57

def sourceBody270_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody270_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_58 sourceBody270_59

def sourceBody270_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody270_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody270_60 sourceBody270_61

def sourceBody270_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_62 sourceBody270_6

def sourceBody270_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_63 sourceBody270_0

def sourceBody270_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_41 sourceBody270_64

def sourceBody270_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_40 sourceBody270_65

def sourceBody270_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_36 sourceBody270_66

def sourceBody270_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_18 sourceBody270_67

def sourceBody270_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody270_68 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody270_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_69 sourceBody270_6

def sourceBody270_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_6 sourceBody270_70

def sourceBody270_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody270_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody270_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_73 sourceBody270_0

def sourceBody270_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_72 sourceBody270_74

def sourceBody270_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_71 sourceBody270_75

def sourceBody270_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_15 sourceBody270_76

def sourceBody270_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_77

def sourceBody270_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_35 sourceBody270_78

def sourceBody270_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_79

def sourceBody270_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_34 sourceBody270_80

def sourceBody270_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_11 sourceBody270_81

def sourceBody270_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_82

def sourceBody270_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_83

def sourceBody270_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_84

def sourceBody270_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody270_0 sourceBody270_85

def source270 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (270, 3, sourceBody270_86)
end InitECandidate.Proofs.WordStages
