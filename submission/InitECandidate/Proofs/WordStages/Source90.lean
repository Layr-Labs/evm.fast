import InitECandidate.Proofs.WordStages.Source74
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody90_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody90_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody90_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 6 (Flapjack.WordLangExpHOL.const 1073741832#64)

def sourceBody90_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_2 sourceBody90_0

def sourceBody90_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1073741808#64)

def sourceBody90_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody90_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody90_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody90_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 12) sourceBody90_6 sourceBody90_7

def sourceBody90_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody90_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_8 sourceBody90_9

def sourceBody90_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody90_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody90_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody90_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody90_0, 90, 2)) (some 66) ([4]) (some (4, sourceBody90_13, 90, 3))

def sourceBody90_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_14 sourceBody90_9

def sourceBody90_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_15 sourceBody90_0

def sourceBody90_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_12 sourceBody90_16

def sourceBody90_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_17

def sourceBody90_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_18

def sourceBody90_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody90_19 sourceBody90_0

def sourceBody90_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_20 sourceBody90_9

def sourceBody90_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_21 sourceBody90_0

def sourceBody90_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_11 sourceBody90_22

def sourceBody90_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_10 sourceBody90_23

def sourceBody90_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_5 sourceBody90_24

def sourceBody90_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_4 sourceBody90_25

def sourceBody90_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_3 sourceBody90_26

def sourceBody90_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody90_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody90_0, 90, 4)) (some 68) ([4]) (some (4, sourceBody90_13, 90, 5))

def sourceBody90_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_29 sourceBody90_9

def sourceBody90_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_30 sourceBody90_0

def sourceBody90_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_28 sourceBody90_31

def sourceBody90_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody90_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody90_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody90_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody90_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody90_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 2) sourceBody90_36 sourceBody90_37

def sourceBody90_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_38 sourceBody90_9

def sourceBody90_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody90_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1073741840#64, Flapjack.WordLangExpHOL.var 4])

def sourceBody90_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_41 sourceBody90_0

def sourceBody90_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 4])

def sourceBody90_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody90_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody90_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody90_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_46 sourceBody90_0

def sourceBody90_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_45 sourceBody90_47

def sourceBody90_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_48 sourceBody90_0

def sourceBody90_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_44 sourceBody90_49

def sourceBody90_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_50

def sourceBody90_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_43 sourceBody90_51

def sourceBody90_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_52

def sourceBody90_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_42 sourceBody90_53

def sourceBody90_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody90_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody90_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_56 sourceBody90_0

def sourceBody90_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_57 sourceBody90_0

def sourceBody90_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_55 sourceBody90_58

def sourceBody90_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_59

def sourceBody90_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_54 sourceBody90_60

def sourceBody90_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody90_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_61 sourceBody90_62

def sourceBody90_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody90_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody90_63 sourceBody90_64

def sourceBody90_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_65 sourceBody90_9

def sourceBody90_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_66 sourceBody90_0

def sourceBody90_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_40 sourceBody90_67

def sourceBody90_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_39 sourceBody90_68

def sourceBody90_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_35 sourceBody90_69

def sourceBody90_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_34 sourceBody90_70

def sourceBody90_72 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody90_71 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
  Flapjack.Spt.ln)

def sourceBody90_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_72 sourceBody90_9

def sourceBody90_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_9 sourceBody90_73

def sourceBody90_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody90_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody90_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 16]

def sourceBody90_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_77 sourceBody90_0

def sourceBody90_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_76 sourceBody90_78

def sourceBody90_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_75 sourceBody90_79

def sourceBody90_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_74 sourceBody90_80

def sourceBody90_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_33 sourceBody90_81

def sourceBody90_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_82

def sourceBody90_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_7 sourceBody90_83

def sourceBody90_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_84

def sourceBody90_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_32 sourceBody90_85

def sourceBody90_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_86

def sourceBody90_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_87

def sourceBody90_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_27 sourceBody90_88

def sourceBody90_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_1 sourceBody90_89

def sourceBody90_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody90_0 sourceBody90_90

def source90 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (90, 1, sourceBody90_91)
end InitECandidate.Proofs.WordStages
