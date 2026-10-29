import InitECandidate.Proofs.WordStages.Source285
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody301_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody301_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody301_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody301_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody301_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody301_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_0

def sourceBody301_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_8 sourceBody301_0

def sourceBody301_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody301_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody301_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 3)) (some 286) ([20]) (some (20, sourceBody301_11, 301, 4))

def sourceBody301_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_12 sourceBody301_7

def sourceBody301_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_13 sourceBody301_0

def sourceBody301_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_10 sourceBody301_14

def sourceBody301_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_15

def sourceBody301_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_16

def sourceBody301_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_9 sourceBody301_17

def sourceBody301_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_7 sourceBody301_18

def sourceBody301_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 1#64) sourceBody301_6 sourceBody301_19

def sourceBody301_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_20 sourceBody301_7

def sourceBody301_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 36, 24, 48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 2)) (some 162) ([32, 20]) (some (32, sourceBody301_21, 301, 5))

def sourceBody301_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_22 sourceBody301_7

def sourceBody301_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_23 sourceBody301_0

def sourceBody301_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_5 sourceBody301_24

def sourceBody301_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_4 sourceBody301_25

def sourceBody301_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody301_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 44) sourceBody301_29 sourceBody301_30

def sourceBody301_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_31 sourceBody301_7

def sourceBody301_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody301_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody301_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32, 20]

def sourceBody301_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_36 sourceBody301_0

def sourceBody301_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_30 sourceBody301_37

def sourceBody301_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_35 sourceBody301_38

def sourceBody301_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody301_39 sourceBody301_0

def sourceBody301_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_40 sourceBody301_7

def sourceBody301_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_41 sourceBody301_0

def sourceBody301_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_33 sourceBody301_42

def sourceBody301_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_32 sourceBody301_43

def sourceBody301_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_28 sourceBody301_44

def sourceBody301_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_34 sourceBody301_45

def sourceBody301_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody301_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 6)) (some 286) ([20]) (some (20, sourceBody301_11, 301, 7))

def sourceBody301_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_48 sourceBody301_7

def sourceBody301_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_49 sourceBody301_0

def sourceBody301_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_47 sourceBody301_50

def sourceBody301_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_51

def sourceBody301_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_52

def sourceBody301_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_46 sourceBody301_53

def sourceBody301_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody301_54 sourceBody301_0

def sourceBody301_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_55 sourceBody301_7

def sourceBody301_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_56 sourceBody301_0

def sourceBody301_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_33 sourceBody301_57

def sourceBody301_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_32 sourceBody301_58

def sourceBody301_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_28 sourceBody301_59

def sourceBody301_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_27 sourceBody301_60

def sourceBody301_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_26 sourceBody301_61

def sourceBody301_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def sourceBody301_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody301_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody301_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 8)) (some 169) ([44, 16]) (some (44, sourceBody301_65, 301, 9))

def sourceBody301_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_66 sourceBody301_7

def sourceBody301_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_67 sourceBody301_0

def sourceBody301_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_64 sourceBody301_68

def sourceBody301_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_63 sourceBody301_69

def sourceBody301_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 32)

def sourceBody301_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody301_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody301_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 28) sourceBody301_74 sourceBody301_75

def sourceBody301_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_76 sourceBody301_7

def sourceBody301_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 40)

def sourceBody301_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody301_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody301_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody301_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 40, 28, 52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 10)) (some 161) ([8, 30]) (some (8, sourceBody301_81, 301, 11))

def sourceBody301_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_82 sourceBody301_7

def sourceBody301_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_83 sourceBody301_0

def sourceBody301_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_80 sourceBody301_84

def sourceBody301_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_79 sourceBody301_85

def sourceBody301_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody301_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 18) sourceBody301_89 sourceBody301_90

def sourceBody301_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_91 sourceBody301_7

def sourceBody301_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody301_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody301_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody301_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 12)) (some 286) ([30]) (some (30, sourceBody301_95, 301, 13))

def sourceBody301_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_96 sourceBody301_7

def sourceBody301_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_97 sourceBody301_0

def sourceBody301_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_94 sourceBody301_98

def sourceBody301_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_99

def sourceBody301_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_100

def sourceBody301_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody301_101 sourceBody301_0

def sourceBody301_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_102 sourceBody301_7

def sourceBody301_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_103 sourceBody301_0

def sourceBody301_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_93 sourceBody301_104

def sourceBody301_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_92 sourceBody301_105

def sourceBody301_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_88 sourceBody301_106

def sourceBody301_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_87 sourceBody301_107

def sourceBody301_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody301_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody301_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody301_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 30, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 14)) (some 289) ([42, 14]) (some (42, sourceBody301_111, 301, 15))

def sourceBody301_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_112 sourceBody301_7

def sourceBody301_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_113 sourceBody301_0

def sourceBody301_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_110 sourceBody301_114

def sourceBody301_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_109 sourceBody301_115

def sourceBody301_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody301_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 38) sourceBody301_119 sourceBody301_120

def sourceBody301_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_121 sourceBody301_7

def sourceBody301_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody301_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody301_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody301_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody301_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 14, 38, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 16)) (some 161) ([50, 10]) (some (50, sourceBody301_126, 301, 17))

def sourceBody301_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_127 sourceBody301_7

def sourceBody301_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_128 sourceBody301_0

def sourceBody301_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_125 sourceBody301_129

def sourceBody301_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_124 sourceBody301_130

def sourceBody301_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def sourceBody301_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 34) sourceBody301_134 sourceBody301_135

def sourceBody301_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_136 sourceBody301_7

def sourceBody301_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody301_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody301_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody301_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 18)) (some 286) ([10]) (some (10, sourceBody301_140, 301, 19))

def sourceBody301_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_141 sourceBody301_7

def sourceBody301_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_142 sourceBody301_0

def sourceBody301_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_139 sourceBody301_143

def sourceBody301_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_144

def sourceBody301_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_145

def sourceBody301_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody301_146 sourceBody301_0

def sourceBody301_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_147 sourceBody301_7

def sourceBody301_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_148 sourceBody301_0

def sourceBody301_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_138 sourceBody301_149

def sourceBody301_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_137 sourceBody301_150

def sourceBody301_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_133 sourceBody301_151

def sourceBody301_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_132 sourceBody301_152

def sourceBody301_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody301_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody301_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody301_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 38)

def sourceBody301_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 20)) (some 296) ([10, 34, 22, 46]) (some (10, sourceBody301_140, 301, 21))

def sourceBody301_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_158 sourceBody301_7

def sourceBody301_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_159 sourceBody301_0

def sourceBody301_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_157 sourceBody301_160

def sourceBody301_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_156 sourceBody301_161

def sourceBody301_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_155 sourceBody301_162

def sourceBody301_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_154 sourceBody301_163

def sourceBody301_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody301_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody301_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody301_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 22

def sourceBody301_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_168 sourceBody301_0

def sourceBody301_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_167 sourceBody301_169

def sourceBody301_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_170 sourceBody301_0

def sourceBody301_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_166 sourceBody301_171

def sourceBody301_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_172

def sourceBody301_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_165 sourceBody301_173

def sourceBody301_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_174

def sourceBody301_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody301_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody301_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_177 sourceBody301_171

def sourceBody301_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_178

def sourceBody301_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_176 sourceBody301_179

def sourceBody301_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_180

def sourceBody301_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_175 sourceBody301_181

def sourceBody301_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 50)

def sourceBody301_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 34]

def sourceBody301_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_184 sourceBody301_0

def sourceBody301_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_183 sourceBody301_185

def sourceBody301_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_135 sourceBody301_186

def sourceBody301_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_182 sourceBody301_187

def sourceBody301_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_164 sourceBody301_188

def sourceBody301_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_189

def sourceBody301_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_190

def sourceBody301_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_153 sourceBody301_191

def sourceBody301_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_131 sourceBody301_192

def sourceBody301_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_193

def sourceBody301_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_194

def sourceBody301_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_195

def sourceBody301_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_196

def sourceBody301_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_197

def sourceBody301_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_198

def sourceBody301_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_199

def sourceBody301_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_200

def sourceBody301_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody301_201 sourceBody301_0

def sourceBody301_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_202 sourceBody301_7

def sourceBody301_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_203 sourceBody301_0

def sourceBody301_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_123 sourceBody301_204

def sourceBody301_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_122 sourceBody301_205

def sourceBody301_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_118 sourceBody301_206

def sourceBody301_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_117 sourceBody301_207

def sourceBody301_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody301_210 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 38) sourceBody301_119 sourceBody301_120

def sourceBody301_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_210 sourceBody301_7

def sourceBody301_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody301_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody301_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 22)) (some 286) ([14]) (some (14, sourceBody301_213, 301, 23))

def sourceBody301_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_214 sourceBody301_7

def sourceBody301_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_215 sourceBody301_0

def sourceBody301_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_212 sourceBody301_216

def sourceBody301_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_217

def sourceBody301_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_218

def sourceBody301_220 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody301_219 sourceBody301_0

def sourceBody301_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_220 sourceBody301_7

def sourceBody301_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_221 sourceBody301_0

def sourceBody301_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_123 sourceBody301_222

def sourceBody301_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_211 sourceBody301_223

def sourceBody301_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_118 sourceBody301_224

def sourceBody301_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_209 sourceBody301_225

def sourceBody301_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_208 sourceBody301_226

def sourceBody301_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody301_229 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 24)) (some 74) ([14]) (some (14, sourceBody301_213, 301, 25))

def sourceBody301_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_229 sourceBody301_7

def sourceBody301_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_230 sourceBody301_0

def sourceBody301_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_228 sourceBody301_231

def sourceBody301_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody301_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody301_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 26

def sourceBody301_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_236 sourceBody301_0

def sourceBody301_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_235 sourceBody301_237

def sourceBody301_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_238 sourceBody301_0

def sourceBody301_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_234 sourceBody301_239

def sourceBody301_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_240

def sourceBody301_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_233 sourceBody301_241

def sourceBody301_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_242

def sourceBody301_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody301_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody301_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_245 sourceBody301_239

def sourceBody301_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_246

def sourceBody301_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_244 sourceBody301_247

def sourceBody301_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_248

def sourceBody301_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_243 sourceBody301_249

def sourceBody301_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody301_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 4)

def sourceBody301_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_252 sourceBody301_239

def sourceBody301_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_253

def sourceBody301_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_251 sourceBody301_254

def sourceBody301_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_255

def sourceBody301_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_250 sourceBody301_256

def sourceBody301_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody301_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody301_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_259 sourceBody301_239

def sourceBody301_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_260

def sourceBody301_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_258 sourceBody301_261

def sourceBody301_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_262

def sourceBody301_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_257 sourceBody301_263

def sourceBody301_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody301_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody301_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_266 sourceBody301_239

def sourceBody301_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_267

def sourceBody301_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_265 sourceBody301_268

def sourceBody301_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_269

def sourceBody301_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_264 sourceBody301_270

def sourceBody301_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody301_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody301_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_273 sourceBody301_239

def sourceBody301_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_274

def sourceBody301_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_272 sourceBody301_275

def sourceBody301_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_276

def sourceBody301_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_271 sourceBody301_277

def sourceBody301_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody301_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 38]

def sourceBody301_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_280 sourceBody301_0

def sourceBody301_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_279 sourceBody301_281

def sourceBody301_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_119 sourceBody301_282

def sourceBody301_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_278 sourceBody301_283

def sourceBody301_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_232 sourceBody301_284

def sourceBody301_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_285

def sourceBody301_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_286

def sourceBody301_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_227 sourceBody301_287

def sourceBody301_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_116 sourceBody301_288

def sourceBody301_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_289

def sourceBody301_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_290

def sourceBody301_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_291

def sourceBody301_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_292

def sourceBody301_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_293

def sourceBody301_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_294

def sourceBody301_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_108 sourceBody301_295

def sourceBody301_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_86 sourceBody301_296

def sourceBody301_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_297

def sourceBody301_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_298

def sourceBody301_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_299

def sourceBody301_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_300

def sourceBody301_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_301

def sourceBody301_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_302

def sourceBody301_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_303

def sourceBody301_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_304

def sourceBody301_306 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody301_305 sourceBody301_0

def sourceBody301_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_306 sourceBody301_7

def sourceBody301_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_307 sourceBody301_0

def sourceBody301_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_78 sourceBody301_308

def sourceBody301_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_77 sourceBody301_309

def sourceBody301_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_73 sourceBody301_310

def sourceBody301_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_72 sourceBody301_311

def sourceBody301_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 17#64)

def sourceBody301_314 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.reg 28) sourceBody301_74 sourceBody301_75

def sourceBody301_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_314 sourceBody301_7

def sourceBody301_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody301_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody301_318 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 26)) (some 286) ([40]) (some (40, sourceBody301_317, 301, 27))

def sourceBody301_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_318 sourceBody301_7

def sourceBody301_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_319 sourceBody301_0

def sourceBody301_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_316 sourceBody301_320

def sourceBody301_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_321

def sourceBody301_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_322

def sourceBody301_324 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody301_323 sourceBody301_0

def sourceBody301_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_324 sourceBody301_7

def sourceBody301_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_325 sourceBody301_0

def sourceBody301_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_78 sourceBody301_326

def sourceBody301_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_315 sourceBody301_327

def sourceBody301_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_313 sourceBody301_328

def sourceBody301_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_72 sourceBody301_329

def sourceBody301_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_312 sourceBody301_330

def sourceBody301_332 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 28)) (some 298) ([]) (some (40, sourceBody301_317, 301, 29))

def sourceBody301_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_332 sourceBody301_7

def sourceBody301_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_333 sourceBody301_0

def sourceBody301_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody301_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody301_337 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody301_0, 301, 30)) (some 74) ([28]) (some (28, sourceBody301_336, 301, 31))

def sourceBody301_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_337 sourceBody301_7

def sourceBody301_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_338 sourceBody301_0

def sourceBody301_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_335 sourceBody301_339

def sourceBody301_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody301_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody301_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 52)

def sourceBody301_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 8

def sourceBody301_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_344 sourceBody301_0

def sourceBody301_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_343 sourceBody301_345

def sourceBody301_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_346 sourceBody301_0

def sourceBody301_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_342 sourceBody301_347

def sourceBody301_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_348

def sourceBody301_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_341 sourceBody301_349

def sourceBody301_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_350

def sourceBody301_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody301_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody301_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_353 sourceBody301_347

def sourceBody301_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_354

def sourceBody301_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_352 sourceBody301_355

def sourceBody301_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_356

def sourceBody301_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_351 sourceBody301_357

def sourceBody301_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody301_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 44)

def sourceBody301_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_360 sourceBody301_347

def sourceBody301_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_361

def sourceBody301_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_359 sourceBody301_362

def sourceBody301_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_363

def sourceBody301_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_358 sourceBody301_364

def sourceBody301_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody301_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody301_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_367 sourceBody301_347

def sourceBody301_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_368

def sourceBody301_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_366 sourceBody301_369

def sourceBody301_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_370

def sourceBody301_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_365 sourceBody301_371

def sourceBody301_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody301_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_373 sourceBody301_369

def sourceBody301_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_374

def sourceBody301_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_372 sourceBody301_375

def sourceBody301_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody301_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 4)

def sourceBody301_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_378 sourceBody301_347

def sourceBody301_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_379

def sourceBody301_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_377 sourceBody301_380

def sourceBody301_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_381

def sourceBody301_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_376 sourceBody301_382

def sourceBody301_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody301_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 6)

def sourceBody301_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_385 sourceBody301_347

def sourceBody301_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_386

def sourceBody301_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_384 sourceBody301_387

def sourceBody301_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_388

def sourceBody301_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_383 sourceBody301_389

def sourceBody301_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody301_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 52]

def sourceBody301_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_392 sourceBody301_0

def sourceBody301_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_78 sourceBody301_393

def sourceBody301_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_391 sourceBody301_394

def sourceBody301_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_390 sourceBody301_395

def sourceBody301_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_340 sourceBody301_396

def sourceBody301_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_397

def sourceBody301_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_398

def sourceBody301_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_334 sourceBody301_399

def sourceBody301_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_400

def sourceBody301_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_401

def sourceBody301_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_331 sourceBody301_402

def sourceBody301_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_71 sourceBody301_403

def sourceBody301_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_404

def sourceBody301_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_70 sourceBody301_405

def sourceBody301_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_406

def sourceBody301_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_407

def sourceBody301_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_408

def sourceBody301_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_409

def sourceBody301_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_62 sourceBody301_410

def sourceBody301_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_411

def sourceBody301_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_412

def sourceBody301_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_413

def sourceBody301_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_414

def sourceBody301_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_3 sourceBody301_415

def sourceBody301_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_416

def sourceBody301_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_2 sourceBody301_417

def sourceBody301_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_418

def sourceBody301_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_1 sourceBody301_419

def sourceBody301_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody301_0 sourceBody301_420

def source301 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (301, 4, sourceBody301_421)
end InitECandidate.Proofs.WordStages
