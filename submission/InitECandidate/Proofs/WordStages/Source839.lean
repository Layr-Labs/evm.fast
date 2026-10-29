import InitECandidate.Proofs.WordStages.Source823
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody839_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody839_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody839_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody839_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody839_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody839_0, 839, 2)) (some 78) ([8, 18]) (some (8, sourceBody839_3, 839, 3))

def sourceBody839_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody839_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_4 sourceBody839_5

def sourceBody839_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_6 sourceBody839_0

def sourceBody839_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_2 sourceBody839_7

def sourceBody839_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_1 sourceBody839_8

def sourceBody839_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_9

def sourceBody839_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_10

def sourceBody839_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody839_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody839_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody839_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody839_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody839_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody839_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody839_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 6) sourceBody839_17 sourceBody839_18

def sourceBody839_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_19 sourceBody839_5

def sourceBody839_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody839_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody839_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody839_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody839_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody839_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody839_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody839_0, 839, 4)) (some 838) ([6, 16, 12]) (some (6, sourceBody839_26, 839, 5))

def sourceBody839_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_27 sourceBody839_5

def sourceBody839_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_28 sourceBody839_0

def sourceBody839_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_25 sourceBody839_29

def sourceBody839_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_24 sourceBody839_30

def sourceBody839_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_23 sourceBody839_31

def sourceBody839_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_32

def sourceBody839_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_33

def sourceBody839_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody839_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody839_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody839_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody839_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody839_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody839_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 22) sourceBody839_39 sourceBody839_40

def sourceBody839_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_41 sourceBody839_5

def sourceBody839_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody839_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody839_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody839_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody839_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody839_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody839_0, 839, 6)) (some 838) ([12, 22, 10]) (some (12, sourceBody839_47, 839, 7))

def sourceBody839_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_48 sourceBody839_5

def sourceBody839_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_49 sourceBody839_0

def sourceBody839_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_46 sourceBody839_50

def sourceBody839_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_45 sourceBody839_51

def sourceBody839_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_44 sourceBody839_52

def sourceBody839_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_53

def sourceBody839_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_54

def sourceBody839_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody839_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody839_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_57 sourceBody839_0

def sourceBody839_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_58 sourceBody839_0

def sourceBody839_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_56 sourceBody839_59

def sourceBody839_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_60

def sourceBody839_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_55 sourceBody839_61

def sourceBody839_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody839_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_62 sourceBody839_63

def sourceBody839_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody839_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody839_64 sourceBody839_65

def sourceBody839_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_66 sourceBody839_5

def sourceBody839_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_67 sourceBody839_0

def sourceBody839_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_43 sourceBody839_68

def sourceBody839_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_42 sourceBody839_69

def sourceBody839_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_38 sourceBody839_70

def sourceBody839_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_37 sourceBody839_71

def sourceBody839_73 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody839_72 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody839_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_73 sourceBody839_5

def sourceBody839_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_5 sourceBody839_74

def sourceBody839_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody839_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody839_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_77 sourceBody839_0

def sourceBody839_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_78 sourceBody839_0

def sourceBody839_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_76 sourceBody839_79

def sourceBody839_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_80

def sourceBody839_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_75 sourceBody839_81

def sourceBody839_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_36 sourceBody839_82

def sourceBody839_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_83

def sourceBody839_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_35 sourceBody839_84

def sourceBody839_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_85

def sourceBody839_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_34 sourceBody839_86

def sourceBody839_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_22 sourceBody839_87

def sourceBody839_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_88

def sourceBody839_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_89 sourceBody839_63

def sourceBody839_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody839_90 sourceBody839_65

def sourceBody839_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_91 sourceBody839_5

def sourceBody839_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_92 sourceBody839_0

def sourceBody839_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_21 sourceBody839_93

def sourceBody839_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_20 sourceBody839_94

def sourceBody839_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_16 sourceBody839_95

def sourceBody839_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_15 sourceBody839_96

def sourceBody839_98 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody839_97 (Flapjack.Spt.ls PUnit.unit)

def sourceBody839_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_98 sourceBody839_5

def sourceBody839_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_5 sourceBody839_99

def sourceBody839_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody839_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody839_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_102 sourceBody839_0

def sourceBody839_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_101 sourceBody839_103

def sourceBody839_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_100 sourceBody839_104

def sourceBody839_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_14 sourceBody839_105

def sourceBody839_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_106

def sourceBody839_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_13 sourceBody839_107

def sourceBody839_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_108

def sourceBody839_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_12 sourceBody839_109

def sourceBody839_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_0 sourceBody839_110

def sourceBody839_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody839_11 sourceBody839_111

def source839 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (839, 3, sourceBody839_112)
end InitECandidate.Proofs.WordStages
