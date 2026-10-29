import InitECandidate.Proofs.WordStages.Source226
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody242_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody242_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody242_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody242_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody242_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 14) sourceBody242_2 sourceBody242_3

def sourceBody242_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody242_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_4 sourceBody242_5

def sourceBody242_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody242_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody242_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody242_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody242_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody242_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody242_8, 242, 2)) (some 78) ([18, 14]) (some (18, sourceBody242_11, 242, 3))

def sourceBody242_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_12 sourceBody242_5

def sourceBody242_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_13 sourceBody242_8

def sourceBody242_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_10 sourceBody242_14

def sourceBody242_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_9 sourceBody242_15

def sourceBody242_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_16

def sourceBody242_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_17

def sourceBody242_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody242_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody242_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody242_8, 242, 4)) (some 77) ([18, 14, 22]) (some (18, sourceBody242_11, 242, 5))

def sourceBody242_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_21 sourceBody242_5

def sourceBody242_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_22 sourceBody242_8

def sourceBody242_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_20 sourceBody242_23

def sourceBody242_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_19 sourceBody242_24

def sourceBody242_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_9 sourceBody242_25

def sourceBody242_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_26

def sourceBody242_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_27

def sourceBody242_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_18 sourceBody242_28

def sourceBody242_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody242_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody242_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_31 sourceBody242_8

def sourceBody242_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_30 sourceBody242_32

def sourceBody242_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_29 sourceBody242_33

def sourceBody242_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody242_34 sourceBody242_8

def sourceBody242_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_35 sourceBody242_5

def sourceBody242_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_36 sourceBody242_8

def sourceBody242_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_7 sourceBody242_37

def sourceBody242_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_6 sourceBody242_38

def sourceBody242_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_1 sourceBody242_39

def sourceBody242_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_0 sourceBody242_40

def sourceBody242_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody242_8, 242, 6)) (some 69) ([]) (some (18, sourceBody242_11, 242, 7))

def sourceBody242_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_42 sourceBody242_5

def sourceBody242_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_43 sourceBody242_8

def sourceBody242_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody242_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody242_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody242_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody242_8, 242, 8)) (some 241) ([22, 8]) (some (22, sourceBody242_47, 242, 9))

def sourceBody242_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_48 sourceBody242_5

def sourceBody242_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_49 sourceBody242_8

def sourceBody242_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_46 sourceBody242_50

def sourceBody242_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_45 sourceBody242_51

def sourceBody242_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody242_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody242_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody242_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody242_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody242_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody242_8, 242, 10)) (some 235) ([8, 16, 12, 20]) (some (8, sourceBody242_57, 242, 11))

def sourceBody242_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_58 sourceBody242_5

def sourceBody242_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_59 sourceBody242_8

def sourceBody242_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_56 sourceBody242_60

def sourceBody242_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_55 sourceBody242_61

def sourceBody242_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_54 sourceBody242_62

def sourceBody242_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_53 sourceBody242_63

def sourceBody242_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_64

def sourceBody242_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_65

def sourceBody242_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody242_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody242_8, 242, 12)) (some 70) ([8]) (some (8, sourceBody242_57, 242, 13))

def sourceBody242_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_68 sourceBody242_5

def sourceBody242_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_69 sourceBody242_8

def sourceBody242_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_67 sourceBody242_70

def sourceBody242_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_71

def sourceBody242_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_72

def sourceBody242_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_66 sourceBody242_73

def sourceBody242_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody242_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody242_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_76 sourceBody242_8

def sourceBody242_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_75 sourceBody242_77

def sourceBody242_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_74 sourceBody242_78

def sourceBody242_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_52 sourceBody242_79

def sourceBody242_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_80

def sourceBody242_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_81

def sourceBody242_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_82

def sourceBody242_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_83

def sourceBody242_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_44 sourceBody242_84

def sourceBody242_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_85

def sourceBody242_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_8 sourceBody242_86

def sourceBody242_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody242_41 sourceBody242_87

def source242 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (242, 4, sourceBody242_88)
end InitECandidate.Proofs.WordStages
