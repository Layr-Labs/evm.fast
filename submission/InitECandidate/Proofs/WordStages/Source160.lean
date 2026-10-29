import InitECandidate.Proofs.WordStages.Source144
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody160_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody160_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody160_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_3 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 20) sourceBody160_0 sourceBody160_2

def sourceBody160_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody160_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_3 sourceBody160_4

def sourceBody160_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody160_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody160_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 8) sourceBody160_8 sourceBody160_6

def sourceBody160_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_9 sourceBody160_4

def sourceBody160_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody160_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody160_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody160_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody160_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 12) sourceBody160_15 sourceBody160_16

def sourceBody160_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_17 sourceBody160_4

def sourceBody160_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody160_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody160_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 28) sourceBody160_21 sourceBody160_19

def sourceBody160_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_22 sourceBody160_4

def sourceBody160_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 16])

def sourceBody160_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody160_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody160_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody160_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody160_25, 160, 2)) (some 159) ([10]) (some (10, sourceBody160_27, 160, 3))

def sourceBody160_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_28 sourceBody160_4

def sourceBody160_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_29 sourceBody160_25

def sourceBody160_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_26 sourceBody160_30

def sourceBody160_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_25 sourceBody160_31

def sourceBody160_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_25 sourceBody160_32

def sourceBody160_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody160_33 sourceBody160_25

def sourceBody160_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_34 sourceBody160_4

def sourceBody160_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_35 sourceBody160_25

def sourceBody160_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_24 sourceBody160_36

def sourceBody160_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_23 sourceBody160_37

def sourceBody160_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_20 sourceBody160_38

def sourceBody160_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_19 sourceBody160_39

def sourceBody160_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_18 sourceBody160_40

def sourceBody160_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_14 sourceBody160_41

def sourceBody160_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_13 sourceBody160_42

def sourceBody160_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_12 sourceBody160_43

def sourceBody160_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_11 sourceBody160_44

def sourceBody160_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_10 sourceBody160_45

def sourceBody160_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_7 sourceBody160_46

def sourceBody160_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_6 sourceBody160_47

def sourceBody160_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_5 sourceBody160_48

def sourceBody160_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_1 sourceBody160_49

def sourceBody160_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_0 sourceBody160_50

def sourceBody160_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody160_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody160_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody160_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody160_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 26) sourceBody160_55 sourceBody160_56

def sourceBody160_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_57 sourceBody160_4

def sourceBody160_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody160_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody160_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody160_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_61 sourceBody160_25

def sourceBody160_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_60 sourceBody160_62

def sourceBody160_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 20])

def sourceBody160_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody160_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_65 sourceBody160_25

def sourceBody160_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_66 sourceBody160_25

def sourceBody160_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_64 sourceBody160_67

def sourceBody160_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_63 sourceBody160_68

def sourceBody160_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody160_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody160_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_71 sourceBody160_25

def sourceBody160_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_72 sourceBody160_25

def sourceBody160_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_70 sourceBody160_73

def sourceBody160_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_25 sourceBody160_74

def sourceBody160_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_69 sourceBody160_75

def sourceBody160_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody160_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_76 sourceBody160_77

def sourceBody160_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody160_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody160_78 sourceBody160_79

def sourceBody160_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_80 sourceBody160_4

def sourceBody160_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_81 sourceBody160_25

def sourceBody160_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_59 sourceBody160_82

def sourceBody160_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_58 sourceBody160_83

def sourceBody160_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_54 sourceBody160_84

def sourceBody160_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_53 sourceBody160_85

def sourceBody160_87 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody160_86 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody160_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_87 sourceBody160_4

def sourceBody160_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_4 sourceBody160_88

def sourceBody160_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody160_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody160_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_91 sourceBody160_25

def sourceBody160_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_90 sourceBody160_92

def sourceBody160_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_89 sourceBody160_93

def sourceBody160_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_2 sourceBody160_94

def sourceBody160_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_25 sourceBody160_95

def sourceBody160_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_52 sourceBody160_96

def sourceBody160_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_25 sourceBody160_97

def sourceBody160_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody160_51 sourceBody160_98

def source160 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (160, 3, sourceBody160_99)
end InitECandidate.Proofs.WordStages
