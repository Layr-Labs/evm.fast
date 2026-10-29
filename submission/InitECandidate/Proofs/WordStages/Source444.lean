import InitECandidate.Proofs.WordStages.Source428
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody444_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody444_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody444_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody444_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody444_0, 444, 2)) (some 439) ([20]) (some (20, sourceBody444_2, 444, 3))

def sourceBody444_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody444_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_3 sourceBody444_4

def sourceBody444_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_5 sourceBody444_0

def sourceBody444_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_1 sourceBody444_6

def sourceBody444_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody444_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody444_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody444_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody444_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody444_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody444_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody444_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody444_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 22) sourceBody444_14 sourceBody444_15

def sourceBody444_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_16 sourceBody444_4

def sourceBody444_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody444_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody444_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody444_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 22) sourceBody444_14 sourceBody444_15

def sourceBody444_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_21 sourceBody444_4

def sourceBody444_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody444_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody444_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 22) sourceBody444_14 sourceBody444_15

def sourceBody444_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_25 sourceBody444_4

def sourceBody444_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody444_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody444_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody444_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 22

def sourceBody444_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_30 sourceBody444_0

def sourceBody444_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_29 sourceBody444_31

def sourceBody444_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_32 sourceBody444_0

def sourceBody444_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_28 sourceBody444_33

def sourceBody444_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_34

def sourceBody444_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_27 sourceBody444_35

def sourceBody444_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_36

def sourceBody444_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody444_37 sourceBody444_0

def sourceBody444_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_38 sourceBody444_4

def sourceBody444_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_39 sourceBody444_0

def sourceBody444_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_18 sourceBody444_40

def sourceBody444_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_26 sourceBody444_41

def sourceBody444_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_24 sourceBody444_42

def sourceBody444_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_23 sourceBody444_43

def sourceBody444_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody444_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody444_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_46 sourceBody444_0

def sourceBody444_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_45 sourceBody444_47

def sourceBody444_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_44 sourceBody444_48

def sourceBody444_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody444_49 sourceBody444_0

def sourceBody444_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_50 sourceBody444_4

def sourceBody444_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_51 sourceBody444_0

def sourceBody444_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_18 sourceBody444_52

def sourceBody444_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_22 sourceBody444_53

def sourceBody444_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_20 sourceBody444_54

def sourceBody444_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_19 sourceBody444_55

def sourceBody444_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody444_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody444_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_58 sourceBody444_0

def sourceBody444_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_59 sourceBody444_0

def sourceBody444_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_57 sourceBody444_60

def sourceBody444_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_61

def sourceBody444_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_56 sourceBody444_62

def sourceBody444_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody444_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_63 sourceBody444_64

def sourceBody444_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody444_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody444_65 sourceBody444_66

def sourceBody444_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_67 sourceBody444_4

def sourceBody444_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_68 sourceBody444_0

def sourceBody444_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_18 sourceBody444_69

def sourceBody444_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_17 sourceBody444_70

def sourceBody444_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_13 sourceBody444_71

def sourceBody444_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_12 sourceBody444_72

def sourceBody444_74 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody444_73 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody444_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_74 sourceBody444_4

def sourceBody444_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_4 sourceBody444_75

def sourceBody444_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody444_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody444_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody444_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody444_0, 444, 4)) (some 437) ([14, 22]) (some (14, sourceBody444_79, 444, 5))

def sourceBody444_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_80 sourceBody444_4

def sourceBody444_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_81 sourceBody444_0

def sourceBody444_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_78 sourceBody444_82

def sourceBody444_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_77 sourceBody444_83

def sourceBody444_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody444_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody444_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 12

def sourceBody444_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_87 sourceBody444_0

def sourceBody444_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_86 sourceBody444_88

def sourceBody444_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_89 sourceBody444_0

def sourceBody444_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_20 sourceBody444_90

def sourceBody444_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_91

def sourceBody444_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_85 sourceBody444_92

def sourceBody444_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_93

def sourceBody444_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody444_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_24 sourceBody444_90

def sourceBody444_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_96

def sourceBody444_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_95 sourceBody444_97

def sourceBody444_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_98

def sourceBody444_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_94 sourceBody444_99

def sourceBody444_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody444_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_101 sourceBody444_0

def sourceBody444_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_15 sourceBody444_102

def sourceBody444_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_100 sourceBody444_103

def sourceBody444_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_84 sourceBody444_104

def sourceBody444_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_105

def sourceBody444_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_106

def sourceBody444_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_76 sourceBody444_107

def sourceBody444_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_11 sourceBody444_108

def sourceBody444_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_109

def sourceBody444_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_10 sourceBody444_110

def sourceBody444_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_111

def sourceBody444_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_9 sourceBody444_112

def sourceBody444_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_113

def sourceBody444_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_8 sourceBody444_114

def sourceBody444_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_115

def sourceBody444_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_7 sourceBody444_116

def sourceBody444_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_117

def sourceBody444_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody444_0 sourceBody444_118

def source444 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (444, 4, sourceBody444_119)
end InitECandidate.Proofs.WordStages
