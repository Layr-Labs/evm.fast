import InitECandidate.Proofs.WordStages.Source155
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody171_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody171_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_3 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 18) sourceBody171_2 sourceBody171_0

def sourceBody171_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody171_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_3 sourceBody171_4

def sourceBody171_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody171_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 24) sourceBody171_8 sourceBody171_6

def sourceBody171_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_9 sourceBody171_4

def sourceBody171_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody171_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody171_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody171_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 28) sourceBody171_15 sourceBody171_16

def sourceBody171_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_17 sourceBody171_4

def sourceBody171_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody171_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.reg 8) sourceBody171_21 sourceBody171_19

def sourceBody171_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_22 sourceBody171_4

def sourceBody171_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 32])

def sourceBody171_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody171_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody171_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody171_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody171_25, 171, 2)) (some 159) ([26]) (some (26, sourceBody171_27, 171, 3))

def sourceBody171_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_28 sourceBody171_4

def sourceBody171_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_29 sourceBody171_25

def sourceBody171_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_26 sourceBody171_30

def sourceBody171_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_25 sourceBody171_31

def sourceBody171_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_25 sourceBody171_32

def sourceBody171_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody171_33 sourceBody171_25

def sourceBody171_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_34 sourceBody171_4

def sourceBody171_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_35 sourceBody171_25

def sourceBody171_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_24 sourceBody171_36

def sourceBody171_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_23 sourceBody171_37

def sourceBody171_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_20 sourceBody171_38

def sourceBody171_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_19 sourceBody171_39

def sourceBody171_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_18 sourceBody171_40

def sourceBody171_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_14 sourceBody171_41

def sourceBody171_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_13 sourceBody171_42

def sourceBody171_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_12 sourceBody171_43

def sourceBody171_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_11 sourceBody171_44

def sourceBody171_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_10 sourceBody171_45

def sourceBody171_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_7 sourceBody171_46

def sourceBody171_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_6 sourceBody171_47

def sourceBody171_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_5 sourceBody171_48

def sourceBody171_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_1 sourceBody171_49

def sourceBody171_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_0 sourceBody171_50

def sourceBody171_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody171_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 18) sourceBody171_2 sourceBody171_0

def sourceBody171_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_54 sourceBody171_4

def sourceBody171_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody171_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody171_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 14) sourceBody171_58 sourceBody171_59

def sourceBody171_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_60 sourceBody171_4

def sourceBody171_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def sourceBody171_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody171_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 32) sourceBody171_64 sourceBody171_62

def sourceBody171_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_65 sourceBody171_4

def sourceBody171_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 20])

def sourceBody171_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 22#64)

def sourceBody171_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody171_25, 171, 4)) (some 159) ([26]) (some (26, sourceBody171_27, 171, 5))

def sourceBody171_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_69 sourceBody171_4

def sourceBody171_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_70 sourceBody171_25

def sourceBody171_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_68 sourceBody171_71

def sourceBody171_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_25 sourceBody171_72

def sourceBody171_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_25 sourceBody171_73

def sourceBody171_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody171_74 sourceBody171_25

def sourceBody171_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_75 sourceBody171_4

def sourceBody171_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_76 sourceBody171_25

def sourceBody171_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_67 sourceBody171_77

def sourceBody171_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_66 sourceBody171_78

def sourceBody171_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_63 sourceBody171_79

def sourceBody171_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_62 sourceBody171_80

def sourceBody171_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_61 sourceBody171_81

def sourceBody171_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_57 sourceBody171_82

def sourceBody171_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_56 sourceBody171_83

def sourceBody171_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_10 sourceBody171_84

def sourceBody171_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_7 sourceBody171_85

def sourceBody171_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_6 sourceBody171_86

def sourceBody171_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_55 sourceBody171_87

def sourceBody171_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_53 sourceBody171_88

def sourceBody171_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_52 sourceBody171_89

def sourceBody171_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_51 sourceBody171_90

def sourceBody171_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody171_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody171_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_93 sourceBody171_25

def sourceBody171_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_92 sourceBody171_94

def sourceBody171_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody171_91 sourceBody171_95

def source171 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (171, 4, sourceBody171_96)
end InitECandidate.Proofs.WordStages
