import InitECandidate.Proofs.WordStages.Source801
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody817_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody817_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody817_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 2)) (some 69) ([]) (some (14, sourceBody817_1, 817, 3))

def sourceBody817_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody817_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_2 sourceBody817_3

def sourceBody817_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_4 sourceBody817_0

def sourceBody817_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody817_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody817_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 4)) (some 68) ([42]) (some (42, sourceBody817_7, 817, 5))

def sourceBody817_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_8 sourceBody817_3

def sourceBody817_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_9 sourceBody817_0

def sourceBody817_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_6 sourceBody817_10

def sourceBody817_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody817_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody817_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 6)) (some 68) ([28]) (some (28, sourceBody817_13, 817, 7))

def sourceBody817_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_14 sourceBody817_3

def sourceBody817_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_15 sourceBody817_0

def sourceBody817_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_12 sourceBody817_16

def sourceBody817_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody817_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody817_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 8)) (some 68) ([58]) (some (58, sourceBody817_19, 817, 9))

def sourceBody817_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_20 sourceBody817_3

def sourceBody817_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_21 sourceBody817_0

def sourceBody817_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_18 sourceBody817_22

def sourceBody817_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody817_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody817_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody817_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody817_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 10)) (some 153) ([10, 38, 24]) (some (10, sourceBody817_27, 817, 11))

def sourceBody817_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_28 sourceBody817_3

def sourceBody817_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_29 sourceBody817_0

def sourceBody817_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_26 sourceBody817_30

def sourceBody817_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_25 sourceBody817_31

def sourceBody817_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_24 sourceBody817_32

def sourceBody817_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_33

def sourceBody817_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_34

def sourceBody817_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 14)

def sourceBody817_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 58 0#64))

def sourceBody817_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_38 sourceBody817_0

def sourceBody817_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_37 sourceBody817_39

def sourceBody817_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_36 sourceBody817_40

def sourceBody817_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_35 sourceBody817_41

def sourceBody817_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody817_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody817_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody817_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 12)) (some 79) ([10, 38, 24]) (some (10, sourceBody817_27, 817, 13))

def sourceBody817_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_46 sourceBody817_3

def sourceBody817_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_47 sourceBody817_0

def sourceBody817_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_45 sourceBody817_48

def sourceBody817_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_44 sourceBody817_49

def sourceBody817_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_43 sourceBody817_50

def sourceBody817_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 58)

def sourceBody817_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 24) sourceBody817_54 sourceBody817_55

def sourceBody817_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_56 sourceBody817_3

def sourceBody817_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody817_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 50)

def sourceBody817_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody817_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody817_0, 817, 14)) (some 70) ([38]) (some (38, sourceBody817_60, 817, 15))

def sourceBody817_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_61 sourceBody817_3

def sourceBody817_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_62 sourceBody817_0

def sourceBody817_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_59 sourceBody817_63

def sourceBody817_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_64

def sourceBody817_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_65

def sourceBody817_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody817_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_67 sourceBody817_0

def sourceBody817_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_37 sourceBody817_68

def sourceBody817_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_66 sourceBody817_69

def sourceBody817_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody817_70 sourceBody817_0

def sourceBody817_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_71 sourceBody817_3

def sourceBody817_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_72 sourceBody817_0

def sourceBody817_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_58 sourceBody817_73

def sourceBody817_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_57 sourceBody817_74

def sourceBody817_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_53 sourceBody817_75

def sourceBody817_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_52 sourceBody817_76

def sourceBody817_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody817_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody817_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 16)) (some 806) ([38, 24]) (some (38, sourceBody817_60, 817, 17))

def sourceBody817_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_80 sourceBody817_3

def sourceBody817_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_81 sourceBody817_0

def sourceBody817_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_79 sourceBody817_82

def sourceBody817_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_78 sourceBody817_83

def sourceBody817_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody817_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 54) sourceBody817_87 sourceBody817_53

def sourceBody817_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_88 sourceBody817_3

def sourceBody817_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody817_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 50)

def sourceBody817_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody817_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody817_0, 817, 18)) (some 70) ([24]) (some (24, sourceBody817_92, 817, 19))

def sourceBody817_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_93 sourceBody817_3

def sourceBody817_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_94 sourceBody817_0

def sourceBody817_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_91 sourceBody817_95

def sourceBody817_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_96

def sourceBody817_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_97

def sourceBody817_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody817_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_99 sourceBody817_0

def sourceBody817_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_54 sourceBody817_100

def sourceBody817_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_98 sourceBody817_101

def sourceBody817_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody817_102 sourceBody817_0

def sourceBody817_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_103 sourceBody817_3

def sourceBody817_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_104 sourceBody817_0

def sourceBody817_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_90 sourceBody817_105

def sourceBody817_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_89 sourceBody817_106

def sourceBody817_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_86 sourceBody817_107

def sourceBody817_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_85 sourceBody817_108

def sourceBody817_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64])

def sourceBody817_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody817_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 20)) (some 806) ([38, 24]) (some (38, sourceBody817_60, 817, 21))

def sourceBody817_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_112 sourceBody817_3

def sourceBody817_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_113 sourceBody817_0

def sourceBody817_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_111 sourceBody817_114

def sourceBody817_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_110 sourceBody817_115

def sourceBody817_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_109 sourceBody817_116

def sourceBody817_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody817_0, 817, 22)) (some 70) ([24]) (some (24, sourceBody817_92, 817, 23))

def sourceBody817_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_118 sourceBody817_3

def sourceBody817_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_119 sourceBody817_0

def sourceBody817_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_91 sourceBody817_120

def sourceBody817_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_121

def sourceBody817_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_122

def sourceBody817_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_123 sourceBody817_101

def sourceBody817_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody817_124 sourceBody817_0

def sourceBody817_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_125 sourceBody817_3

def sourceBody817_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_126 sourceBody817_0

def sourceBody817_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_90 sourceBody817_127

def sourceBody817_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_89 sourceBody817_128

def sourceBody817_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_86 sourceBody817_129

def sourceBody817_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_85 sourceBody817_130

def sourceBody817_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_117 sourceBody817_131

def sourceBody817_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody817_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody817_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody817_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 24, 54, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 24)) (some 146) ([46, 32]) (some (46, sourceBody817_135, 817, 25))

def sourceBody817_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_136 sourceBody817_3

def sourceBody817_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_137 sourceBody817_0

def sourceBody817_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_134 sourceBody817_138

def sourceBody817_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_133 sourceBody817_139

def sourceBody817_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody817_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody817_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody817_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 32, 62, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 26)) (some 146) ([36, 22]) (some (36, sourceBody817_143, 817, 27))

def sourceBody817_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_144 sourceBody817_3

def sourceBody817_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_145 sourceBody817_0

def sourceBody817_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_142 sourceBody817_146

def sourceBody817_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_141 sourceBody817_147

def sourceBody817_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1344#64]))

def sourceBody817_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody817_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody817_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody817_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 38)

def sourceBody817_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 24)

def sourceBody817_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 54)

def sourceBody817_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody817_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def sourceBody817_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def sourceBody817_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 52)

def sourceBody817_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def sourceBody817_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody817_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 28)) (some 106) ([30, 60, 12, 40, 26, 56, 20, 48]) (some (30, sourceBody817_161, 817, 29))

def sourceBody817_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_162 sourceBody817_3

def sourceBody817_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_163 sourceBody817_0

def sourceBody817_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_160 sourceBody817_164

def sourceBody817_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_159 sourceBody817_165

def sourceBody817_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_158 sourceBody817_166

def sourceBody817_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_157 sourceBody817_167

def sourceBody817_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_156 sourceBody817_168

def sourceBody817_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_155 sourceBody817_169

def sourceBody817_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_154 sourceBody817_170

def sourceBody817_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_153 sourceBody817_171

def sourceBody817_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 46)

def sourceBody817_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 32)

def sourceBody817_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 62)

def sourceBody817_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody817_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 36)

def sourceBody817_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody817_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 52)

def sourceBody817_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody817_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody817_182 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 30)) (some 106) ([60, 12, 40, 26, 56, 20, 48, 34]) (some (60, sourceBody817_181, 817, 31))

def sourceBody817_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_182 sourceBody817_3

def sourceBody817_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_183 sourceBody817_0

def sourceBody817_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_180 sourceBody817_184

def sourceBody817_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_179 sourceBody817_185

def sourceBody817_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_178 sourceBody817_186

def sourceBody817_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_177 sourceBody817_187

def sourceBody817_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_176 sourceBody817_188

def sourceBody817_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_175 sourceBody817_189

def sourceBody817_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_174 sourceBody817_190

def sourceBody817_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_173 sourceBody817_191

def sourceBody817_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 44)

def sourceBody817_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_197 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 40) sourceBody817_195 sourceBody817_196

def sourceBody817_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_197 sourceBody817_3

def sourceBody817_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def sourceBody817_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 56 (Flapjack.WordRegImm.reg 20) sourceBody817_201 sourceBody817_202

def sourceBody817_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_203 sourceBody817_3

def sourceBody817_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 56])

def sourceBody817_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_208 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 64) sourceBody817_207 sourceBody817_205

def sourceBody817_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_208 sourceBody817_3

def sourceBody817_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 34)

def sourceBody817_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 50)

def sourceBody817_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody817_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody817_0, 817, 32)) (some 70) ([12]) (some (12, sourceBody817_212, 817, 33))

def sourceBody817_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_213 sourceBody817_3

def sourceBody817_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_214 sourceBody817_0

def sourceBody817_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_211 sourceBody817_215

def sourceBody817_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_216

def sourceBody817_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_217

def sourceBody817_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [60]

def sourceBody817_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_220 sourceBody817_0

def sourceBody817_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_219 sourceBody817_221

def sourceBody817_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_218 sourceBody817_222

def sourceBody817_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody817_223 sourceBody817_0

def sourceBody817_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_224 sourceBody817_3

def sourceBody817_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_225 sourceBody817_0

def sourceBody817_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_210 sourceBody817_226

def sourceBody817_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_209 sourceBody817_227

def sourceBody817_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_206 sourceBody817_228

def sourceBody817_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_205 sourceBody817_229

def sourceBody817_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_204 sourceBody817_230

def sourceBody817_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_200 sourceBody817_231

def sourceBody817_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_199 sourceBody817_232

def sourceBody817_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_198 sourceBody817_233

def sourceBody817_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_194 sourceBody817_234

def sourceBody817_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_193 sourceBody817_235

def sourceBody817_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 42)

def sourceBody817_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody817_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody817_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def sourceBody817_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 34)) (some 808) ([12, 40, 26, 56]) (some (12, sourceBody817_212, 817, 35))

def sourceBody817_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_241 sourceBody817_3

def sourceBody817_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_242 sourceBody817_0

def sourceBody817_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_240 sourceBody817_243

def sourceBody817_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_239 sourceBody817_244

def sourceBody817_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_238 sourceBody817_245

def sourceBody817_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_237 sourceBody817_246

def sourceBody817_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 50)

def sourceBody817_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody817_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 36)) (some 70) ([40]) (some (40, sourceBody817_249, 817, 37))

def sourceBody817_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_250 sourceBody817_3

def sourceBody817_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_251 sourceBody817_0

def sourceBody817_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_248 sourceBody817_252

def sourceBody817_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_253

def sourceBody817_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_254

def sourceBody817_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 60)

def sourceBody817_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody817_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody817_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 26) sourceBody817_258 sourceBody817_194

def sourceBody817_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_259 sourceBody817_3

def sourceBody817_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody817_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody817_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_262 sourceBody817_0

def sourceBody817_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_195 sourceBody817_263

def sourceBody817_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody817_264 sourceBody817_0

def sourceBody817_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_265 sourceBody817_3

def sourceBody817_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_266 sourceBody817_0

def sourceBody817_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_261 sourceBody817_267

def sourceBody817_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_260 sourceBody817_268

def sourceBody817_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_257 sourceBody817_269

def sourceBody817_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_256 sourceBody817_270

def sourceBody817_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_255 sourceBody817_271

def sourceBody817_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody817_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody817_275 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody817_0, 817, 38)) (some 78) ([40, 26]) (some (40, sourceBody817_249, 817, 39))

def sourceBody817_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_275 sourceBody817_3

def sourceBody817_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_276 sourceBody817_0

def sourceBody817_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_274 sourceBody817_277

def sourceBody817_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_273 sourceBody817_278

def sourceBody817_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_279

def sourceBody817_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_280

def sourceBody817_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_272 sourceBody817_281

def sourceBody817_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 30#64])

def sourceBody817_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody817_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 40 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody817_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_285 sourceBody817_0

def sourceBody817_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_284 sourceBody817_286

def sourceBody817_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_283 sourceBody817_287

def sourceBody817_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_282 sourceBody817_288

def sourceBody817_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 36)

def sourceBody817_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody817_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 52)

def sourceBody817_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody817_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody817_295 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody817_0, 817, 40)) (some 147) ([40, 26, 56, 20, 48]) (some (40, sourceBody817_249, 817, 41))

def sourceBody817_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_295 sourceBody817_3

def sourceBody817_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_296 sourceBody817_0

def sourceBody817_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_294 sourceBody817_297

def sourceBody817_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_293 sourceBody817_298

def sourceBody817_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_292 sourceBody817_299

def sourceBody817_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_291 sourceBody817_300

def sourceBody817_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_290 sourceBody817_301

def sourceBody817_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_302

def sourceBody817_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_303

def sourceBody817_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_289 sourceBody817_304

def sourceBody817_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_196 sourceBody817_263

def sourceBody817_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_305 sourceBody817_306

def sourceBody817_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_247 sourceBody817_307

def sourceBody817_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_308

def sourceBody817_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_309

def sourceBody817_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_236 sourceBody817_310

def sourceBody817_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_192 sourceBody817_311

def sourceBody817_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_312

def sourceBody817_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_313

def sourceBody817_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_172 sourceBody817_314

def sourceBody817_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_315

def sourceBody817_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_316

def sourceBody817_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_152 sourceBody817_317

def sourceBody817_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_318

def sourceBody817_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_151 sourceBody817_319

def sourceBody817_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_320

def sourceBody817_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_150 sourceBody817_321

def sourceBody817_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_322

def sourceBody817_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_149 sourceBody817_323

def sourceBody817_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_324

def sourceBody817_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_148 sourceBody817_325

def sourceBody817_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_326

def sourceBody817_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_327

def sourceBody817_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_328

def sourceBody817_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_329

def sourceBody817_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_330

def sourceBody817_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_331

def sourceBody817_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_332

def sourceBody817_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_333

def sourceBody817_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_140 sourceBody817_334

def sourceBody817_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_335

def sourceBody817_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_336

def sourceBody817_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_337

def sourceBody817_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_338

def sourceBody817_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_339

def sourceBody817_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_340

def sourceBody817_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_341

def sourceBody817_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_342

def sourceBody817_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_132 sourceBody817_343

def sourceBody817_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_84 sourceBody817_344

def sourceBody817_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_345

def sourceBody817_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_346

def sourceBody817_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_77 sourceBody817_347

def sourceBody817_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_51 sourceBody817_348

def sourceBody817_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_349

def sourceBody817_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_350

def sourceBody817_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_42 sourceBody817_351

def sourceBody817_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_23 sourceBody817_352

def sourceBody817_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_353

def sourceBody817_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_354

def sourceBody817_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_17 sourceBody817_355

def sourceBody817_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_356

def sourceBody817_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_357

def sourceBody817_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_11 sourceBody817_358

def sourceBody817_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_359

def sourceBody817_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_360

def sourceBody817_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_5 sourceBody817_361

def sourceBody817_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_362

def sourceBody817_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody817_0 sourceBody817_363

def source817 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (817, 3, sourceBody817_364)
end InitECandidate.Proofs.WordStages
