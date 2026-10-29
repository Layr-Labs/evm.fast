import InitECandidate.Proofs.WordStages.Source424
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody440_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody440_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody440_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody440_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody440_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody440_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody440_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody440_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody440_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody440_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 18) sourceBody440_7 sourceBody440_8

def sourceBody440_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_9 sourceBody440_4

def sourceBody440_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody440_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody440_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody440_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 18 18 26 8))

def sourceBody440_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 18]))

def sourceBody440_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody440_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody440_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody440_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 12) sourceBody440_17 sourceBody440_18

def sourceBody440_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_19 sourceBody440_4

def sourceBody440_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody440_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 18])

def sourceBody440_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody440_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_23 sourceBody440_0

def sourceBody440_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_22 sourceBody440_24

def sourceBody440_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_14 sourceBody440_25

def sourceBody440_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_13 sourceBody440_26

def sourceBody440_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_12 sourceBody440_27

def sourceBody440_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody440_28 sourceBody440_0

def sourceBody440_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_29 sourceBody440_4

def sourceBody440_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_30 sourceBody440_0

def sourceBody440_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_21 sourceBody440_31

def sourceBody440_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_20 sourceBody440_32

def sourceBody440_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_16 sourceBody440_33

def sourceBody440_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_15 sourceBody440_34

def sourceBody440_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_14 sourceBody440_35

def sourceBody440_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_13 sourceBody440_36

def sourceBody440_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_12 sourceBody440_37

def sourceBody440_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody440_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody440_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_40 sourceBody440_0

def sourceBody440_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_41 sourceBody440_0

def sourceBody440_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_39 sourceBody440_42

def sourceBody440_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_43

def sourceBody440_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_38 sourceBody440_44

def sourceBody440_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody440_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_45 sourceBody440_46

def sourceBody440_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody440_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody440_47 sourceBody440_48

def sourceBody440_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_49 sourceBody440_4

def sourceBody440_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_50 sourceBody440_0

def sourceBody440_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_11 sourceBody440_51

def sourceBody440_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_10 sourceBody440_52

def sourceBody440_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_6 sourceBody440_53

def sourceBody440_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_5 sourceBody440_54

def sourceBody440_56 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody440_55 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln)

def sourceBody440_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_56 sourceBody440_4

def sourceBody440_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_4 sourceBody440_57

def sourceBody440_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody440_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody440_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody440_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody440_0, 440, 2)) (some 437) ([8, 18]) (some (8, sourceBody440_61, 440, 3))

def sourceBody440_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_62 sourceBody440_4

def sourceBody440_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_63 sourceBody440_0

def sourceBody440_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_60 sourceBody440_64

def sourceBody440_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_59 sourceBody440_65

def sourceBody440_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody440_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody440_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody440_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 14

def sourceBody440_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_70 sourceBody440_0

def sourceBody440_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_69 sourceBody440_71

def sourceBody440_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_72 sourceBody440_0

def sourceBody440_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_68 sourceBody440_73

def sourceBody440_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_74

def sourceBody440_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_67 sourceBody440_75

def sourceBody440_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_76

def sourceBody440_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody440_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_78 sourceBody440_0

def sourceBody440_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_67 sourceBody440_79

def sourceBody440_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_77 sourceBody440_80

def sourceBody440_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_66 sourceBody440_81

def sourceBody440_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_82

def sourceBody440_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_83

def sourceBody440_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_58 sourceBody440_84

def sourceBody440_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_3 sourceBody440_85

def sourceBody440_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_86

def sourceBody440_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_2 sourceBody440_87

def sourceBody440_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_88

def sourceBody440_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_1 sourceBody440_89

def sourceBody440_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody440_0 sourceBody440_90

def source440 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (440, 4, sourceBody440_91)
end InitECandidate.Proofs.WordStages
