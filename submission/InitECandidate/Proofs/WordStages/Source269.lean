import InitECandidate.Proofs.WordStages.Source253
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody269_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody269_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody269_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody269_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody269_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 20, 16, 24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody269_0, 269, 2)) (some 161) ([8, 18]) (some (8, sourceBody269_3, 269, 3))

def sourceBody269_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody269_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_4 sourceBody269_5

def sourceBody269_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_6 sourceBody269_0

def sourceBody269_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_2 sourceBody269_7

def sourceBody269_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_1 sourceBody269_8

def sourceBody269_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody269_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody269_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody269_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody269_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 14) sourceBody269_12 sourceBody269_13

def sourceBody269_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_14 sourceBody269_5

def sourceBody269_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody269_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody269_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody269_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_18 sourceBody269_0

def sourceBody269_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_19 sourceBody269_0

def sourceBody269_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_17 sourceBody269_20

def sourceBody269_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_21

def sourceBody269_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody269_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_23 sourceBody269_3

def sourceBody269_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_22 sourceBody269_24

def sourceBody269_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody269_25 sourceBody269_0

def sourceBody269_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_26 sourceBody269_5

def sourceBody269_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_27 sourceBody269_0

def sourceBody269_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_16 sourceBody269_28

def sourceBody269_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_15 sourceBody269_29

def sourceBody269_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_11 sourceBody269_30

def sourceBody269_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_10 sourceBody269_31

def sourceBody269_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody269_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody269_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody269_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody269_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody269_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody269_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 22) sourceBody269_38 sourceBody269_11

def sourceBody269_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_39 sourceBody269_5

def sourceBody269_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody269_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody269_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_42 sourceBody269_20

def sourceBody269_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_43

def sourceBody269_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_44 sourceBody269_24

def sourceBody269_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody269_45 sourceBody269_0

def sourceBody269_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_46 sourceBody269_5

def sourceBody269_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_47 sourceBody269_0

def sourceBody269_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_41 sourceBody269_48

def sourceBody269_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_40 sourceBody269_49

def sourceBody269_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_37 sourceBody269_50

def sourceBody269_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_36 sourceBody269_51

def sourceBody269_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_35 sourceBody269_52

def sourceBody269_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_34 sourceBody269_53

def sourceBody269_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody269_54 sourceBody269_0

def sourceBody269_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_55 sourceBody269_5

def sourceBody269_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_56 sourceBody269_0

def sourceBody269_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_16 sourceBody269_57

def sourceBody269_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_15 sourceBody269_58

def sourceBody269_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_11 sourceBody269_59

def sourceBody269_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_33 sourceBody269_60

def sourceBody269_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_32 sourceBody269_61

def sourceBody269_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody269_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody269_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 14) sourceBody269_12 sourceBody269_13

def sourceBody269_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_65 sourceBody269_5

def sourceBody269_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_23 sourceBody269_20

def sourceBody269_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_67

def sourceBody269_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_68 sourceBody269_24

def sourceBody269_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody269_69 sourceBody269_0

def sourceBody269_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_70 sourceBody269_5

def sourceBody269_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_71 sourceBody269_0

def sourceBody269_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_16 sourceBody269_72

def sourceBody269_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_66 sourceBody269_73

def sourceBody269_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_64 sourceBody269_74

def sourceBody269_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_63 sourceBody269_75

def sourceBody269_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody269_76 sourceBody269_0

def sourceBody269_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_77 sourceBody269_5

def sourceBody269_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_78 sourceBody269_0

def sourceBody269_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_16 sourceBody269_79

def sourceBody269_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_15 sourceBody269_80

def sourceBody269_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_11 sourceBody269_81

def sourceBody269_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_63 sourceBody269_82

def sourceBody269_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_62 sourceBody269_83

def sourceBody269_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 18]

def sourceBody269_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_85 sourceBody269_0

def sourceBody269_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_33 sourceBody269_86

def sourceBody269_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_34 sourceBody269_87

def sourceBody269_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_84 sourceBody269_88

def sourceBody269_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_9 sourceBody269_89

def sourceBody269_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_90

def sourceBody269_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_91

def sourceBody269_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_92

def sourceBody269_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_93

def sourceBody269_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_94

def sourceBody269_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_95

def sourceBody269_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_96

def sourceBody269_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody269_0 sourceBody269_97

def source269 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (269, 4, sourceBody269_98)
end InitECandidate.Proofs.WordStages
