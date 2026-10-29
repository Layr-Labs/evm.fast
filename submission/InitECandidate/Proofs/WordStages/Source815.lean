import InitECandidate.Proofs.WordStages.Source799
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody815_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody815_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody815_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 2)) (some 69) ([]) (some (10, sourceBody815_1, 815, 3))

def sourceBody815_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody815_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_2 sourceBody815_3

def sourceBody815_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_4 sourceBody815_0

def sourceBody815_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody815_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody815_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 4)) (some 68) ([28]) (some (28, sourceBody815_7, 815, 5))

def sourceBody815_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_8 sourceBody815_3

def sourceBody815_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_9 sourceBody815_0

def sourceBody815_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_6 sourceBody815_10

def sourceBody815_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody815_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody815_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 6)) (some 68) ([20]) (some (20, sourceBody815_13, 815, 7))

def sourceBody815_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_14 sourceBody815_3

def sourceBody815_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_15 sourceBody815_0

def sourceBody815_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_12 sourceBody815_16

def sourceBody815_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody815_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody815_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody815_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 8)) (some 727) ([38, 8]) (some (38, sourceBody815_20, 815, 9))

def sourceBody815_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_21 sourceBody815_3

def sourceBody815_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_22 sourceBody815_0

def sourceBody815_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_19 sourceBody815_23

def sourceBody815_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_18 sourceBody815_24

def sourceBody815_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody815_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody815_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody815_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody815_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 26) sourceBody815_28 sourceBody815_29

def sourceBody815_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_30 sourceBody815_3

def sourceBody815_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody815_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody815_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody815_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody815_0, 815, 10)) (some 70) ([8]) (some (8, sourceBody815_34, 815, 11))

def sourceBody815_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_35 sourceBody815_3

def sourceBody815_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_36 sourceBody815_0

def sourceBody815_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_33 sourceBody815_37

def sourceBody815_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_38

def sourceBody815_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_39

def sourceBody815_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody815_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody815_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_42 sourceBody815_0

def sourceBody815_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_41 sourceBody815_43

def sourceBody815_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_40 sourceBody815_44

def sourceBody815_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody815_45 sourceBody815_0

def sourceBody815_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_46 sourceBody815_3

def sourceBody815_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_47 sourceBody815_0

def sourceBody815_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_32 sourceBody815_48

def sourceBody815_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_31 sourceBody815_49

def sourceBody815_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_27 sourceBody815_50

def sourceBody815_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_26 sourceBody815_51

def sourceBody815_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 10))

def sourceBody815_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody815_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody815_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody815_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody815_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody815_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody815_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody815_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody815_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody815_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody815_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody815_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody815_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody815_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 12)) (some 799) ([22, 40, 6, 24, 16, 34, 12]) (some (22, sourceBody815_66, 815, 13))

def sourceBody815_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_67 sourceBody815_3

def sourceBody815_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_68 sourceBody815_0

def sourceBody815_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_65 sourceBody815_69

def sourceBody815_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_64 sourceBody815_70

def sourceBody815_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_63 sourceBody815_71

def sourceBody815_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_62 sourceBody815_72

def sourceBody815_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_61 sourceBody815_73

def sourceBody815_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_60 sourceBody815_74

def sourceBody815_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_59 sourceBody815_75

def sourceBody815_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_76

def sourceBody815_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_77

def sourceBody815_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody815_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody815_0, 815, 14)) (some 776) ([22, 40]) (some (22, sourceBody815_66, 815, 15))

def sourceBody815_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_80 sourceBody815_3

def sourceBody815_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_81 sourceBody815_0

def sourceBody815_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_79 sourceBody815_82

def sourceBody815_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_59 sourceBody815_83

def sourceBody815_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_84

def sourceBody815_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_85

def sourceBody815_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_78 sourceBody815_86

def sourceBody815_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody815_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody815_0, 815, 16)) (some 70) ([22]) (some (22, sourceBody815_66, 815, 17))

def sourceBody815_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_89 sourceBody815_3

def sourceBody815_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_90 sourceBody815_0

def sourceBody815_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_88 sourceBody815_91

def sourceBody815_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_92

def sourceBody815_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_93

def sourceBody815_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_87 sourceBody815_94

def sourceBody815_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody815_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody815_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_97 sourceBody815_0

def sourceBody815_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_96 sourceBody815_98

def sourceBody815_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_95 sourceBody815_99

def sourceBody815_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_58 sourceBody815_100

def sourceBody815_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_101

def sourceBody815_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_57 sourceBody815_102

def sourceBody815_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_103

def sourceBody815_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_56 sourceBody815_104

def sourceBody815_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_105

def sourceBody815_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_55 sourceBody815_106

def sourceBody815_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_107

def sourceBody815_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_54 sourceBody815_108

def sourceBody815_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_109

def sourceBody815_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_53 sourceBody815_110

def sourceBody815_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_111

def sourceBody815_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_52 sourceBody815_112

def sourceBody815_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_25 sourceBody815_113

def sourceBody815_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_114

def sourceBody815_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_115

def sourceBody815_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_17 sourceBody815_116

def sourceBody815_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_117

def sourceBody815_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_118

def sourceBody815_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_11 sourceBody815_119

def sourceBody815_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_120

def sourceBody815_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_121

def sourceBody815_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_5 sourceBody815_122

def sourceBody815_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_123

def sourceBody815_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody815_0 sourceBody815_124

def source815 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (815, 3, sourceBody815_125)
end InitECandidate.Proofs.WordStages
