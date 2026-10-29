import InitECandidate.Proofs.WordStages.Source842
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody858_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody858_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody858_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody858_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody858_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody858_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody858_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody858_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody858_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody858_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody858_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 30) sourceBody858_11 sourceBody858_12

def sourceBody858_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_13 sourceBody858_8

def sourceBody858_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody858_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody858_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody858_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody858_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody858_0, 858, 2)) (some 346) ([14, 30]) (some (14, sourceBody858_18, 858, 3))

def sourceBody858_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_19 sourceBody858_8

def sourceBody858_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_20 sourceBody858_0

def sourceBody858_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_17 sourceBody858_21

def sourceBody858_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_16 sourceBody858_22

def sourceBody858_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody858_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody858_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody858_0, 858, 4)) (some 855) ([30]) (some (30, sourceBody858_25, 858, 5))

def sourceBody858_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_26 sourceBody858_8

def sourceBody858_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_27 sourceBody858_0

def sourceBody858_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_24 sourceBody858_28

def sourceBody858_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody858_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 26) sourceBody858_31 sourceBody858_32

def sourceBody858_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_33 sourceBody858_8

def sourceBody858_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody858_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody858_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody858_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody858_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 34) sourceBody858_38 sourceBody858_39

def sourceBody858_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_40 sourceBody858_8

def sourceBody858_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody858_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody858_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody858_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 34) sourceBody858_38 sourceBody858_39

def sourceBody858_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_45 sourceBody858_8

def sourceBody858_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody858_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_47 sourceBody858_0

def sourceBody858_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_30 sourceBody858_48

def sourceBody858_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody858_49 sourceBody858_0

def sourceBody858_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_50 sourceBody858_8

def sourceBody858_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_51 sourceBody858_0

def sourceBody858_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_42 sourceBody858_52

def sourceBody858_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_46 sourceBody858_53

def sourceBody858_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_44 sourceBody858_54

def sourceBody858_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_43 sourceBody858_55

def sourceBody858_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody858_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody858_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody858_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody858_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody858_0, 858, 6)) (some 79) ([18, 34, 4]) (some (18, sourceBody858_60, 858, 7))

def sourceBody858_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_61 sourceBody858_8

def sourceBody858_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_62 sourceBody858_0

def sourceBody858_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_59 sourceBody858_63

def sourceBody858_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_58 sourceBody858_64

def sourceBody858_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_57 sourceBody858_65

def sourceBody858_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody858_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody858_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 4) sourceBody858_69 sourceBody858_70

def sourceBody858_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_71 sourceBody858_8

def sourceBody858_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody858_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody858_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_74 sourceBody858_0

def sourceBody858_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_39 sourceBody858_75

def sourceBody858_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody858_76 sourceBody858_0

def sourceBody858_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_77 sourceBody858_8

def sourceBody858_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_78 sourceBody858_0

def sourceBody858_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_73 sourceBody858_79

def sourceBody858_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_72 sourceBody858_80

def sourceBody858_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_68 sourceBody858_81

def sourceBody858_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_67 sourceBody858_82

def sourceBody858_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody858_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody858_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_85 sourceBody858_0

def sourceBody858_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_86 sourceBody858_0

def sourceBody858_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_84 sourceBody858_87

def sourceBody858_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_88

def sourceBody858_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_83 sourceBody858_89

def sourceBody858_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody858_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody858_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_92 sourceBody858_0

def sourceBody858_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_93 sourceBody858_0

def sourceBody858_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_91 sourceBody858_94

def sourceBody858_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_95

def sourceBody858_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_90 sourceBody858_96

def sourceBody858_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_66 sourceBody858_97

def sourceBody858_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_98

def sourceBody858_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_99

def sourceBody858_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_56 sourceBody858_100

def sourceBody858_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody858_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_101 sourceBody858_102

def sourceBody858_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody858_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody858_103 sourceBody858_104

def sourceBody858_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_105 sourceBody858_8

def sourceBody858_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_106 sourceBody858_0

def sourceBody858_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_42 sourceBody858_107

def sourceBody858_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_41 sourceBody858_108

def sourceBody858_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_37 sourceBody858_109

def sourceBody858_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_35 sourceBody858_110

def sourceBody858_112 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody858_111 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody858_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_112 sourceBody858_8

def sourceBody858_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_8 sourceBody858_113

def sourceBody858_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_32 sourceBody858_114

def sourceBody858_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_115

def sourceBody858_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_36 sourceBody858_116

def sourceBody858_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_117

def sourceBody858_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody858_118 sourceBody858_0

def sourceBody858_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_119 sourceBody858_8

def sourceBody858_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_120 sourceBody858_0

def sourceBody858_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_35 sourceBody858_121

def sourceBody858_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_34 sourceBody858_122

def sourceBody858_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_30 sourceBody858_123

def sourceBody858_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_15 sourceBody858_124

def sourceBody858_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody858_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody858_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_127 sourceBody858_0

def sourceBody858_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_128 sourceBody858_0

def sourceBody858_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_126 sourceBody858_129

def sourceBody858_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_130

def sourceBody858_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_125 sourceBody858_131

def sourceBody858_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_29 sourceBody858_132

def sourceBody858_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_133

def sourceBody858_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_134

def sourceBody858_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_23 sourceBody858_135

def sourceBody858_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_136

def sourceBody858_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_137

def sourceBody858_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_138 sourceBody858_102

def sourceBody858_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody858_139 sourceBody858_104

def sourceBody858_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_140 sourceBody858_8

def sourceBody858_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_141 sourceBody858_0

def sourceBody858_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_15 sourceBody858_142

def sourceBody858_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_14 sourceBody858_143

def sourceBody858_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_10 sourceBody858_144

def sourceBody858_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_9 sourceBody858_145

def sourceBody858_147 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody858_146 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody858_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_147 sourceBody858_8

def sourceBody858_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_8 sourceBody858_148

def sourceBody858_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody858_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody858_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 30) sourceBody858_11 sourceBody858_12

def sourceBody858_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_152 sourceBody858_8

def sourceBody858_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody858_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody858_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_155 sourceBody858_0

def sourceBody858_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_154 sourceBody858_156

def sourceBody858_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody858_157 sourceBody858_0

def sourceBody858_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_158 sourceBody858_8

def sourceBody858_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_159 sourceBody858_0

def sourceBody858_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_15 sourceBody858_160

def sourceBody858_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_153 sourceBody858_161

def sourceBody858_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_151 sourceBody858_162

def sourceBody858_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_150 sourceBody858_163

def sourceBody858_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_149 sourceBody858_164

def sourceBody858_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody858_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_166 sourceBody858_156

def sourceBody858_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_165 sourceBody858_167

def sourceBody858_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_7 sourceBody858_168

def sourceBody858_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_169

def sourceBody858_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_6 sourceBody858_170

def sourceBody858_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_171

def sourceBody858_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_5 sourceBody858_172

def sourceBody858_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_173

def sourceBody858_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_4 sourceBody858_174

def sourceBody858_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_175

def sourceBody858_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_3 sourceBody858_176

def sourceBody858_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_177

def sourceBody858_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_2 sourceBody858_178

def sourceBody858_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_179

def sourceBody858_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_1 sourceBody858_180

def sourceBody858_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody858_0 sourceBody858_181

def source858 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (858, 2, sourceBody858_182)
end InitECandidate.Proofs.WordStages
