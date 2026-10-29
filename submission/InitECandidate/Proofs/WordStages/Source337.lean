import InitECandidate.Proofs.WordStages.Source321
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody337_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody337_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody337_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody337_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody337_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody337_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody337_0, 337, 2)) (some 335) ([24, 10, 18]) (some (24, sourceBody337_4, 337, 3))

def sourceBody337_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody337_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_5 sourceBody337_6

def sourceBody337_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_7 sourceBody337_0

def sourceBody337_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_3 sourceBody337_8

def sourceBody337_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_2 sourceBody337_9

def sourceBody337_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_1 sourceBody337_10

def sourceBody337_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody337_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody337_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody337_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody337_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody337_14 sourceBody337_15

def sourceBody337_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_16 sourceBody337_6

def sourceBody337_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody337_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody337_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 24)

def sourceBody337_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_20 sourceBody337_0

def sourceBody337_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_21 sourceBody337_0

def sourceBody337_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_19 sourceBody337_22

def sourceBody337_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_23

def sourceBody337_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody337_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_25 sourceBody337_4

def sourceBody337_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_24 sourceBody337_26

def sourceBody337_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody337_27 sourceBody337_0

def sourceBody337_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_28 sourceBody337_6

def sourceBody337_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_29 sourceBody337_0

def sourceBody337_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_18 sourceBody337_30

def sourceBody337_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_17 sourceBody337_31

def sourceBody337_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_13 sourceBody337_32

def sourceBody337_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_12 sourceBody337_33

def sourceBody337_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody337_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody337_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody337_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody337_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 22) sourceBody337_37 sourceBody337_38

def sourceBody337_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_39 sourceBody337_6

def sourceBody337_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody337_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 10])

def sourceBody337_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody337_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_43 sourceBody337_0

def sourceBody337_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_42 sourceBody337_44

def sourceBody337_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 18])

def sourceBody337_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody337_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_47 sourceBody337_0

def sourceBody337_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_48 sourceBody337_0

def sourceBody337_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_46 sourceBody337_49

def sourceBody337_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_45 sourceBody337_50

def sourceBody337_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody337_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody337_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_53 sourceBody337_0

def sourceBody337_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_54 sourceBody337_0

def sourceBody337_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_52 sourceBody337_55

def sourceBody337_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_56

def sourceBody337_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_51 sourceBody337_57

def sourceBody337_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody337_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_58 sourceBody337_59

def sourceBody337_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody337_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody337_60 sourceBody337_61

def sourceBody337_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_62 sourceBody337_6

def sourceBody337_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_63 sourceBody337_0

def sourceBody337_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_41 sourceBody337_64

def sourceBody337_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_40 sourceBody337_65

def sourceBody337_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_36 sourceBody337_66

def sourceBody337_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_18 sourceBody337_67

def sourceBody337_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody337_68 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody337_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_69 sourceBody337_6

def sourceBody337_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_6 sourceBody337_70

def sourceBody337_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody337_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody337_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_73 sourceBody337_0

def sourceBody337_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_72 sourceBody337_74

def sourceBody337_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_71 sourceBody337_75

def sourceBody337_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_15 sourceBody337_76

def sourceBody337_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_77

def sourceBody337_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_35 sourceBody337_78

def sourceBody337_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_79

def sourceBody337_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_34 sourceBody337_80

def sourceBody337_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_11 sourceBody337_81

def sourceBody337_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_82

def sourceBody337_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_83

def sourceBody337_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_84

def sourceBody337_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody337_0 sourceBody337_85

def source337 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (337, 5, sourceBody337_86)
end InitECandidate.Proofs.WordStages
