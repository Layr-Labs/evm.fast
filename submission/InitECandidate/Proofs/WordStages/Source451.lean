import InitECandidate.Proofs.WordStages.Source435
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody451_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody451_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody451_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody451_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody451_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody451_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody451_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody451_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody451_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody451_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 22) sourceBody451_7 sourceBody451_8

def sourceBody451_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_9 sourceBody451_4

def sourceBody451_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody451_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody451_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody451_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 22 22 30 10))

def sourceBody451_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 22]))

def sourceBody451_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody451_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody451_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody451_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 14) sourceBody451_17 sourceBody451_18

def sourceBody451_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_19 sourceBody451_4

def sourceBody451_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody451_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody451_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 22) sourceBody451_7 sourceBody451_8

def sourceBody451_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_23 sourceBody451_4

def sourceBody451_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody451_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 10 22))

def sourceBody451_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody451_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody451_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 28 14))

def sourceBody451_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 16])

def sourceBody451_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 26])

def sourceBody451_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody451_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody451_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody451_0, 451, 2)) (some 77) ([20, 32, 8]) (some (10, sourceBody451_33, 451, 3))

def sourceBody451_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_34 sourceBody451_4

def sourceBody451_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_35 sourceBody451_0

def sourceBody451_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_32 sourceBody451_36

def sourceBody451_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_31 sourceBody451_37

def sourceBody451_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_30 sourceBody451_38

def sourceBody451_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_29 sourceBody451_39

def sourceBody451_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_28 sourceBody451_40

def sourceBody451_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_27 sourceBody451_41

def sourceBody451_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_26 sourceBody451_42

def sourceBody451_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_25 sourceBody451_43

def sourceBody451_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_5 sourceBody451_44

def sourceBody451_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_45

def sourceBody451_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_46

def sourceBody451_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody451_47 sourceBody451_0

def sourceBody451_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_48 sourceBody451_4

def sourceBody451_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_49 sourceBody451_0

def sourceBody451_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_11 sourceBody451_50

def sourceBody451_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_24 sourceBody451_51

def sourceBody451_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_22 sourceBody451_52

def sourceBody451_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_5 sourceBody451_53

def sourceBody451_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody451_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody451_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody451_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 22

def sourceBody451_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_58 sourceBody451_0

def sourceBody451_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_57 sourceBody451_59

def sourceBody451_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_60 sourceBody451_0

def sourceBody451_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_56 sourceBody451_61

def sourceBody451_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_62

def sourceBody451_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_55 sourceBody451_63

def sourceBody451_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_64

def sourceBody451_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_54 sourceBody451_65

def sourceBody451_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody451_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody451_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_68 sourceBody451_0

def sourceBody451_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_67 sourceBody451_69

def sourceBody451_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_66 sourceBody451_70

def sourceBody451_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody451_71 sourceBody451_0

def sourceBody451_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_72 sourceBody451_4

def sourceBody451_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_73 sourceBody451_0

def sourceBody451_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_21 sourceBody451_74

def sourceBody451_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_20 sourceBody451_75

def sourceBody451_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_16 sourceBody451_76

def sourceBody451_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_15 sourceBody451_77

def sourceBody451_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_14 sourceBody451_78

def sourceBody451_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_13 sourceBody451_79

def sourceBody451_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_12 sourceBody451_80

def sourceBody451_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody451_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody451_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_83 sourceBody451_0

def sourceBody451_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_84 sourceBody451_0

def sourceBody451_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_82 sourceBody451_85

def sourceBody451_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_86

def sourceBody451_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_81 sourceBody451_87

def sourceBody451_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody451_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_88 sourceBody451_89

def sourceBody451_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody451_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody451_90 sourceBody451_91

def sourceBody451_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_92 sourceBody451_4

def sourceBody451_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_93 sourceBody451_0

def sourceBody451_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_11 sourceBody451_94

def sourceBody451_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_10 sourceBody451_95

def sourceBody451_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_6 sourceBody451_96

def sourceBody451_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_5 sourceBody451_97

def sourceBody451_99 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody451_98 (Flapjack.Spt.ls PUnit.unit)

def sourceBody451_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_99 sourceBody451_4

def sourceBody451_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_4 sourceBody451_100

def sourceBody451_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_101 sourceBody451_70

def sourceBody451_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_3 sourceBody451_102

def sourceBody451_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_103

def sourceBody451_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_2 sourceBody451_104

def sourceBody451_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_105

def sourceBody451_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_1 sourceBody451_106

def sourceBody451_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody451_0 sourceBody451_107

def source451 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (451, 4, sourceBody451_108)
end InitECandidate.Proofs.WordStages
