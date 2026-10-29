import InitECandidate.Proofs.WordStages.Source319
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody335_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody335_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody335_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody335_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody335_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 20, 16, 24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody335_0, 335, 2)) (some 161) ([8, 18]) (some (8, sourceBody335_3, 335, 3))

def sourceBody335_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody335_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_4 sourceBody335_5

def sourceBody335_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_6 sourceBody335_0

def sourceBody335_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_2 sourceBody335_7

def sourceBody335_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_1 sourceBody335_8

def sourceBody335_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody335_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody335_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody335_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody335_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 14) sourceBody335_12 sourceBody335_13

def sourceBody335_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_14 sourceBody335_5

def sourceBody335_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody335_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody335_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody335_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_18 sourceBody335_0

def sourceBody335_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_19 sourceBody335_0

def sourceBody335_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_17 sourceBody335_20

def sourceBody335_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_21

def sourceBody335_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody335_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_23 sourceBody335_3

def sourceBody335_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_22 sourceBody335_24

def sourceBody335_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody335_25 sourceBody335_0

def sourceBody335_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_26 sourceBody335_5

def sourceBody335_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_27 sourceBody335_0

def sourceBody335_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_16 sourceBody335_28

def sourceBody335_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_15 sourceBody335_29

def sourceBody335_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_11 sourceBody335_30

def sourceBody335_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_10 sourceBody335_31

def sourceBody335_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody335_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 14) sourceBody335_12 sourceBody335_13

def sourceBody335_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_34 sourceBody335_5

def sourceBody335_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody335_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody335_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody335_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody335_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody335_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 22) sourceBody335_40 sourceBody335_11

def sourceBody335_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_41 sourceBody335_5

def sourceBody335_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody335_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody335_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_44 sourceBody335_20

def sourceBody335_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_45

def sourceBody335_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_46 sourceBody335_24

def sourceBody335_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody335_47 sourceBody335_0

def sourceBody335_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_48 sourceBody335_5

def sourceBody335_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_49 sourceBody335_0

def sourceBody335_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_43 sourceBody335_50

def sourceBody335_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_42 sourceBody335_51

def sourceBody335_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_39 sourceBody335_52

def sourceBody335_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_38 sourceBody335_53

def sourceBody335_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_37 sourceBody335_54

def sourceBody335_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_36 sourceBody335_55

def sourceBody335_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody335_56 sourceBody335_0

def sourceBody335_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_57 sourceBody335_5

def sourceBody335_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_58 sourceBody335_0

def sourceBody335_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_16 sourceBody335_59

def sourceBody335_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_35 sourceBody335_60

def sourceBody335_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_33 sourceBody335_61

def sourceBody335_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_13 sourceBody335_62

def sourceBody335_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_32 sourceBody335_63

def sourceBody335_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody335_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody335_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_66 sourceBody335_20

def sourceBody335_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_67

def sourceBody335_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_68 sourceBody335_24

def sourceBody335_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody335_69 sourceBody335_0

def sourceBody335_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_70 sourceBody335_5

def sourceBody335_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_71 sourceBody335_0

def sourceBody335_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_16 sourceBody335_72

def sourceBody335_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_35 sourceBody335_73

def sourceBody335_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_33 sourceBody335_74

def sourceBody335_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_65 sourceBody335_75

def sourceBody335_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody335_76 sourceBody335_0

def sourceBody335_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_77 sourceBody335_5

def sourceBody335_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_78 sourceBody335_0

def sourceBody335_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_16 sourceBody335_79

def sourceBody335_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_15 sourceBody335_80

def sourceBody335_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_11 sourceBody335_81

def sourceBody335_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_65 sourceBody335_82

def sourceBody335_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_64 sourceBody335_83

def sourceBody335_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody335_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 18]

def sourceBody335_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_86 sourceBody335_0

def sourceBody335_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_85 sourceBody335_87

def sourceBody335_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_36 sourceBody335_88

def sourceBody335_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_84 sourceBody335_89

def sourceBody335_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_9 sourceBody335_90

def sourceBody335_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_91

def sourceBody335_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_92

def sourceBody335_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_93

def sourceBody335_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_94

def sourceBody335_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_95

def sourceBody335_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_96

def sourceBody335_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_97

def sourceBody335_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody335_0 sourceBody335_98

def source335 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (335, 4, sourceBody335_99)
end InitECandidate.Proofs.WordStages
