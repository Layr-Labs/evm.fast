import InitECandidate.Proofs.WordStages.Source679
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody695_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody695_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 2)

def sourceBody695_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody695_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody695_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 12, 40, 26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 2)) (some 146) ([56, 8]) (some (56, sourceBody695_3, 695, 3))

def sourceBody695_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody695_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_4 sourceBody695_5

def sourceBody695_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_6 sourceBody695_0

def sourceBody695_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_2 sourceBody695_7

def sourceBody695_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_1 sourceBody695_8

def sourceBody695_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody695_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody695_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody695_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 8, 36, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 4)) (some 146) ([52, 16]) (some (52, sourceBody695_12, 695, 5))

def sourceBody695_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_13 sourceBody695_5

def sourceBody695_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_14 sourceBody695_0

def sourceBody695_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_11 sourceBody695_15

def sourceBody695_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_10 sourceBody695_16

def sourceBody695_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody695_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody695_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody695_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody695_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody695_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 6)) (some 106) ([16, 44, 30, 60, 6, 34, 20, 50]) (some (16, sourceBody695_26, 695, 7))

def sourceBody695_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_27 sourceBody695_5

def sourceBody695_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_28 sourceBody695_0

def sourceBody695_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_25 sourceBody695_29

def sourceBody695_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_24 sourceBody695_30

def sourceBody695_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_23 sourceBody695_31

def sourceBody695_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_22 sourceBody695_32

def sourceBody695_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_21 sourceBody695_33

def sourceBody695_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_20 sourceBody695_34

def sourceBody695_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_19 sourceBody695_35

def sourceBody695_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_18 sourceBody695_36

def sourceBody695_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 52)

def sourceBody695_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 30) sourceBody695_40 sourceBody695_41

def sourceBody695_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_42 sourceBody695_5

def sourceBody695_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 44)

def sourceBody695_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody695_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_46 sourceBody695_0

def sourceBody695_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_45 sourceBody695_47

def sourceBody695_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.imm 0#64) sourceBody695_48 sourceBody695_0

def sourceBody695_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_49 sourceBody695_5

def sourceBody695_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_50 sourceBody695_0

def sourceBody695_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_44 sourceBody695_51

def sourceBody695_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_43 sourceBody695_52

def sourceBody695_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_39 sourceBody695_53

def sourceBody695_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_38 sourceBody695_54

def sourceBody695_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 56)

def sourceBody695_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody695_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 36)

def sourceBody695_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody695_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody695_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody695_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody695_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody695_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody695_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 8)) (some 106) ([44, 30, 60, 6, 34, 20, 50, 14]) (some (44, sourceBody695_64, 695, 9))

def sourceBody695_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_65 sourceBody695_5

def sourceBody695_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_66 sourceBody695_0

def sourceBody695_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_63 sourceBody695_67

def sourceBody695_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_62 sourceBody695_68

def sourceBody695_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_61 sourceBody695_69

def sourceBody695_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_60 sourceBody695_70

def sourceBody695_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_59 sourceBody695_71

def sourceBody695_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_58 sourceBody695_72

def sourceBody695_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_57 sourceBody695_73

def sourceBody695_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_56 sourceBody695_74

def sourceBody695_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody695_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 60) sourceBody695_78 sourceBody695_39

def sourceBody695_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_79 sourceBody695_5

def sourceBody695_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody695_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44]

def sourceBody695_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_82 sourceBody695_0

def sourceBody695_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_40 sourceBody695_83

def sourceBody695_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody695_84 sourceBody695_0

def sourceBody695_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_85 sourceBody695_5

def sourceBody695_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_86 sourceBody695_0

def sourceBody695_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_81 sourceBody695_87

def sourceBody695_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_80 sourceBody695_88

def sourceBody695_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_77 sourceBody695_89

def sourceBody695_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_76 sourceBody695_90

def sourceBody695_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody695_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 10)) (some 102) ([30, 60, 6, 34]) (some (30, sourceBody695_96, 695, 11))

def sourceBody695_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_97 sourceBody695_5

def sourceBody695_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_98 sourceBody695_0

def sourceBody695_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_95 sourceBody695_99

def sourceBody695_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_94 sourceBody695_100

def sourceBody695_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_93 sourceBody695_101

def sourceBody695_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_92 sourceBody695_102

def sourceBody695_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 56)

def sourceBody695_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody695_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody695_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody695_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody695_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 12)) (some 102) ([60, 6, 34, 20]) (some (60, sourceBody695_108, 695, 13))

def sourceBody695_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_109 sourceBody695_5

def sourceBody695_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_110 sourceBody695_0

def sourceBody695_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_107 sourceBody695_111

def sourceBody695_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_106 sourceBody695_112

def sourceBody695_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_105 sourceBody695_113

def sourceBody695_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_104 sourceBody695_114

def sourceBody695_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.var 30])

def sourceBody695_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 34) sourceBody695_118 sourceBody695_119

def sourceBody695_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_120 sourceBody695_5

def sourceBody695_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody695_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody695_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody695_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody695_0, 695, 14)) (some 680) ([6, 34]) (some (6, sourceBody695_124, 695, 15))

def sourceBody695_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_125 sourceBody695_5

def sourceBody695_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_126 sourceBody695_0

def sourceBody695_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_123 sourceBody695_127

def sourceBody695_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_118 sourceBody695_128

def sourceBody695_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_129

def sourceBody695_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_130

def sourceBody695_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [60]

def sourceBody695_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_132 sourceBody695_0

def sourceBody695_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_77 sourceBody695_133

def sourceBody695_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_131 sourceBody695_134

def sourceBody695_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody695_135 sourceBody695_0

def sourceBody695_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_136 sourceBody695_5

def sourceBody695_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_137 sourceBody695_0

def sourceBody695_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_122 sourceBody695_138

def sourceBody695_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_121 sourceBody695_139

def sourceBody695_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_117 sourceBody695_140

def sourceBody695_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_116 sourceBody695_141

def sourceBody695_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 12, 40, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 16)) (some 662) ([60, 6, 34, 20]) (some (60, sourceBody695_108, 695, 17))

def sourceBody695_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_147 sourceBody695_5

def sourceBody695_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_148 sourceBody695_0

def sourceBody695_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_146 sourceBody695_149

def sourceBody695_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_145 sourceBody695_150

def sourceBody695_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_144 sourceBody695_151

def sourceBody695_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_143 sourceBody695_152

def sourceBody695_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_142 sourceBody695_153

def sourceBody695_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 8, 36, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 18)) (some 662) ([60, 6, 34, 20]) (some (60, sourceBody695_108, 695, 19))

def sourceBody695_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_155 sourceBody695_5

def sourceBody695_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_156 sourceBody695_0

def sourceBody695_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_107 sourceBody695_157

def sourceBody695_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_106 sourceBody695_158

def sourceBody695_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_105 sourceBody695_159

def sourceBody695_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_104 sourceBody695_160

def sourceBody695_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_154 sourceBody695_161

def sourceBody695_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def sourceBody695_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody695_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody695_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody695_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def sourceBody695_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody695_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody695_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody695_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody695_172 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 6, 34, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 20)) (some 661) ([50, 14, 42, 28, 58, 10, 38, 24]) (some (50, sourceBody695_171, 695, 21))

def sourceBody695_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_172 sourceBody695_5

def sourceBody695_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_173 sourceBody695_0

def sourceBody695_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_170 sourceBody695_174

def sourceBody695_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_169 sourceBody695_175

def sourceBody695_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_168 sourceBody695_176

def sourceBody695_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_167 sourceBody695_177

def sourceBody695_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_166 sourceBody695_178

def sourceBody695_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_165 sourceBody695_179

def sourceBody695_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_164 sourceBody695_180

def sourceBody695_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_163 sourceBody695_181

def sourceBody695_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody695_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 14, 42, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 22)) (some 661) ([58, 10, 38, 24, 54, 18, 46, 32]) (some (58, sourceBody695_191, 695, 23))

def sourceBody695_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_192 sourceBody695_5

def sourceBody695_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_193 sourceBody695_0

def sourceBody695_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_190 sourceBody695_194

def sourceBody695_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_189 sourceBody695_195

def sourceBody695_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_188 sourceBody695_196

def sourceBody695_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_187 sourceBody695_197

def sourceBody695_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_186 sourceBody695_198

def sourceBody695_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_185 sourceBody695_199

def sourceBody695_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_184 sourceBody695_200

def sourceBody695_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_183 sourceBody695_201

def sourceBody695_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def sourceBody695_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody695_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody695_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody695_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 14, 42, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 24)) (some 661) ([58, 10, 38, 24, 54, 18, 46, 32]) (some (58, sourceBody695_191, 695, 25))

def sourceBody695_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_207 sourceBody695_5

def sourceBody695_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_208 sourceBody695_0

def sourceBody695_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_190 sourceBody695_209

def sourceBody695_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_189 sourceBody695_210

def sourceBody695_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_188 sourceBody695_211

def sourceBody695_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_187 sourceBody695_212

def sourceBody695_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_206 sourceBody695_213

def sourceBody695_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_205 sourceBody695_214

def sourceBody695_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_204 sourceBody695_215

def sourceBody695_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_203 sourceBody695_216

def sourceBody695_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 8797723225643362519#64)

def sourceBody695_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2263834496217719225#64)

def sourceBody695_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 3696305541684646532#64)

def sourceBody695_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3035258219084094862#64)

def sourceBody695_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 14, 42, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 26)) (some 658) ([58, 10, 38, 24, 54, 18, 46, 32]) (some (58, sourceBody695_191, 695, 27))

def sourceBody695_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_222 sourceBody695_5

def sourceBody695_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_223 sourceBody695_0

def sourceBody695_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_221 sourceBody695_224

def sourceBody695_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_220 sourceBody695_225

def sourceBody695_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_219 sourceBody695_226

def sourceBody695_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_218 sourceBody695_227

def sourceBody695_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_206 sourceBody695_228

def sourceBody695_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_205 sourceBody695_229

def sourceBody695_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_204 sourceBody695_230

def sourceBody695_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_203 sourceBody695_231

def sourceBody695_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_217 sourceBody695_232

def sourceBody695_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 60)

def sourceBody695_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody695_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody695_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 20)

def sourceBody695_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 50)

def sourceBody695_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def sourceBody695_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody695_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 28)

def sourceBody695_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody695_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody695_0, 695, 28)) (some 105) ([10, 38, 24, 54, 18, 46, 32, 62]) (some (10, sourceBody695_242, 695, 29))

def sourceBody695_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_243 sourceBody695_5

def sourceBody695_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_244 sourceBody695_0

def sourceBody695_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_241 sourceBody695_245

def sourceBody695_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_240 sourceBody695_246

def sourceBody695_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_239 sourceBody695_247

def sourceBody695_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_238 sourceBody695_248

def sourceBody695_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_237 sourceBody695_249

def sourceBody695_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_236 sourceBody695_250

def sourceBody695_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_235 sourceBody695_251

def sourceBody695_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_234 sourceBody695_252

def sourceBody695_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 58)

def sourceBody695_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_258 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 24) sourceBody695_256 sourceBody695_257

def sourceBody695_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_258 sourceBody695_5

def sourceBody695_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody695_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody695_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody695_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_262 sourceBody695_0

def sourceBody695_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_261 sourceBody695_263

def sourceBody695_265 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody695_264 sourceBody695_0

def sourceBody695_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_265 sourceBody695_5

def sourceBody695_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_266 sourceBody695_0

def sourceBody695_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_260 sourceBody695_267

def sourceBody695_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_259 sourceBody695_268

def sourceBody695_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_255 sourceBody695_269

def sourceBody695_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_254 sourceBody695_270

def sourceBody695_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody695_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def sourceBody695_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody695_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody695_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody695_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 38)

def sourceBody695_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 46

def sourceBody695_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_278 sourceBody695_0

def sourceBody695_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_277 sourceBody695_279

def sourceBody695_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 24)

def sourceBody695_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])
  46

def sourceBody695_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_282 sourceBody695_0

def sourceBody695_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_281 sourceBody695_283

def sourceBody695_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 54)

def sourceBody695_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64])
  46

def sourceBody695_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_286 sourceBody695_0

def sourceBody695_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_285 sourceBody695_287

def sourceBody695_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def sourceBody695_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64])
  46

def sourceBody695_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_290 sourceBody695_0

def sourceBody695_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_289 sourceBody695_291

def sourceBody695_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_292 sourceBody695_0

def sourceBody695_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_288 sourceBody695_293

def sourceBody695_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_284 sourceBody695_294

def sourceBody695_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_280 sourceBody695_295

def sourceBody695_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_276 sourceBody695_296

def sourceBody695_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_297

def sourceBody695_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_275 sourceBody695_298

def sourceBody695_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_299

def sourceBody695_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_274 sourceBody695_300

def sourceBody695_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_301

def sourceBody695_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_273 sourceBody695_302

def sourceBody695_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_303

def sourceBody695_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_272 sourceBody695_304

def sourceBody695_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_305

def sourceBody695_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_271 sourceBody695_306

def sourceBody695_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody695_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 56)

def sourceBody695_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody695_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 36)

def sourceBody695_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody695_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_312 sourceBody695_296

def sourceBody695_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_313

def sourceBody695_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_311 sourceBody695_314

def sourceBody695_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_315

def sourceBody695_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_310 sourceBody695_316

def sourceBody695_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_317

def sourceBody695_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_309 sourceBody695_318

def sourceBody695_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_319

def sourceBody695_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_308 sourceBody695_320

def sourceBody695_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_321

def sourceBody695_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_307 sourceBody695_322

def sourceBody695_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody695_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def sourceBody695_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def sourceBody695_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def sourceBody695_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def sourceBody695_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_328 sourceBody695_296

def sourceBody695_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_329

def sourceBody695_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_327 sourceBody695_330

def sourceBody695_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_331

def sourceBody695_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_326 sourceBody695_332

def sourceBody695_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_333

def sourceBody695_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_325 sourceBody695_334

def sourceBody695_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_335

def sourceBody695_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_324 sourceBody695_336

def sourceBody695_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_337

def sourceBody695_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_323 sourceBody695_338

def sourceBody695_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody695_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_340 sourceBody695_263

def sourceBody695_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_339 sourceBody695_341

def sourceBody695_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_253 sourceBody695_342

def sourceBody695_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_343

def sourceBody695_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_344

def sourceBody695_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_233 sourceBody695_345

def sourceBody695_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_202 sourceBody695_346

def sourceBody695_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_347

def sourceBody695_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_348

def sourceBody695_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_349

def sourceBody695_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_350

def sourceBody695_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_351

def sourceBody695_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_352

def sourceBody695_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_353

def sourceBody695_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_354

def sourceBody695_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_182 sourceBody695_355

def sourceBody695_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_356

def sourceBody695_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_357

def sourceBody695_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_358

def sourceBody695_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_359

def sourceBody695_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_360

def sourceBody695_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_361

def sourceBody695_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_362

def sourceBody695_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_363

def sourceBody695_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_162 sourceBody695_364

def sourceBody695_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_115 sourceBody695_365

def sourceBody695_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_366

def sourceBody695_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_367

def sourceBody695_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_103 sourceBody695_368

def sourceBody695_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_369

def sourceBody695_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_370

def sourceBody695_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_91 sourceBody695_371

def sourceBody695_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_75 sourceBody695_372

def sourceBody695_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_373

def sourceBody695_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_374

def sourceBody695_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_55 sourceBody695_375

def sourceBody695_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_37 sourceBody695_376

def sourceBody695_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_377

def sourceBody695_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_378

def sourceBody695_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_17 sourceBody695_379

def sourceBody695_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_380

def sourceBody695_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_381

def sourceBody695_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_382

def sourceBody695_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_383

def sourceBody695_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_384

def sourceBody695_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_385

def sourceBody695_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_386

def sourceBody695_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_387

def sourceBody695_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_9 sourceBody695_388

def sourceBody695_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_389

def sourceBody695_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_390

def sourceBody695_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_391

def sourceBody695_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_392

def sourceBody695_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_393

def sourceBody695_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_394

def sourceBody695_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_395

def sourceBody695_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody695_0 sourceBody695_396

def source695 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (695, 3, sourceBody695_397)
end InitECandidate.Proofs.WordStages
