import InitECandidate.Proofs.WordStages.Source306
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody322_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody322_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody322_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody322_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody322_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody322_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody322_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody322_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody322_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 18) sourceBody322_7 sourceBody322_8

def sourceBody322_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody322_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_9 sourceBody322_10

def sourceBody322_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody322_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody322_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody322_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 2)) (some 327) ([6]) (some (6, sourceBody322_14, 322, 3))

def sourceBody322_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_15 sourceBody322_10

def sourceBody322_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_16 sourceBody322_0

def sourceBody322_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_13 sourceBody322_17

def sourceBody322_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 28])

def sourceBody322_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody322_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_20 sourceBody322_0

def sourceBody322_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_21 sourceBody322_0

def sourceBody322_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_19 sourceBody322_22

def sourceBody322_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_23

def sourceBody322_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_18 sourceBody322_24

def sourceBody322_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_25

def sourceBody322_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_26

def sourceBody322_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody322_27 sourceBody322_0

def sourceBody322_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_28 sourceBody322_10

def sourceBody322_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_29 sourceBody322_0

def sourceBody322_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_12 sourceBody322_30

def sourceBody322_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_11 sourceBody322_31

def sourceBody322_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_6 sourceBody322_32

def sourceBody322_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_5 sourceBody322_33

def sourceBody322_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody322_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody322_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody322_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody322_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 12) sourceBody322_39 sourceBody322_40

def sourceBody322_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_41 sourceBody322_10

def sourceBody322_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody322_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody322_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody322_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 4)) (some 327) ([18]) (some (18, sourceBody322_45, 322, 5))

def sourceBody322_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_46 sourceBody322_10

def sourceBody322_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_47 sourceBody322_0

def sourceBody322_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_44 sourceBody322_48

def sourceBody322_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 6])

def sourceBody322_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody322_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_51 sourceBody322_0

def sourceBody322_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_52 sourceBody322_0

def sourceBody322_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_50 sourceBody322_53

def sourceBody322_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_54

def sourceBody322_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody322_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody322_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_57 sourceBody322_0

def sourceBody322_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_58 sourceBody322_0

def sourceBody322_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_56 sourceBody322_59

def sourceBody322_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_60

def sourceBody322_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_55 sourceBody322_61

def sourceBody322_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_49 sourceBody322_62

def sourceBody322_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_63

def sourceBody322_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_64

def sourceBody322_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody322_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_65 sourceBody322_66

def sourceBody322_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody322_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody322_67 sourceBody322_68

def sourceBody322_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_69 sourceBody322_10

def sourceBody322_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_70 sourceBody322_0

def sourceBody322_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_43 sourceBody322_71

def sourceBody322_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_42 sourceBody322_72

def sourceBody322_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_38 sourceBody322_73

def sourceBody322_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_37 sourceBody322_74

def sourceBody322_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody322_75 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody322_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_76 sourceBody322_10

def sourceBody322_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_10 sourceBody322_77

def sourceBody322_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody322_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody322_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 6)) (some 326) ([18, 12]) (some (18, sourceBody322_45, 322, 7))

def sourceBody322_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_81 sourceBody322_10

def sourceBody322_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_82 sourceBody322_0

def sourceBody322_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_80 sourceBody322_83

def sourceBody322_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_79 sourceBody322_84

def sourceBody322_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_85 sourceBody322_55

def sourceBody322_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_86

def sourceBody322_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_87

def sourceBody322_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_78 sourceBody322_88

def sourceBody322_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_36 sourceBody322_89

def sourceBody322_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_90

def sourceBody322_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody322_91 sourceBody322_0

def sourceBody322_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_92 sourceBody322_10

def sourceBody322_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_93 sourceBody322_0

def sourceBody322_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_12 sourceBody322_94

def sourceBody322_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_11 sourceBody322_95

def sourceBody322_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_35 sourceBody322_96

def sourceBody322_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_5 sourceBody322_97

def sourceBody322_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_34 sourceBody322_98

def sourceBody322_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody322_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 8)) (some 180) ([6]) (some (6, sourceBody322_14, 322, 9))

def sourceBody322_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_101 sourceBody322_10

def sourceBody322_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_102 sourceBody322_0

def sourceBody322_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_100 sourceBody322_103

def sourceBody322_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 8])

def sourceBody322_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 10)) (some 68) ([18]) (some (18, sourceBody322_45, 322, 11))

def sourceBody322_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_106 sourceBody322_10

def sourceBody322_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_107 sourceBody322_0

def sourceBody322_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_105 sourceBody322_108

def sourceBody322_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody322_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody322_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 12)) (some 178) ([12, 26]) (some (12, sourceBody322_111, 322, 13))

def sourceBody322_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_112 sourceBody322_10

def sourceBody322_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_113 sourceBody322_0

def sourceBody322_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_110 sourceBody322_114

def sourceBody322_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_12 sourceBody322_115

def sourceBody322_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_116

def sourceBody322_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_117

def sourceBody322_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody322_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody322_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody322_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 10) sourceBody322_121 sourceBody322_122

def sourceBody322_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_123 sourceBody322_10

def sourceBody322_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody322_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18])

def sourceBody322_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody322_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody322_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody322_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 14)) (some 176) ([26, 10, 22]) (some (26, sourceBody322_129, 322, 15))

def sourceBody322_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_130 sourceBody322_10

def sourceBody322_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_131 sourceBody322_0

def sourceBody322_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_128 sourceBody322_132

def sourceBody322_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_127 sourceBody322_133

def sourceBody322_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_126 sourceBody322_134

def sourceBody322_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 12])

def sourceBody322_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody322_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_137 sourceBody322_0

def sourceBody322_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_138 sourceBody322_0

def sourceBody322_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_136 sourceBody322_139

def sourceBody322_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_140

def sourceBody322_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody322_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody322_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody322_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 22) sourceBody322_144 sourceBody322_145

def sourceBody322_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_146 sourceBody322_10

def sourceBody322_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody322_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18])

def sourceBody322_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody322_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody322_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody322_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 16)) (some 176) ([10, 22, 16]) (some (10, sourceBody322_152, 322, 17))

def sourceBody322_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_153 sourceBody322_10

def sourceBody322_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_154 sourceBody322_0

def sourceBody322_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_151 sourceBody322_155

def sourceBody322_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_150 sourceBody322_156

def sourceBody322_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_149 sourceBody322_157

def sourceBody322_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 26])

def sourceBody322_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody322_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_160 sourceBody322_0

def sourceBody322_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_161 sourceBody322_0

def sourceBody322_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_159 sourceBody322_162

def sourceBody322_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_163

def sourceBody322_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_158 sourceBody322_164

def sourceBody322_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_165

def sourceBody322_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_166

def sourceBody322_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody322_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18])

def sourceBody322_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 18)) (some 329) ([10, 22]) (some (10, sourceBody322_152, 322, 19))

def sourceBody322_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_170 sourceBody322_10

def sourceBody322_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_171 sourceBody322_0

def sourceBody322_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_169 sourceBody322_172

def sourceBody322_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_168 sourceBody322_173

def sourceBody322_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_174 sourceBody322_164

def sourceBody322_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_175

def sourceBody322_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_176

def sourceBody322_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody322_167 sourceBody322_177

def sourceBody322_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_178 sourceBody322_10

def sourceBody322_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_179 sourceBody322_0

def sourceBody322_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_148 sourceBody322_180

def sourceBody322_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_147 sourceBody322_181

def sourceBody322_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_143 sourceBody322_182

def sourceBody322_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_142 sourceBody322_183

def sourceBody322_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_141 sourceBody322_184

def sourceBody322_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_135 sourceBody322_185

def sourceBody322_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_186

def sourceBody322_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_187

def sourceBody322_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody322_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody322_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody322_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 22) sourceBody322_144 sourceBody322_145

def sourceBody322_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_192 sourceBody322_10

def sourceBody322_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody322_195 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 20)) (some 329) ([10, 22]) (some (10, sourceBody322_152, 322, 21))

def sourceBody322_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_195 sourceBody322_10

def sourceBody322_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_196 sourceBody322_0

def sourceBody322_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_169 sourceBody322_197

def sourceBody322_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_194 sourceBody322_198

def sourceBody322_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody322_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody322_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_201 sourceBody322_0

def sourceBody322_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_202 sourceBody322_0

def sourceBody322_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_200 sourceBody322_203

def sourceBody322_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_204

def sourceBody322_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_164 sourceBody322_205

def sourceBody322_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_199 sourceBody322_206

def sourceBody322_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_207

def sourceBody322_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_208

def sourceBody322_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_209 sourceBody322_66

def sourceBody322_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody322_210 sourceBody322_68

def sourceBody322_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_211 sourceBody322_10

def sourceBody322_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_212 sourceBody322_0

def sourceBody322_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_148 sourceBody322_213

def sourceBody322_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_193 sourceBody322_214

def sourceBody322_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_191 sourceBody322_215

def sourceBody322_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_190 sourceBody322_216

def sourceBody322_218 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody322_217 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody322_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_218 sourceBody322_10

def sourceBody322_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_10 sourceBody322_219

def sourceBody322_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody322_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody322_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody322_0, 322, 22)) (some 176) ([10, 22, 16]) (some (10, sourceBody322_152, 322, 23))

def sourceBody322_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_223 sourceBody322_10

def sourceBody322_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_224 sourceBody322_0

def sourceBody322_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_222 sourceBody322_225

def sourceBody322_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_221 sourceBody322_226

def sourceBody322_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_149 sourceBody322_227

def sourceBody322_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_228 sourceBody322_164

def sourceBody322_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_229

def sourceBody322_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_230

def sourceBody322_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_220 sourceBody322_231

def sourceBody322_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_189 sourceBody322_232

def sourceBody322_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_233

def sourceBody322_235 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody322_188 sourceBody322_234

def sourceBody322_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_235 sourceBody322_10

def sourceBody322_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_236 sourceBody322_0

def sourceBody322_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_125 sourceBody322_237

def sourceBody322_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_124 sourceBody322_238

def sourceBody322_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_120 sourceBody322_239

def sourceBody322_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_119 sourceBody322_240

def sourceBody322_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody322_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody322_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def sourceBody322_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 10

def sourceBody322_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_245 sourceBody322_0

def sourceBody322_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_244 sourceBody322_246

def sourceBody322_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_247 sourceBody322_0

def sourceBody322_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_243 sourceBody322_248

def sourceBody322_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_249

def sourceBody322_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_242 sourceBody322_250

def sourceBody322_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_251

def sourceBody322_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_241 sourceBody322_252

def sourceBody322_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody322_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_43 sourceBody322_248

def sourceBody322_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_255

def sourceBody322_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_254 sourceBody322_256

def sourceBody322_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_257

def sourceBody322_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_253 sourceBody322_258

def sourceBody322_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody322_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_260 sourceBody322_0

def sourceBody322_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_189 sourceBody322_261

def sourceBody322_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_259 sourceBody322_262

def sourceBody322_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_37 sourceBody322_263

def sourceBody322_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_264

def sourceBody322_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_118 sourceBody322_265

def sourceBody322_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_109 sourceBody322_266

def sourceBody322_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_267

def sourceBody322_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_268

def sourceBody322_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_104 sourceBody322_269

def sourceBody322_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_270

def sourceBody322_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_271

def sourceBody322_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_99 sourceBody322_272

def sourceBody322_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_4 sourceBody322_273

def sourceBody322_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_274

def sourceBody322_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_3 sourceBody322_275

def sourceBody322_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_276

def sourceBody322_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_2 sourceBody322_277

def sourceBody322_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_278

def sourceBody322_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_1 sourceBody322_279

def sourceBody322_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody322_0 sourceBody322_280

def source322 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (322, 3, sourceBody322_281)
end InitECandidate.Proofs.WordStages
