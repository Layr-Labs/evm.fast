import InitECandidate.Proofs.WordStages.Source221
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody237_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody237_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody237_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 2)) (some 69) ([]) (some (22, sourceBody237_1, 237, 3))

def sourceBody237_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody237_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_2 sourceBody237_3

def sourceBody237_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_4 sourceBody237_0

def sourceBody237_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 768#64)

def sourceBody237_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody237_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 4)) (some 68) ([16]) (some (16, sourceBody237_7, 237, 5))

def sourceBody237_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_8 sourceBody237_3

def sourceBody237_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_9 sourceBody237_0

def sourceBody237_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_6 sourceBody237_10

def sourceBody237_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody237_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody237_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 6)) (some 68) ([28]) (some (28, sourceBody237_13, 237, 7))

def sourceBody237_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_14 sourceBody237_3

def sourceBody237_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_15 sourceBody237_0

def sourceBody237_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_12 sourceBody237_16

def sourceBody237_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody237_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody237_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody237_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody237_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody237_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody237_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody237_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 12) sourceBody237_23 sourceBody237_24

def sourceBody237_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_25 sourceBody237_3

def sourceBody237_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody237_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody237_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody237_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody237_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody237_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody237_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 24) sourceBody237_31 sourceBody237_32

def sourceBody237_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_33 sourceBody237_3

def sourceBody237_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody237_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody237_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_36 sourceBody237_0

def sourceBody237_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_37 sourceBody237_0

def sourceBody237_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody237_38 sourceBody237_0

def sourceBody237_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_39 sourceBody237_3

def sourceBody237_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_40 sourceBody237_0

def sourceBody237_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_35 sourceBody237_41

def sourceBody237_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_34 sourceBody237_42

def sourceBody237_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_30 sourceBody237_43

def sourceBody237_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_29 sourceBody237_44

def sourceBody237_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody237_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody237_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody237_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody237_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 8)) (some 235) ([12, 24, 18, 30]) (some (12, sourceBody237_49, 237, 9))

def sourceBody237_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_50 sourceBody237_3

def sourceBody237_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_51 sourceBody237_0

def sourceBody237_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_48 sourceBody237_52

def sourceBody237_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_47 sourceBody237_53

def sourceBody237_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_30 sourceBody237_54

def sourceBody237_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_46 sourceBody237_55

def sourceBody237_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_56

def sourceBody237_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_57

def sourceBody237_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_45 sourceBody237_58

def sourceBody237_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 20])

def sourceBody237_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody237_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_61 sourceBody237_0

def sourceBody237_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_62 sourceBody237_0

def sourceBody237_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_60 sourceBody237_63

def sourceBody237_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_64

def sourceBody237_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_59 sourceBody237_65

def sourceBody237_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody237_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody237_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_68 sourceBody237_0

def sourceBody237_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_69 sourceBody237_0

def sourceBody237_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_67 sourceBody237_70

def sourceBody237_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_71

def sourceBody237_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_66 sourceBody237_72

def sourceBody237_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody237_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody237_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_75 sourceBody237_0

def sourceBody237_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_76 sourceBody237_0

def sourceBody237_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_74 sourceBody237_77

def sourceBody237_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_78

def sourceBody237_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_73 sourceBody237_79

def sourceBody237_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_28 sourceBody237_80

def sourceBody237_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_81

def sourceBody237_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody237_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_82 sourceBody237_83

def sourceBody237_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody237_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody237_84 sourceBody237_85

def sourceBody237_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_86 sourceBody237_3

def sourceBody237_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_87 sourceBody237_0

def sourceBody237_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_27 sourceBody237_88

def sourceBody237_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_26 sourceBody237_89

def sourceBody237_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_22 sourceBody237_90

def sourceBody237_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_21 sourceBody237_91

def sourceBody237_93 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody237_92 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody237_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_93 sourceBody237_3

def sourceBody237_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_3 sourceBody237_94

def sourceBody237_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody237_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody237_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody237_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 10)) (some 78) ([26, 12]) (some (26, sourceBody237_98, 237, 11))

def sourceBody237_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_99 sourceBody237_3

def sourceBody237_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_100 sourceBody237_0

def sourceBody237_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_97 sourceBody237_101

def sourceBody237_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_96 sourceBody237_102

def sourceBody237_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_103

def sourceBody237_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_104

def sourceBody237_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_95 sourceBody237_105

def sourceBody237_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody237_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 12) sourceBody237_23 sourceBody237_24

def sourceBody237_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_108 sourceBody237_3

def sourceBody237_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody237_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody237_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_111 sourceBody237_0

def sourceBody237_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_112 sourceBody237_0

def sourceBody237_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_110 sourceBody237_113

def sourceBody237_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_114

def sourceBody237_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody237_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody237_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody237_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 12)) (some 154) ([26, 12, 24]) (some (26, sourceBody237_98, 237, 13))

def sourceBody237_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_119 sourceBody237_3

def sourceBody237_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_120 sourceBody237_0

def sourceBody237_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_118 sourceBody237_121

def sourceBody237_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_117 sourceBody237_122

def sourceBody237_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_116 sourceBody237_123

def sourceBody237_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_124

def sourceBody237_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_125

def sourceBody237_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_115 sourceBody237_126

def sourceBody237_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_127 sourceBody237_83

def sourceBody237_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody237_128 sourceBody237_85

def sourceBody237_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_129 sourceBody237_3

def sourceBody237_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_130 sourceBody237_0

def sourceBody237_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_27 sourceBody237_131

def sourceBody237_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_109 sourceBody237_132

def sourceBody237_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_32 sourceBody237_133

def sourceBody237_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_107 sourceBody237_134

def sourceBody237_136 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody237_135 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody237_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_136 sourceBody237_3

def sourceBody237_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_3 sourceBody237_137

def sourceBody237_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_106 sourceBody237_138

def sourceBody237_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody237_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody237_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody237_0, 237, 14)) (some 77) ([26, 12, 24]) (some (26, sourceBody237_98, 237, 15))

def sourceBody237_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_142 sourceBody237_3

def sourceBody237_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_143 sourceBody237_0

def sourceBody237_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_141 sourceBody237_144

def sourceBody237_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_117 sourceBody237_145

def sourceBody237_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_140 sourceBody237_146

def sourceBody237_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_147

def sourceBody237_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_148

def sourceBody237_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_139 sourceBody237_149

def sourceBody237_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody237_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody237_0, 237, 16)) (some 70) ([26]) (some (26, sourceBody237_98, 237, 17))

def sourceBody237_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_152 sourceBody237_3

def sourceBody237_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_153 sourceBody237_0

def sourceBody237_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_151 sourceBody237_154

def sourceBody237_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_155

def sourceBody237_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_156

def sourceBody237_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_150 sourceBody237_157

def sourceBody237_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody237_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody237_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_160 sourceBody237_0

def sourceBody237_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_159 sourceBody237_161

def sourceBody237_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_158 sourceBody237_162

def sourceBody237_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_20 sourceBody237_163

def sourceBody237_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_164

def sourceBody237_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_19 sourceBody237_165

def sourceBody237_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_166

def sourceBody237_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_18 sourceBody237_167

def sourceBody237_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_168

def sourceBody237_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_17 sourceBody237_169

def sourceBody237_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_170

def sourceBody237_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_171

def sourceBody237_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_11 sourceBody237_172

def sourceBody237_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_173

def sourceBody237_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_174

def sourceBody237_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_5 sourceBody237_175

def sourceBody237_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_176

def sourceBody237_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody237_0 sourceBody237_177

def source237 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (237, 4, sourceBody237_178)
end InitECandidate.Proofs.WordStages
