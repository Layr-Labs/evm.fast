import InitECandidate.Proofs.WordStages.Source168
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody184_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody184_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody184_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody184_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody184_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody184_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 24) sourceBody184_5 sourceBody184_6

def sourceBody184_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_7 sourceBody184_2

def sourceBody184_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody184_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody184_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody184_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody184_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody184_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_13 sourceBody184_0

def sourceBody184_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_12 sourceBody184_14

def sourceBody184_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_11 sourceBody184_15

def sourceBody184_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_10 sourceBody184_16

def sourceBody184_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 16])

def sourceBody184_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody184_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody184_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 14) sourceBody184_21 sourceBody184_22

def sourceBody184_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_23 sourceBody184_2

def sourceBody184_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody184_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody184_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody184_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody184_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 22) sourceBody184_29 sourceBody184_20

def sourceBody184_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_30 sourceBody184_2

def sourceBody184_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody184_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 7#64, Flapjack.WordLangExpHOL.var 8]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody184_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody184_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 22) sourceBody184_29 sourceBody184_20

def sourceBody184_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_35 sourceBody184_2

def sourceBody184_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody184_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody184_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_38 sourceBody184_0

def sourceBody184_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_37 sourceBody184_39

def sourceBody184_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody184_40 sourceBody184_0

def sourceBody184_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_41 sourceBody184_2

def sourceBody184_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_42 sourceBody184_0

def sourceBody184_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_32 sourceBody184_43

def sourceBody184_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_36 sourceBody184_44

def sourceBody184_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_34 sourceBody184_45

def sourceBody184_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_33 sourceBody184_46

def sourceBody184_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody184_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody184_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_49 sourceBody184_0

def sourceBody184_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_50 sourceBody184_0

def sourceBody184_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_48 sourceBody184_51

def sourceBody184_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_0 sourceBody184_52

def sourceBody184_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_47 sourceBody184_53

def sourceBody184_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody184_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_54 sourceBody184_55

def sourceBody184_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody184_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody184_56 sourceBody184_57

def sourceBody184_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_58 sourceBody184_2

def sourceBody184_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_59 sourceBody184_0

def sourceBody184_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_32 sourceBody184_60

def sourceBody184_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_31 sourceBody184_61

def sourceBody184_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_28 sourceBody184_62

def sourceBody184_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_27 sourceBody184_63

def sourceBody184_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody184_64 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody184_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_65 sourceBody184_2

def sourceBody184_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_2 sourceBody184_66

def sourceBody184_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_26 sourceBody184_67

def sourceBody184_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_0 sourceBody184_68

def sourceBody184_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody184_69 sourceBody184_0

def sourceBody184_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_70 sourceBody184_2

def sourceBody184_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_71 sourceBody184_0

def sourceBody184_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_25 sourceBody184_72

def sourceBody184_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_24 sourceBody184_73

def sourceBody184_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_20 sourceBody184_74

def sourceBody184_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_19 sourceBody184_75

def sourceBody184_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody184_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody184_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_78 sourceBody184_0

def sourceBody184_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_79 sourceBody184_0

def sourceBody184_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_77 sourceBody184_80

def sourceBody184_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_0 sourceBody184_81

def sourceBody184_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_76 sourceBody184_82

def sourceBody184_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_18 sourceBody184_83

def sourceBody184_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_17 sourceBody184_84

def sourceBody184_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_85 sourceBody184_55

def sourceBody184_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody184_86 sourceBody184_57

def sourceBody184_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_87 sourceBody184_2

def sourceBody184_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_88 sourceBody184_0

def sourceBody184_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_9 sourceBody184_89

def sourceBody184_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_8 sourceBody184_90

def sourceBody184_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_4 sourceBody184_91

def sourceBody184_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_3 sourceBody184_92

def sourceBody184_94 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody184_93 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def sourceBody184_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_94 sourceBody184_2

def sourceBody184_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_2 sourceBody184_95

def sourceBody184_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody184_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody184_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_98 sourceBody184_0

def sourceBody184_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_97 sourceBody184_99

def sourceBody184_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_96 sourceBody184_100

def sourceBody184_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_1 sourceBody184_101

def sourceBody184_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody184_0 sourceBody184_102

def source184 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (184, 4, sourceBody184_103)
end InitECandidate.Proofs.WordStages
