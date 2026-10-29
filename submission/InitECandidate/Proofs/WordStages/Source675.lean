import InitECandidate.Proofs.WordStages.Source659
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody675_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody675_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody675_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody675_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody675_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody675_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody675_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody675_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 36 (Flapjack.WordRegImm.reg 12) sourceBody675_5 sourceBody675_6

def sourceBody675_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_7 sourceBody675_2

def sourceBody675_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def sourceBody675_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody675_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody675_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody675_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody675_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody675_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody675_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody675_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody675_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody675_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody675_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 34, 14, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody675_0, 675, 2)) (some 665) ([22, 38, 10, 24, 16]) (some (22, sourceBody675_19, 675, 3))

def sourceBody675_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_20 sourceBody675_2

def sourceBody675_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_21 sourceBody675_0

def sourceBody675_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_18 sourceBody675_22

def sourceBody675_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_17 sourceBody675_23

def sourceBody675_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_16 sourceBody675_24

def sourceBody675_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_15 sourceBody675_25

def sourceBody675_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_14 sourceBody675_26

def sourceBody675_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody675_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody675_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody675_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody675_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody675_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody675_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 32

def sourceBody675_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_34 sourceBody675_0

def sourceBody675_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_33 sourceBody675_35

def sourceBody675_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody675_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  32

def sourceBody675_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_38 sourceBody675_0

def sourceBody675_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_37 sourceBody675_39

def sourceBody675_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody675_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  32

def sourceBody675_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_42 sourceBody675_0

def sourceBody675_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_41 sourceBody675_43

def sourceBody675_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody675_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  32

def sourceBody675_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_46 sourceBody675_0

def sourceBody675_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_45 sourceBody675_47

def sourceBody675_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_48 sourceBody675_0

def sourceBody675_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_44 sourceBody675_49

def sourceBody675_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_40 sourceBody675_50

def sourceBody675_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_36 sourceBody675_51

def sourceBody675_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_32 sourceBody675_52

def sourceBody675_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_53

def sourceBody675_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_31 sourceBody675_54

def sourceBody675_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_55

def sourceBody675_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_30 sourceBody675_56

def sourceBody675_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_57

def sourceBody675_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_29 sourceBody675_58

def sourceBody675_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_59

def sourceBody675_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_28 sourceBody675_60

def sourceBody675_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_61

def sourceBody675_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody675_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody675_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_64 sourceBody675_0

def sourceBody675_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_65 sourceBody675_0

def sourceBody675_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_63 sourceBody675_66

def sourceBody675_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_67

def sourceBody675_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_62 sourceBody675_68

def sourceBody675_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_27 sourceBody675_69

def sourceBody675_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_70

def sourceBody675_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_71

def sourceBody675_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_72

def sourceBody675_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_73

def sourceBody675_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_74

def sourceBody675_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_75

def sourceBody675_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_76

def sourceBody675_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_77

def sourceBody675_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_13 sourceBody675_78

def sourceBody675_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_79

def sourceBody675_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_12 sourceBody675_80

def sourceBody675_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_81

def sourceBody675_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_11 sourceBody675_82

def sourceBody675_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_83

def sourceBody675_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_10 sourceBody675_84

def sourceBody675_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_85

def sourceBody675_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody675_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_86 sourceBody675_87

def sourceBody675_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody675_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody675_88 sourceBody675_89

def sourceBody675_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_90 sourceBody675_2

def sourceBody675_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_91 sourceBody675_0

def sourceBody675_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_9 sourceBody675_92

def sourceBody675_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_8 sourceBody675_93

def sourceBody675_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_4 sourceBody675_94

def sourceBody675_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_3 sourceBody675_95

def sourceBody675_97 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody675_96 (Flapjack.Spt.ls PUnit.unit)

def sourceBody675_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_97 sourceBody675_2

def sourceBody675_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_2 sourceBody675_98

def sourceBody675_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody675_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody675_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_101 sourceBody675_0

def sourceBody675_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_100 sourceBody675_102

def sourceBody675_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_99 sourceBody675_103

def sourceBody675_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_1 sourceBody675_104

def sourceBody675_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody675_0 sourceBody675_105

def source675 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (675, 5, sourceBody675_106)
end InitECandidate.Proofs.WordStages
