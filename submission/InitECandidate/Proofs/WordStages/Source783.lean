import InitECandidate.Proofs.WordStages.Source767
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody783_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody783_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody783_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody783_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 2)) (some 779) ([36]) (some (36, sourceBody783_2, 783, 3))

def sourceBody783_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody783_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_3 sourceBody783_4

def sourceBody783_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_5 sourceBody783_0

def sourceBody783_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_1 sourceBody783_6

def sourceBody783_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody783_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 46) sourceBody783_10 sourceBody783_11

def sourceBody783_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_12 sourceBody783_4

def sourceBody783_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody783_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody783_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 6)

def sourceBody783_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody783_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody783_0, 783, 4)) (some 780) ([24, 46]) (some (24, sourceBody783_17, 783, 5))

def sourceBody783_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_18 sourceBody783_4

def sourceBody783_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_19 sourceBody783_0

def sourceBody783_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_16 sourceBody783_20

def sourceBody783_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_15 sourceBody783_21

def sourceBody783_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_22

def sourceBody783_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_23

def sourceBody783_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody783_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_26 sourceBody783_0

def sourceBody783_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_25 sourceBody783_27

def sourceBody783_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_24 sourceBody783_28

def sourceBody783_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody783_29 sourceBody783_0

def sourceBody783_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_30 sourceBody783_4

def sourceBody783_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_31 sourceBody783_0

def sourceBody783_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_14 sourceBody783_32

def sourceBody783_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_13 sourceBody783_33

def sourceBody783_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_9 sourceBody783_34

def sourceBody783_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_8 sourceBody783_35

def sourceBody783_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody783_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 6)) (some 779) ([24]) (some (24, sourceBody783_17, 783, 7))

def sourceBody783_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_38 sourceBody783_4

def sourceBody783_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_39 sourceBody783_0

def sourceBody783_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_37 sourceBody783_40

def sourceBody783_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody783_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 10) sourceBody783_9 sourceBody783_44

def sourceBody783_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_45 sourceBody783_4

def sourceBody783_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody783_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody783_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody783_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody783_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody783_0, 783, 8)) (some 780) ([46, 10]) (some (46, sourceBody783_50, 783, 9))

def sourceBody783_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_51 sourceBody783_4

def sourceBody783_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_52 sourceBody783_0

def sourceBody783_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_49 sourceBody783_53

def sourceBody783_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_48 sourceBody783_54

def sourceBody783_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_55

def sourceBody783_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_56

def sourceBody783_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody783_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_58 sourceBody783_0

def sourceBody783_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_11 sourceBody783_59

def sourceBody783_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_57 sourceBody783_60

def sourceBody783_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody783_61 sourceBody783_0

def sourceBody783_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_62 sourceBody783_4

def sourceBody783_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_63 sourceBody783_0

def sourceBody783_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_47 sourceBody783_64

def sourceBody783_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_46 sourceBody783_65

def sourceBody783_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_43 sourceBody783_66

def sourceBody783_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_42 sourceBody783_67

def sourceBody783_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 10)) (some 69) ([]) (some (46, sourceBody783_50, 783, 11))

def sourceBody783_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_69 sourceBody783_4

def sourceBody783_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_70 sourceBody783_0

def sourceBody783_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody783_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody783_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 12)) (some 68) ([10]) (some (10, sourceBody783_73, 783, 13))

def sourceBody783_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_74 sourceBody783_4

def sourceBody783_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_75 sourceBody783_0

def sourceBody783_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_72 sourceBody783_76

def sourceBody783_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 46)

def sourceBody783_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody783_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody783_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody783_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody783_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody783_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody783_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 672#64])

def sourceBody783_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 768#64])

def sourceBody783_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 864#64])

def sourceBody783_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 960#64])

def sourceBody783_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.const 1056#64])

def sourceBody783_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody783_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody783_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody783_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody783_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 14)) (some 739) ([38, 26, 48]) (some (38, sourceBody783_93, 783, 15))

def sourceBody783_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_94 sourceBody783_4

def sourceBody783_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_95 sourceBody783_0

def sourceBody783_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_92 sourceBody783_96

def sourceBody783_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_91 sourceBody783_97

def sourceBody783_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_90 sourceBody783_98

def sourceBody783_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_99

def sourceBody783_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_100

def sourceBody783_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def sourceBody783_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody783_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody783_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 16)) (some 739) ([38, 26, 48]) (some (38, sourceBody783_93, 783, 17))

def sourceBody783_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_105 sourceBody783_4

def sourceBody783_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_106 sourceBody783_0

def sourceBody783_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_104 sourceBody783_107

def sourceBody783_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_103 sourceBody783_108

def sourceBody783_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_102 sourceBody783_109

def sourceBody783_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_110

def sourceBody783_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_111

def sourceBody783_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_101 sourceBody783_112

def sourceBody783_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody783_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody783_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 18)) (some 739) ([38, 26, 48]) (some (38, sourceBody783_93, 783, 19))

def sourceBody783_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_116 sourceBody783_4

def sourceBody783_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_117 sourceBody783_0

def sourceBody783_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_92 sourceBody783_118

def sourceBody783_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_115 sourceBody783_119

def sourceBody783_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_114 sourceBody783_120

def sourceBody783_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_121

def sourceBody783_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_122

def sourceBody783_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_113 sourceBody783_123

def sourceBody783_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody783_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody783_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 20)) (some 739) ([38, 26, 48]) (some (38, sourceBody783_93, 783, 21))

def sourceBody783_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_127 sourceBody783_4

def sourceBody783_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_128 sourceBody783_0

def sourceBody783_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_104 sourceBody783_129

def sourceBody783_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_126 sourceBody783_130

def sourceBody783_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_125 sourceBody783_131

def sourceBody783_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_132

def sourceBody783_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_133

def sourceBody783_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_124 sourceBody783_134

def sourceBody783_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody783_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 22)) (some 733) ([38, 26]) (some (38, sourceBody783_93, 783, 23))

def sourceBody783_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_137 sourceBody783_4

def sourceBody783_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_138 sourceBody783_0

def sourceBody783_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_136 sourceBody783_139

def sourceBody783_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_114 sourceBody783_140

def sourceBody783_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody783_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 48) sourceBody783_144 sourceBody783_145

def sourceBody783_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_146 sourceBody783_4

def sourceBody783_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody783_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody783_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 32)

def sourceBody783_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody783_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 24)) (some 733) ([26, 48]) (some (26, sourceBody783_151, 783, 25))

def sourceBody783_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_152 sourceBody783_4

def sourceBody783_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_153 sourceBody783_0

def sourceBody783_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_150 sourceBody783_154

def sourceBody783_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_149 sourceBody783_155

def sourceBody783_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def sourceBody783_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody783_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 26)) (some 70) ([48]) (some (48, sourceBody783_158, 783, 27))

def sourceBody783_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_159 sourceBody783_4

def sourceBody783_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_160 sourceBody783_0

def sourceBody783_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_157 sourceBody783_161

def sourceBody783_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_162

def sourceBody783_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_163

def sourceBody783_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody783_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody783_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 12) sourceBody783_143 sourceBody783_167

def sourceBody783_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_168 sourceBody783_4

def sourceBody783_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 48)

def sourceBody783_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 2)

def sourceBody783_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody783_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody783_0, 783, 28)) (some 782) ([48, 12]) (some (48, sourceBody783_158, 783, 29))

def sourceBody783_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_173 sourceBody783_4

def sourceBody783_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_174 sourceBody783_0

def sourceBody783_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_172 sourceBody783_175

def sourceBody783_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_171 sourceBody783_176

def sourceBody783_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_177

def sourceBody783_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_178

def sourceBody783_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody783_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_180 sourceBody783_0

def sourceBody783_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_145 sourceBody783_181

def sourceBody783_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_179 sourceBody783_182

def sourceBody783_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody783_183 sourceBody783_0

def sourceBody783_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_184 sourceBody783_4

def sourceBody783_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_185 sourceBody783_0

def sourceBody783_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_170 sourceBody783_186

def sourceBody783_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_169 sourceBody783_187

def sourceBody783_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_166 sourceBody783_188

def sourceBody783_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_165 sourceBody783_189

def sourceBody783_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_164 sourceBody783_190

def sourceBody783_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody783_0, 783, 30)) (some 778) ([48]) (some (48, sourceBody783_158, 783, 31))

def sourceBody783_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_192 sourceBody783_4

def sourceBody783_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_193 sourceBody783_0

def sourceBody783_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_171 sourceBody783_194

def sourceBody783_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_195

def sourceBody783_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_196

def sourceBody783_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_191 sourceBody783_197

def sourceBody783_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_198 sourceBody783_182

def sourceBody783_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_156 sourceBody783_199

def sourceBody783_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_200

def sourceBody783_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_201

def sourceBody783_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody783_202 sourceBody783_0

def sourceBody783_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_203 sourceBody783_4

def sourceBody783_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_204 sourceBody783_0

def sourceBody783_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_148 sourceBody783_205

def sourceBody783_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_147 sourceBody783_206

def sourceBody783_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_143 sourceBody783_207

def sourceBody783_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_142 sourceBody783_208

def sourceBody783_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody783_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 10)

def sourceBody783_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 32)

def sourceBody783_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 32)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 33))

def sourceBody783_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_213 sourceBody783_4

def sourceBody783_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_214 sourceBody783_0

def sourceBody783_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_212 sourceBody783_215

def sourceBody783_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_211 sourceBody783_216

def sourceBody783_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_210 sourceBody783_217

def sourceBody783_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_218

def sourceBody783_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_219

def sourceBody783_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_209 sourceBody783_220

def sourceBody783_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 40)

def sourceBody783_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 22)

def sourceBody783_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 44)

def sourceBody783_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 34)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 35))

def sourceBody783_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_225 sourceBody783_4

def sourceBody783_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_226 sourceBody783_0

def sourceBody783_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_224 sourceBody783_227

def sourceBody783_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_223 sourceBody783_228

def sourceBody783_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_222 sourceBody783_229

def sourceBody783_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_230

def sourceBody783_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_231

def sourceBody783_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_221 sourceBody783_232

def sourceBody783_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody783_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 40)

def sourceBody783_236 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 36)) (some 740) ([26, 48]) (some (26, sourceBody783_151, 783, 37))

def sourceBody783_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_236 sourceBody783_4

def sourceBody783_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_237 sourceBody783_0

def sourceBody783_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_235 sourceBody783_238

def sourceBody783_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_234 sourceBody783_239

def sourceBody783_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_240

def sourceBody783_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_241

def sourceBody783_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_233 sourceBody783_242

def sourceBody783_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 50)

def sourceBody783_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 28)

def sourceBody783_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 38)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 39))

def sourceBody783_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_246 sourceBody783_4

def sourceBody783_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_247 sourceBody783_0

def sourceBody783_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_224 sourceBody783_248

def sourceBody783_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_245 sourceBody783_249

def sourceBody783_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_244 sourceBody783_250

def sourceBody783_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_251

def sourceBody783_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_252

def sourceBody783_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_243 sourceBody783_253

def sourceBody783_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody783_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody783_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 40)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 41))

def sourceBody783_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_257 sourceBody783_4

def sourceBody783_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_258 sourceBody783_0

def sourceBody783_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_256 sourceBody783_259

def sourceBody783_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_235 sourceBody783_260

def sourceBody783_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_255 sourceBody783_261

def sourceBody783_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_262

def sourceBody783_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_263

def sourceBody783_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_254 sourceBody783_264

def sourceBody783_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody783_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody783_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 42)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 43))

def sourceBody783_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_268 sourceBody783_4

def sourceBody783_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_269 sourceBody783_0

def sourceBody783_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_267 sourceBody783_270

def sourceBody783_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_92 sourceBody783_271

def sourceBody783_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_266 sourceBody783_272

def sourceBody783_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_273

def sourceBody783_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_274

def sourceBody783_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_265 sourceBody783_275

def sourceBody783_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody783_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 18)

def sourceBody783_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 44)) (some 740) ([26, 48]) (some (26, sourceBody783_151, 783, 45))

def sourceBody783_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_279 sourceBody783_4

def sourceBody783_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_280 sourceBody783_0

def sourceBody783_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_278 sourceBody783_281

def sourceBody783_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_277 sourceBody783_282

def sourceBody783_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_283

def sourceBody783_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_284

def sourceBody783_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_276 sourceBody783_285

def sourceBody783_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def sourceBody783_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody783_289 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 46)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 47))

def sourceBody783_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_289 sourceBody783_4

def sourceBody783_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_290 sourceBody783_0

def sourceBody783_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_288 sourceBody783_291

def sourceBody783_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_287 sourceBody783_292

def sourceBody783_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_277 sourceBody783_293

def sourceBody783_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_294

def sourceBody783_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_295

def sourceBody783_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_286 sourceBody783_296

def sourceBody783_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody783_299 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 48)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 49))

def sourceBody783_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_299 sourceBody783_4

def sourceBody783_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_300 sourceBody783_0

def sourceBody783_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_298 sourceBody783_301

def sourceBody783_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_287 sourceBody783_302

def sourceBody783_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_277 sourceBody783_303

def sourceBody783_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_304

def sourceBody783_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_305

def sourceBody783_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_297 sourceBody783_306

def sourceBody783_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 42)

def sourceBody783_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def sourceBody783_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 50)

def sourceBody783_311 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 50)) (some 734) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 51))

def sourceBody783_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_311 sourceBody783_4

def sourceBody783_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_312 sourceBody783_0

def sourceBody783_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_310 sourceBody783_313

def sourceBody783_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_309 sourceBody783_314

def sourceBody783_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_308 sourceBody783_315

def sourceBody783_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_316

def sourceBody783_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_317

def sourceBody783_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_307 sourceBody783_318

def sourceBody783_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 42)

def sourceBody783_321 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 52)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 53))

def sourceBody783_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_321 sourceBody783_4

def sourceBody783_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_322 sourceBody783_0

def sourceBody783_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_320 sourceBody783_323

def sourceBody783_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_287 sourceBody783_324

def sourceBody783_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_277 sourceBody783_325

def sourceBody783_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_326

def sourceBody783_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_327

def sourceBody783_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_319 sourceBody783_328

def sourceBody783_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody783_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 54)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 55))

def sourceBody783_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_331 sourceBody783_4

def sourceBody783_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_332 sourceBody783_0

def sourceBody783_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_330 sourceBody783_333

def sourceBody783_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_235 sourceBody783_334

def sourceBody783_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_308 sourceBody783_335

def sourceBody783_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_336

def sourceBody783_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_337

def sourceBody783_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_329 sourceBody783_338

def sourceBody783_340 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 56)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 57))

def sourceBody783_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_340 sourceBody783_4

def sourceBody783_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_341 sourceBody783_0

def sourceBody783_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_330 sourceBody783_342

def sourceBody783_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_309 sourceBody783_343

def sourceBody783_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_149 sourceBody783_344

def sourceBody783_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_345

def sourceBody783_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_346

def sourceBody783_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_339 sourceBody783_347

def sourceBody783_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody783_350 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 58)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 59))

def sourceBody783_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_350 sourceBody783_4

def sourceBody783_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_351 sourceBody783_0

def sourceBody783_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_349 sourceBody783_352

def sourceBody783_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_278 sourceBody783_353

def sourceBody783_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_149 sourceBody783_354

def sourceBody783_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_355

def sourceBody783_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_356

def sourceBody783_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_348 sourceBody783_357

def sourceBody783_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody783_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 8)

def sourceBody783_361 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 60)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 61))

def sourceBody783_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_361 sourceBody783_4

def sourceBody783_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_362 sourceBody783_0

def sourceBody783_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_212 sourceBody783_363

def sourceBody783_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_360 sourceBody783_364

def sourceBody783_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_359 sourceBody783_365

def sourceBody783_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_366

def sourceBody783_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_367

def sourceBody783_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_358 sourceBody783_368

def sourceBody783_370 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 62)) (some 735) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 63))

def sourceBody783_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_370 sourceBody783_4

def sourceBody783_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_371 sourceBody783_0

def sourceBody783_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_212 sourceBody783_372

def sourceBody783_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_211 sourceBody783_373

def sourceBody783_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_149 sourceBody783_374

def sourceBody783_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_375

def sourceBody783_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_376

def sourceBody783_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_369 sourceBody783_377

def sourceBody783_379 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 64)) (some 739) ([26, 48, 12]) (some (26, sourceBody783_151, 783, 65))

def sourceBody783_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_379 sourceBody783_4

def sourceBody783_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_380 sourceBody783_0

def sourceBody783_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_288 sourceBody783_381

def sourceBody783_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_360 sourceBody783_382

def sourceBody783_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_266 sourceBody783_383

def sourceBody783_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_384

def sourceBody783_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_385

def sourceBody783_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_378 sourceBody783_386

def sourceBody783_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody783_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 42)

def sourceBody783_390 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 66)) (some 729) ([26, 48]) (some (26, sourceBody783_151, 783, 67))

def sourceBody783_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_390 sourceBody783_4

def sourceBody783_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_391 sourceBody783_0

def sourceBody783_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_389 sourceBody783_392

def sourceBody783_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_388 sourceBody783_393

def sourceBody783_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_394

def sourceBody783_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_395

def sourceBody783_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_387 sourceBody783_396

def sourceBody783_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody783_399 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 68)) (some 729) ([26, 48]) (some (26, sourceBody783_151, 783, 69))

def sourceBody783_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_399 sourceBody783_4

def sourceBody783_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_400 sourceBody783_0

def sourceBody783_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_211 sourceBody783_401

def sourceBody783_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_398 sourceBody783_402

def sourceBody783_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_403

def sourceBody783_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_404

def sourceBody783_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_397 sourceBody783_405

def sourceBody783_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody783_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 30)

def sourceBody783_409 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody783_0, 783, 70)) (some 729) ([26, 48]) (some (26, sourceBody783_151, 783, 71))

def sourceBody783_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_409 sourceBody783_4

def sourceBody783_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_410 sourceBody783_0

def sourceBody783_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_408 sourceBody783_411

def sourceBody783_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_407 sourceBody783_412

def sourceBody783_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_413

def sourceBody783_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_414

def sourceBody783_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_406 sourceBody783_415

def sourceBody783_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody783_418 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody783_0, 783, 72)) (some 70) ([26]) (some (26, sourceBody783_151, 783, 73))

def sourceBody783_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_418 sourceBody783_4

def sourceBody783_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_419 sourceBody783_0

def sourceBody783_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_417 sourceBody783_420

def sourceBody783_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_421

def sourceBody783_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_422

def sourceBody783_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_416 sourceBody783_423

def sourceBody783_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody783_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody783_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_426 sourceBody783_0

def sourceBody783_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_425 sourceBody783_427

def sourceBody783_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_424 sourceBody783_428

def sourceBody783_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_141 sourceBody783_429

def sourceBody783_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_430

def sourceBody783_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_431

def sourceBody783_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_135 sourceBody783_432

def sourceBody783_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_89 sourceBody783_433

def sourceBody783_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_434

def sourceBody783_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_88 sourceBody783_435

def sourceBody783_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_436

def sourceBody783_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_87 sourceBody783_437

def sourceBody783_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_438

def sourceBody783_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_86 sourceBody783_439

def sourceBody783_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_440

def sourceBody783_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_85 sourceBody783_441

def sourceBody783_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_442

def sourceBody783_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_84 sourceBody783_443

def sourceBody783_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_444

def sourceBody783_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_83 sourceBody783_445

def sourceBody783_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_446

def sourceBody783_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_82 sourceBody783_447

def sourceBody783_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_448

def sourceBody783_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_81 sourceBody783_449

def sourceBody783_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_450

def sourceBody783_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_80 sourceBody783_451

def sourceBody783_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_452

def sourceBody783_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_79 sourceBody783_453

def sourceBody783_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_454

def sourceBody783_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_78 sourceBody783_455

def sourceBody783_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_456

def sourceBody783_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_77 sourceBody783_457

def sourceBody783_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_458

def sourceBody783_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_459

def sourceBody783_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_71 sourceBody783_460

def sourceBody783_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_461

def sourceBody783_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_462

def sourceBody783_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_68 sourceBody783_463

def sourceBody783_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_41 sourceBody783_464

def sourceBody783_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_465

def sourceBody783_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_466

def sourceBody783_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_36 sourceBody783_467

def sourceBody783_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_7 sourceBody783_468

def sourceBody783_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_469

def sourceBody783_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody783_0 sourceBody783_470

def source783 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (783, 4, sourceBody783_471)
end InitECandidate.Proofs.WordStages
