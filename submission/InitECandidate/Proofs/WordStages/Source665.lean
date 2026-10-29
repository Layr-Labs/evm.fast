import InitECandidate.Proofs.WordStages.Source649
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody665_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody665_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody665_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody665_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody665_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody665_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody665_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody665_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody665_0, 665, 2)) (some 137) ([32]) (some (32, sourceBody665_6, 665, 3))

def sourceBody665_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody665_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_7 sourceBody665_8

def sourceBody665_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_9 sourceBody665_0

def sourceBody665_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_5 sourceBody665_10

def sourceBody665_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody665_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody665_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody665_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 30) sourceBody665_14 sourceBody665_12

def sourceBody665_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_15 sourceBody665_8

def sourceBody665_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody665_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody665_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def sourceBody665_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_19 sourceBody665_0

def sourceBody665_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_20 sourceBody665_0

def sourceBody665_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_18 sourceBody665_21

def sourceBody665_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_22

def sourceBody665_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody665_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody665_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody665_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody665_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody665_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody665_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody665_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody665_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 34, 14, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody665_0, 665, 4)) (some 658) ([32, 16, 30, 24, 36, 12, 26, 18]) (some (32, sourceBody665_6, 665, 5))

def sourceBody665_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_32 sourceBody665_8

def sourceBody665_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_33 sourceBody665_0

def sourceBody665_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_31 sourceBody665_34

def sourceBody665_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_30 sourceBody665_35

def sourceBody665_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_29 sourceBody665_36

def sourceBody665_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_28 sourceBody665_37

def sourceBody665_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_27 sourceBody665_38

def sourceBody665_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_26 sourceBody665_39

def sourceBody665_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_25 sourceBody665_40

def sourceBody665_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_24 sourceBody665_41

def sourceBody665_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_23 sourceBody665_42

def sourceBody665_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10) (Flapjack.WordLangExpHOL.var 20),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody665_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody665_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 30) sourceBody665_14 sourceBody665_12

def sourceBody665_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_46 sourceBody665_8

def sourceBody665_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody665_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody665_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody665_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody665_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 34, 14, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody665_0, 665, 6)) (some 658) ([32, 16, 30, 24, 36, 12, 26, 18]) (some (32, sourceBody665_6, 665, 7))

def sourceBody665_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_52 sourceBody665_8

def sourceBody665_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_53 sourceBody665_0

def sourceBody665_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_51 sourceBody665_54

def sourceBody665_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_50 sourceBody665_55

def sourceBody665_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_49 sourceBody665_56

def sourceBody665_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_48 sourceBody665_57

def sourceBody665_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_27 sourceBody665_58

def sourceBody665_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_26 sourceBody665_59

def sourceBody665_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_25 sourceBody665_60

def sourceBody665_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_24 sourceBody665_61

def sourceBody665_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody665_62 sourceBody665_0

def sourceBody665_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_63 sourceBody665_8

def sourceBody665_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_64 sourceBody665_0

def sourceBody665_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_17 sourceBody665_65

def sourceBody665_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_47 sourceBody665_66

def sourceBody665_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_45 sourceBody665_67

def sourceBody665_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_44 sourceBody665_68

def sourceBody665_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_43 sourceBody665_69

def sourceBody665_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody665_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_70 sourceBody665_71

def sourceBody665_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody665_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody665_72 sourceBody665_73

def sourceBody665_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_74 sourceBody665_8

def sourceBody665_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_75 sourceBody665_0

def sourceBody665_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_17 sourceBody665_76

def sourceBody665_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_16 sourceBody665_77

def sourceBody665_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_13 sourceBody665_78

def sourceBody665_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_12 sourceBody665_79

def sourceBody665_81 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody665_80 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody665_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_81 sourceBody665_8

def sourceBody665_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_8 sourceBody665_82

def sourceBody665_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32, 16, 30, 24]

def sourceBody665_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_84 sourceBody665_0

def sourceBody665_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_27 sourceBody665_85

def sourceBody665_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_26 sourceBody665_86

def sourceBody665_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_25 sourceBody665_87

def sourceBody665_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_24 sourceBody665_88

def sourceBody665_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_83 sourceBody665_89

def sourceBody665_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_11 sourceBody665_90

def sourceBody665_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_91

def sourceBody665_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_92

def sourceBody665_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_4 sourceBody665_93

def sourceBody665_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_94

def sourceBody665_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_3 sourceBody665_95

def sourceBody665_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_96

def sourceBody665_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_2 sourceBody665_97

def sourceBody665_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_98

def sourceBody665_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_1 sourceBody665_99

def sourceBody665_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody665_0 sourceBody665_100

def source665 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (665, 6, sourceBody665_101)
end InitECandidate.Proofs.WordStages
