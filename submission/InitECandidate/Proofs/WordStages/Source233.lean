import InitECandidate.Proofs.WordStages.Source217
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody233_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 4)

def sourceBody233_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 27#64)

def sourceBody233_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody233_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody233_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.reg 36) sourceBody233_2 sourceBody233_3

def sourceBody233_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody233_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_4 sourceBody233_5

def sourceBody233_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody233_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 28#64)

def sourceBody233_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody233_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody233_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody233_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_10 sourceBody233_11

def sourceBody233_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_9 sourceBody233_12

def sourceBody233_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody233_13 sourceBody233_11

def sourceBody233_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_14 sourceBody233_5

def sourceBody233_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_15 sourceBody233_11

def sourceBody233_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_7 sourceBody233_16

def sourceBody233_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_6 sourceBody233_17

def sourceBody233_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_8 sourceBody233_18

def sourceBody233_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_0 sourceBody233_19

def sourceBody233_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody233_20 sourceBody233_11

def sourceBody233_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_21 sourceBody233_5

def sourceBody233_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_22 sourceBody233_11

def sourceBody233_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_7 sourceBody233_23

def sourceBody233_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_6 sourceBody233_24

def sourceBody233_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_1 sourceBody233_25

def sourceBody233_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_0 sourceBody233_26

def sourceBody233_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody233_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody233_11, 233, 2)) (some 69) ([]) (some (44, sourceBody233_28, 233, 3))

def sourceBody233_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_29 sourceBody233_5

def sourceBody233_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_30 sourceBody233_11

def sourceBody233_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody233_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody233_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody233_11, 233, 4)) (some 68) ([36]) (some (36, sourceBody233_33, 233, 5))

def sourceBody233_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_34 sourceBody233_5

def sourceBody233_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_35 sourceBody233_11

def sourceBody233_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_32 sourceBody233_36

def sourceBody233_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 2)

def sourceBody233_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody233_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody233_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody233_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody233_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody233_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody233_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody233_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def sourceBody233_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 27#64])

def sourceBody233_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody233_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody233_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody233_11, 233, 6)) (some 231) ([50, 24, 38, 32, 46, 28, 42, 34, 48, 26, 40]) (some (50, sourceBody233_49, 233, 7))

def sourceBody233_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_50 sourceBody233_5

def sourceBody233_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_51 sourceBody233_11

def sourceBody233_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_48 sourceBody233_52

def sourceBody233_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_47 sourceBody233_53

def sourceBody233_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_46 sourceBody233_54

def sourceBody233_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_45 sourceBody233_55

def sourceBody233_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_44 sourceBody233_56

def sourceBody233_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_43 sourceBody233_57

def sourceBody233_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_42 sourceBody233_58

def sourceBody233_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_41 sourceBody233_59

def sourceBody233_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_40 sourceBody233_60

def sourceBody233_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_39 sourceBody233_61

def sourceBody233_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_38 sourceBody233_62

def sourceBody233_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody233_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody233_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody233_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody233_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 38) sourceBody233_66 sourceBody233_67

def sourceBody233_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_68 sourceBody233_5

def sourceBody233_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody233_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 44)

def sourceBody233_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody233_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody233_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody233_11, 233, 8)) (some 232) ([24, 38]) (some (24, sourceBody233_73, 233, 9))

def sourceBody233_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_74 sourceBody233_5

def sourceBody233_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_75 sourceBody233_11

def sourceBody233_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_72 sourceBody233_76

def sourceBody233_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_71 sourceBody233_77

def sourceBody233_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_78

def sourceBody233_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_79

def sourceBody233_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody233_80 sourceBody233_11

def sourceBody233_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_81 sourceBody233_5

def sourceBody233_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_82 sourceBody233_11

def sourceBody233_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_70 sourceBody233_83

def sourceBody233_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_69 sourceBody233_84

def sourceBody233_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_65 sourceBody233_85

def sourceBody233_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_64 sourceBody233_86

def sourceBody233_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody233_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody233_11, 233, 10)) (some 70) ([24]) (some (24, sourceBody233_73, 233, 11))

def sourceBody233_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_89 sourceBody233_5

def sourceBody233_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_90 sourceBody233_11

def sourceBody233_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_88 sourceBody233_91

def sourceBody233_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_92

def sourceBody233_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_93

def sourceBody233_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_87 sourceBody233_94

def sourceBody233_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 36)

def sourceBody233_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [50]

def sourceBody233_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_97 sourceBody233_11

def sourceBody233_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_96 sourceBody233_98

def sourceBody233_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_95 sourceBody233_99

def sourceBody233_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_63 sourceBody233_100

def sourceBody233_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_101

def sourceBody233_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_102

def sourceBody233_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_37 sourceBody233_103

def sourceBody233_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_104

def sourceBody233_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_105

def sourceBody233_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_31 sourceBody233_106

def sourceBody233_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_107

def sourceBody233_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_11 sourceBody233_108

def sourceBody233_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody233_27 sourceBody233_109

def source233 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (233, 12, sourceBody233_110)
end InitECandidate.Proofs.WordStages
