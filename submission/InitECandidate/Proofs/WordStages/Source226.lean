import InitECandidate.Proofs.WordStages.Source210
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody226_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody226_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 2)

def sourceBody226_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody226_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody226_0, 226, 2)) (some 220) ([52]) (some (52, sourceBody226_2, 226, 3))

def sourceBody226_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody226_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_3 sourceBody226_4

def sourceBody226_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_5 sourceBody226_0

def sourceBody226_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_1 sourceBody226_6

def sourceBody226_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_7

def sourceBody226_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_8

def sourceBody226_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 4)

def sourceBody226_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody226_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 8)

def sourceBody226_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody226_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody226_0, 226, 4)) (some 138) ([52, 28, 42, 34]) (some (52, sourceBody226_2, 226, 5))

def sourceBody226_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_14 sourceBody226_4

def sourceBody226_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_15 sourceBody226_0

def sourceBody226_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_13 sourceBody226_16

def sourceBody226_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_12 sourceBody226_17

def sourceBody226_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_11 sourceBody226_18

def sourceBody226_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_10 sourceBody226_19

def sourceBody226_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 40)

def sourceBody226_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody226_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 52)

def sourceBody226_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody226_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 42 (Flapjack.WordRegImm.reg 34) sourceBody226_24 sourceBody226_22

def sourceBody226_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_25 sourceBody226_4

def sourceBody226_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 42)

def sourceBody226_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody226_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody226_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_29 sourceBody226_0

def sourceBody226_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_30 sourceBody226_0

def sourceBody226_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_28 sourceBody226_31

def sourceBody226_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_32

def sourceBody226_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 2)

def sourceBody226_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody226_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody226_0, 226, 6)) (some 223) ([42]) (some (42, sourceBody226_35, 226, 7))

def sourceBody226_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_36 sourceBody226_4

def sourceBody226_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_37 sourceBody226_0

def sourceBody226_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_34 sourceBody226_38

def sourceBody226_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_39

def sourceBody226_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_40

def sourceBody226_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_33 sourceBody226_41

def sourceBody226_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody226_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody226_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 8)

def sourceBody226_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody226_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody226_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody226_0, 226, 8)) (some 104) ([42, 34, 48, 32, 46]) (some (42, sourceBody226_35, 226, 9))

def sourceBody226_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_48 sourceBody226_4

def sourceBody226_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_49 sourceBody226_0

def sourceBody226_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_47 sourceBody226_50

def sourceBody226_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_46 sourceBody226_51

def sourceBody226_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_45 sourceBody226_52

def sourceBody226_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_44 sourceBody226_53

def sourceBody226_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_43 sourceBody226_54

def sourceBody226_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody226_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody226_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody226_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody226_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 48) sourceBody226_58 sourceBody226_59

def sourceBody226_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_60 sourceBody226_4

def sourceBody226_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody226_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody226_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def sourceBody226_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody226_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 16)

def sourceBody226_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody226_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 20)

def sourceBody226_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody226_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 24)

def sourceBody226_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def sourceBody226_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody226_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody226_0, 226, 10)) (some 224) ([34, 48, 32, 46, 38, 50, 30, 44, 36]) (some (34, sourceBody226_72, 226, 11))

def sourceBody226_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_73 sourceBody226_4

def sourceBody226_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_74 sourceBody226_0

def sourceBody226_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_71 sourceBody226_75

def sourceBody226_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_70 sourceBody226_76

def sourceBody226_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_69 sourceBody226_77

def sourceBody226_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_68 sourceBody226_78

def sourceBody226_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_67 sourceBody226_79

def sourceBody226_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_66 sourceBody226_80

def sourceBody226_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_65 sourceBody226_81

def sourceBody226_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_64 sourceBody226_82

def sourceBody226_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_63 sourceBody226_83

def sourceBody226_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_84

def sourceBody226_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_85

def sourceBody226_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody226_86 sourceBody226_0

def sourceBody226_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_87 sourceBody226_4

def sourceBody226_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_88 sourceBody226_0

def sourceBody226_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_62 sourceBody226_89

def sourceBody226_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_61 sourceBody226_90

def sourceBody226_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_57 sourceBody226_91

def sourceBody226_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_56 sourceBody226_92

def sourceBody226_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_55 sourceBody226_93

def sourceBody226_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_94

def sourceBody226_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_95

def sourceBody226_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_42 sourceBody226_96

def sourceBody226_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody226_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_97 sourceBody226_98

def sourceBody226_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody226_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody226_99 sourceBody226_100

def sourceBody226_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_101 sourceBody226_4

def sourceBody226_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_102 sourceBody226_0

def sourceBody226_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_27 sourceBody226_103

def sourceBody226_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_26 sourceBody226_104

def sourceBody226_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_23 sourceBody226_105

def sourceBody226_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_22 sourceBody226_106

def sourceBody226_108 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody226_107 (Flapjack.Spt.ls PUnit.unit)

def sourceBody226_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_108 sourceBody226_4

def sourceBody226_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_4 sourceBody226_109

def sourceBody226_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody226_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody226_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_112 sourceBody226_0

def sourceBody226_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_111 sourceBody226_113

def sourceBody226_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_110 sourceBody226_114

def sourceBody226_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_21 sourceBody226_115

def sourceBody226_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_116

def sourceBody226_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_20 sourceBody226_117

def sourceBody226_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_118

def sourceBody226_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_0 sourceBody226_119

def sourceBody226_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody226_9 sourceBody226_120

def source226 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (226, 14, sourceBody226_121)
end InitECandidate.Proofs.WordStages
