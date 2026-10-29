import InitECandidate.Proofs.WordStages.Source304
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody320_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody320_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody320_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody320_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody320_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody320_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody320_0, 320, 2)) (some 310) ([14, 28, 20]) (some (14, sourceBody320_4, 320, 3))

def sourceBody320_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody320_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_5 sourceBody320_6

def sourceBody320_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_7 sourceBody320_0

def sourceBody320_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_3 sourceBody320_8

def sourceBody320_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_2 sourceBody320_9

def sourceBody320_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_1 sourceBody320_10

def sourceBody320_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody320_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody320_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody320_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 32) sourceBody320_15 sourceBody320_16

def sourceBody320_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_17 sourceBody320_6

def sourceBody320_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody320_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody320_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 24) sourceBody320_21 sourceBody320_22

def sourceBody320_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_23 sourceBody320_6

def sourceBody320_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 30])

def sourceBody320_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody320_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 26) sourceBody320_27 sourceBody320_25

def sourceBody320_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_28 sourceBody320_6

def sourceBody320_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody320_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody320_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody320_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody320_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody320_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody320_0, 320, 4)) (some 319) ([28, 20, 32, 16]) (some (28, sourceBody320_35, 320, 5))

def sourceBody320_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_36 sourceBody320_6

def sourceBody320_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_37 sourceBody320_0

def sourceBody320_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_34 sourceBody320_38

def sourceBody320_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_33 sourceBody320_39

def sourceBody320_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_32 sourceBody320_40

def sourceBody320_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_31 sourceBody320_41

def sourceBody320_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody320_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody320_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody320_0, 320, 6)) (some 315) ([28, 20, 32, 16, 30, 24]) (some (28, sourceBody320_35, 320, 7))

def sourceBody320_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_45 sourceBody320_6

def sourceBody320_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_46 sourceBody320_0

def sourceBody320_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_44 sourceBody320_47

def sourceBody320_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_43 sourceBody320_48

def sourceBody320_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_34 sourceBody320_49

def sourceBody320_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_33 sourceBody320_50

def sourceBody320_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_32 sourceBody320_51

def sourceBody320_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_31 sourceBody320_52

def sourceBody320_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody320_42 sourceBody320_53

def sourceBody320_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_54 sourceBody320_6

def sourceBody320_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_55 sourceBody320_0

def sourceBody320_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_30 sourceBody320_56

def sourceBody320_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_29 sourceBody320_57

def sourceBody320_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_26 sourceBody320_58

def sourceBody320_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_25 sourceBody320_59

def sourceBody320_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_24 sourceBody320_60

def sourceBody320_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_20 sourceBody320_61

def sourceBody320_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_19 sourceBody320_62

def sourceBody320_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_18 sourceBody320_63

def sourceBody320_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_14 sourceBody320_64

def sourceBody320_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_13 sourceBody320_65

def sourceBody320_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody320_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody320_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody320_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 32

def sourceBody320_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_70 sourceBody320_0

def sourceBody320_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_69 sourceBody320_71

def sourceBody320_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_72 sourceBody320_0

def sourceBody320_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_68 sourceBody320_73

def sourceBody320_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_74

def sourceBody320_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_67 sourceBody320_75

def sourceBody320_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_76

def sourceBody320_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_66 sourceBody320_77

def sourceBody320_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody320_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody320_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_80 sourceBody320_0

def sourceBody320_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_79 sourceBody320_81

def sourceBody320_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_78 sourceBody320_82

def sourceBody320_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_12 sourceBody320_83

def sourceBody320_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_84

def sourceBody320_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_11 sourceBody320_85

def sourceBody320_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_86

def sourceBody320_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_87

def sourceBody320_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_88

def sourceBody320_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody320_0 sourceBody320_89

def source320 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (320, 6, sourceBody320_90)
end InitECandidate.Proofs.WordStages
