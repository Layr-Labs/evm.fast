import InitECandidate.Proofs.WordStages.Source827
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody843_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody843_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody843_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody843_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 2)) (some 841) ([16]) (some (16, sourceBody843_2, 843, 3))

def sourceBody843_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody843_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_3 sourceBody843_4

def sourceBody843_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_5 sourceBody843_0

def sourceBody843_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_1 sourceBody843_6

def sourceBody843_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 400#64])

def sourceBody843_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody843_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 4)) (some 68) ([28]) (some (28, sourceBody843_9, 843, 5))

def sourceBody843_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_10 sourceBody843_4

def sourceBody843_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_11 sourceBody843_0

def sourceBody843_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_8 sourceBody843_12

def sourceBody843_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody843_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody843_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody843_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody843_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody843_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody843_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 12) sourceBody843_18 sourceBody843_19

def sourceBody843_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_20 sourceBody843_4

def sourceBody843_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody843_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody843_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 26 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody843_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_24 sourceBody843_0

def sourceBody843_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_18 sourceBody843_25

def sourceBody843_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_23 sourceBody843_26

def sourceBody843_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody843_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_28 sourceBody843_0

def sourceBody843_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_29 sourceBody843_0

def sourceBody843_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_27 sourceBody843_30

def sourceBody843_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody843_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_32 sourceBody843_25

def sourceBody843_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_23 sourceBody843_33

def sourceBody843_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_34 sourceBody843_30

def sourceBody843_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody843_31 sourceBody843_35

def sourceBody843_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_36 sourceBody843_4

def sourceBody843_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_37 sourceBody843_0

def sourceBody843_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_22 sourceBody843_38

def sourceBody843_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_21 sourceBody843_39

def sourceBody843_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_17 sourceBody843_40

def sourceBody843_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_16 sourceBody843_41

def sourceBody843_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 20])

def sourceBody843_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody843_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_44 sourceBody843_0

def sourceBody843_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_45 sourceBody843_0

def sourceBody843_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_43 sourceBody843_46

def sourceBody843_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_47

def sourceBody843_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_42 sourceBody843_48

def sourceBody843_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody843_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody843_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 6)) (some 177) ([14, 26]) (some (14, sourceBody843_51, 843, 7))

def sourceBody843_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_52 sourceBody843_4

def sourceBody843_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_53 sourceBody843_0

def sourceBody843_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_50 sourceBody843_54

def sourceBody843_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_23 sourceBody843_55

def sourceBody843_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_49 sourceBody843_56

def sourceBody843_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_57 sourceBody843_48

def sourceBody843_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody843_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody843_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 8)) (some 68) ([26]) (some (26, sourceBody843_60, 843, 9))

def sourceBody843_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_61 sourceBody843_4

def sourceBody843_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_62 sourceBody843_0

def sourceBody843_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_59 sourceBody843_63

def sourceBody843_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody843_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody843_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody843_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 10)) (some 839) ([12, 24]) (some (12, sourceBody843_67, 843, 11))

def sourceBody843_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_68 sourceBody843_4

def sourceBody843_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_69 sourceBody843_0

def sourceBody843_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_66 sourceBody843_70

def sourceBody843_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_65 sourceBody843_71

def sourceBody843_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_72

def sourceBody843_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_73

def sourceBody843_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody843_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody843_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody843_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 12)) (some 176) ([26, 12, 24]) (some (26, sourceBody843_60, 843, 13))

def sourceBody843_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_78 sourceBody843_4

def sourceBody843_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_79 sourceBody843_0

def sourceBody843_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_77 sourceBody843_80

def sourceBody843_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_76 sourceBody843_81

def sourceBody843_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_75 sourceBody843_82

def sourceBody843_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_74 sourceBody843_83

def sourceBody843_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 20])

def sourceBody843_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def sourceBody843_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_86 sourceBody843_0

def sourceBody843_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_87 sourceBody843_0

def sourceBody843_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_85 sourceBody843_88

def sourceBody843_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_89

def sourceBody843_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_84 sourceBody843_90

def sourceBody843_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 14)) (some 842) ([26, 12]) (some (26, sourceBody843_60, 843, 15))

def sourceBody843_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_92 sourceBody843_4

def sourceBody843_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_93 sourceBody843_0

def sourceBody843_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_65 sourceBody843_94

def sourceBody843_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_75 sourceBody843_95

def sourceBody843_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_91 sourceBody843_96

def sourceBody843_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_97 sourceBody843_90

def sourceBody843_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody843_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody843_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody843_0, 843, 16)) (some 840) ([26, 12]) (some (26, sourceBody843_60, 843, 17))

def sourceBody843_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_101 sourceBody843_4

def sourceBody843_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_102 sourceBody843_0

def sourceBody843_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_100 sourceBody843_103

def sourceBody843_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_99 sourceBody843_104

def sourceBody843_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_98 sourceBody843_105

def sourceBody843_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody843_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody843_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody843_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 24) sourceBody843_109 sourceBody843_17

def sourceBody843_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_110 sourceBody843_4

def sourceBody843_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody843_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody843_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody843_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_114 sourceBody843_0

def sourceBody843_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_107 sourceBody843_115

def sourceBody843_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_113 sourceBody843_116

def sourceBody843_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody843_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26, 12]

def sourceBody843_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_119 sourceBody843_0

def sourceBody843_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_118 sourceBody843_120

def sourceBody843_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_113 sourceBody843_121

def sourceBody843_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_117 sourceBody843_122

def sourceBody843_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody843_123 sourceBody843_0

def sourceBody843_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_124 sourceBody843_4

def sourceBody843_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_125 sourceBody843_0

def sourceBody843_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_112 sourceBody843_126

def sourceBody843_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_111 sourceBody843_127

def sourceBody843_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_108 sourceBody843_128

def sourceBody843_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_107 sourceBody843_129

def sourceBody843_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_106 sourceBody843_130

def sourceBody843_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody843_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_132 sourceBody843_120

def sourceBody843_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_99 sourceBody843_133

def sourceBody843_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_131 sourceBody843_134

def sourceBody843_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_64 sourceBody843_135

def sourceBody843_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_136

def sourceBody843_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_137

def sourceBody843_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_58 sourceBody843_138

def sourceBody843_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_139

def sourceBody843_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_140

def sourceBody843_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_15 sourceBody843_141

def sourceBody843_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_142

def sourceBody843_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_14 sourceBody843_143

def sourceBody843_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_144

def sourceBody843_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_13 sourceBody843_145

def sourceBody843_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_146

def sourceBody843_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_147

def sourceBody843_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_7 sourceBody843_148

def sourceBody843_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_149

def sourceBody843_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody843_0 sourceBody843_150

def source843 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (843, 5, sourceBody843_151)
end InitECandidate.Proofs.WordStages
