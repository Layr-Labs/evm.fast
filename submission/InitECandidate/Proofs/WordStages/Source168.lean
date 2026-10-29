import InitECandidate.Proofs.WordStages.Source152
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody168_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody168_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody168_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody168_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_1 sourceBody168_2

def sourceBody168_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_0 sourceBody168_3

def sourceBody168_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody168_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody168_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody168_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody168_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody168_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody168_8 sourceBody168_9

def sourceBody168_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody168_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_10 sourceBody168_11

def sourceBody168_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody168_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody168_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody168_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_15 sourceBody168_2

def sourceBody168_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_14 sourceBody168_16

def sourceBody168_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody168_17 sourceBody168_2

def sourceBody168_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_18 sourceBody168_11

def sourceBody168_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_19 sourceBody168_2

def sourceBody168_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_13 sourceBody168_20

def sourceBody168_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_12 sourceBody168_21

def sourceBody168_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_7 sourceBody168_22

def sourceBody168_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_6 sourceBody168_23

def sourceBody168_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 183#64)

def sourceBody168_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody168_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 8) sourceBody168_8 sourceBody168_9

def sourceBody168_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_27 sourceBody168_11

def sourceBody168_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 12],
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody168_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_29 sourceBody168_16

def sourceBody168_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody168_30 sourceBody168_2

def sourceBody168_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_31 sourceBody168_11

def sourceBody168_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_32 sourceBody168_2

def sourceBody168_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_13 sourceBody168_33

def sourceBody168_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_28 sourceBody168_34

def sourceBody168_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_26 sourceBody168_35

def sourceBody168_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_25 sourceBody168_36

def sourceBody168_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_24 sourceBody168_37

def sourceBody168_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 191#64)

def sourceBody168_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 183#64])

def sourceBody168_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody168_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody168_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody168_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody168_2, 168, 2)) (some 160) ([8, 14]) (some (8, sourceBody168_43, 168, 3))

def sourceBody168_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_44 sourceBody168_11

def sourceBody168_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_45 sourceBody168_2

def sourceBody168_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_42 sourceBody168_46

def sourceBody168_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_41 sourceBody168_47

def sourceBody168_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody168_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody168_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_50 sourceBody168_2

def sourceBody168_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_49 sourceBody168_51

def sourceBody168_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_48 sourceBody168_52

def sourceBody168_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_53

def sourceBody168_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_54

def sourceBody168_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_40 sourceBody168_55

def sourceBody168_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_56

def sourceBody168_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody168_57 sourceBody168_2

def sourceBody168_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_58 sourceBody168_11

def sourceBody168_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_59 sourceBody168_2

def sourceBody168_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_13 sourceBody168_60

def sourceBody168_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_28 sourceBody168_61

def sourceBody168_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_26 sourceBody168_62

def sourceBody168_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_39 sourceBody168_63

def sourceBody168_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_38 sourceBody168_64

def sourceBody168_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 247#64)

def sourceBody168_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 12],
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody168_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_67 sourceBody168_16

def sourceBody168_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody168_68 sourceBody168_2

def sourceBody168_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_69 sourceBody168_11

def sourceBody168_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_70 sourceBody168_2

def sourceBody168_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_13 sourceBody168_71

def sourceBody168_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_28 sourceBody168_72

def sourceBody168_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_26 sourceBody168_73

def sourceBody168_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_66 sourceBody168_74

def sourceBody168_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_65 sourceBody168_75

def sourceBody168_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 247#64])

def sourceBody168_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody168_2, 168, 4)) (some 160) ([8, 14]) (some (8, sourceBody168_43, 168, 5))

def sourceBody168_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_78 sourceBody168_11

def sourceBody168_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_79 sourceBody168_2

def sourceBody168_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_42 sourceBody168_80

def sourceBody168_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_41 sourceBody168_81

def sourceBody168_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_82 sourceBody168_52

def sourceBody168_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_83

def sourceBody168_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_84

def sourceBody168_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_77 sourceBody168_85

def sourceBody168_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_2 sourceBody168_86

def sourceBody168_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_76 sourceBody168_87

def sourceBody168_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_5 sourceBody168_88

def sourceBody168_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody168_4 sourceBody168_89

def source168 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (168, 2, sourceBody168_90)
end InitECandidate.Proofs.WordStages
