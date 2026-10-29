import InitECandidate.Proofs.WordStages.Source362
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody378_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody378_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64]))

def sourceBody378_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody378_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody378_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody378_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64]))

def sourceBody378_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody378_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody378_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody378_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 18)

def sourceBody378_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 66)

def sourceBody378_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 42)

def sourceBody378_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 90)

def sourceBody378_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def sourceBody378_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 2)) (some 102) ([72, 48, 96, 10]) (some (72, sourceBody378_13, 378, 3))

def sourceBody378_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody378_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_14 sourceBody378_15

def sourceBody378_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_16 sourceBody378_0

def sourceBody378_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_12 sourceBody378_17

def sourceBody378_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_11 sourceBody378_18

def sourceBody378_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_10 sourceBody378_19

def sourceBody378_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_9 sourceBody378_20

def sourceBody378_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def sourceBody378_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.reg 96) sourceBody378_24 sourceBody378_25

def sourceBody378_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_26 sourceBody378_15

def sourceBody378_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def sourceBody378_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody378_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 72)

def sourceBody378_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_30 sourceBody378_0

def sourceBody378_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_31 sourceBody378_0

def sourceBody378_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_29 sourceBody378_32

def sourceBody378_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_33

def sourceBody378_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody378_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_35 sourceBody378_13

def sourceBody378_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_34 sourceBody378_36

def sourceBody378_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody378_37 sourceBody378_0

def sourceBody378_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_38 sourceBody378_15

def sourceBody378_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_39 sourceBody378_0

def sourceBody378_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_28 sourceBody378_40

def sourceBody378_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_27 sourceBody378_41

def sourceBody378_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_23 sourceBody378_42

def sourceBody378_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_22 sourceBody378_43

def sourceBody378_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 18)

def sourceBody378_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 66)

def sourceBody378_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def sourceBody378_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 90)

def sourceBody378_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 13822214165235122497#64)

def sourceBody378_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 13451932020343611451#64)

def sourceBody378_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551614#64)

def sourceBody378_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody378_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody378_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 4)) (some 106) ([48, 96, 10, 56, 32, 80, 22, 70]) (some (48, sourceBody378_53, 378, 5))

def sourceBody378_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_54 sourceBody378_15

def sourceBody378_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_55 sourceBody378_0

def sourceBody378_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_52 sourceBody378_56

def sourceBody378_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_51 sourceBody378_57

def sourceBody378_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_50 sourceBody378_58

def sourceBody378_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_49 sourceBody378_59

def sourceBody378_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_48 sourceBody378_60

def sourceBody378_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_47 sourceBody378_61

def sourceBody378_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_46 sourceBody378_62

def sourceBody378_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_45 sourceBody378_63

def sourceBody378_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 72)

def sourceBody378_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 96 (Flapjack.WordRegImm.reg 10) sourceBody378_67 sourceBody378_23

def sourceBody378_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_68 sourceBody378_15

def sourceBody378_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 96)

def sourceBody378_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody378_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 48)

def sourceBody378_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_72 sourceBody378_0

def sourceBody378_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_73 sourceBody378_0

def sourceBody378_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_71 sourceBody378_74

def sourceBody378_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_75

def sourceBody378_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody378_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_77 sourceBody378_53

def sourceBody378_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_76 sourceBody378_78

def sourceBody378_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody378_79 sourceBody378_0

def sourceBody378_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_80 sourceBody378_15

def sourceBody378_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_81 sourceBody378_0

def sourceBody378_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_70 sourceBody378_82

def sourceBody378_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_69 sourceBody378_83

def sourceBody378_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_66 sourceBody378_84

def sourceBody378_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_65 sourceBody378_85

def sourceBody378_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def sourceBody378_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 60)

def sourceBody378_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 36)

def sourceBody378_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 84)

def sourceBody378_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 6)) (some 102) ([48, 96, 10, 56]) (some (48, sourceBody378_53, 378, 7))

def sourceBody378_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_91 sourceBody378_15

def sourceBody378_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_92 sourceBody378_0

def sourceBody378_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_90 sourceBody378_93

def sourceBody378_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_89 sourceBody378_94

def sourceBody378_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_88 sourceBody378_95

def sourceBody378_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_87 sourceBody378_96

def sourceBody378_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_86 sourceBody378_97

def sourceBody378_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 24)

def sourceBody378_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 96 (Flapjack.WordRegImm.reg 10) sourceBody378_67 sourceBody378_23

def sourceBody378_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_100 sourceBody378_15

def sourceBody378_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 41#64)

def sourceBody378_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_102 sourceBody378_74

def sourceBody378_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_103

def sourceBody378_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_104 sourceBody378_78

def sourceBody378_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody378_105 sourceBody378_0

def sourceBody378_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_106 sourceBody378_15

def sourceBody378_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_107 sourceBody378_0

def sourceBody378_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_70 sourceBody378_108

def sourceBody378_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_101 sourceBody378_109

def sourceBody378_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_66 sourceBody378_110

def sourceBody378_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_99 sourceBody378_111

def sourceBody378_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_98 sourceBody378_112

def sourceBody378_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 12)

def sourceBody378_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 60)

def sourceBody378_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 36)

def sourceBody378_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 84)

def sourceBody378_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 16134479119472337056#64)

def sourceBody378_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 6725966010171805725#64)

def sourceBody378_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 9223372036854775807#64)

def sourceBody378_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def sourceBody378_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 8)) (some 107) ([96, 10, 56, 32, 80, 22, 70, 46]) (some (96, sourceBody378_121, 378, 9))

def sourceBody378_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_122 sourceBody378_15

def sourceBody378_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_123 sourceBody378_0

def sourceBody378_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_120 sourceBody378_124

def sourceBody378_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_52 sourceBody378_125

def sourceBody378_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_119 sourceBody378_126

def sourceBody378_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_118 sourceBody378_127

def sourceBody378_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_117 sourceBody378_128

def sourceBody378_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_116 sourceBody378_129

def sourceBody378_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_115 sourceBody378_130

def sourceBody378_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_114 sourceBody378_131

def sourceBody378_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 56) sourceBody378_134 sourceBody378_66

def sourceBody378_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_135 sourceBody378_15

def sourceBody378_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 41#64)

def sourceBody378_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 96)

def sourceBody378_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_139 sourceBody378_0

def sourceBody378_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_140 sourceBody378_0

def sourceBody378_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_138 sourceBody378_141

def sourceBody378_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_142

def sourceBody378_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody378_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_144 sourceBody378_121

def sourceBody378_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_143 sourceBody378_145

def sourceBody378_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody378_146 sourceBody378_0

def sourceBody378_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_147 sourceBody378_15

def sourceBody378_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_148 sourceBody378_0

def sourceBody378_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_137 sourceBody378_149

def sourceBody378_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_136 sourceBody378_150

def sourceBody378_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_133 sourceBody378_151

def sourceBody378_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_28 sourceBody378_152

def sourceBody378_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody378_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody378_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody378_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody378_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody378_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 56)

def sourceBody378_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 32)

def sourceBody378_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 80)

def sourceBody378_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def sourceBody378_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 10)) (some 101) ([70, 46, 94, 16]) (some (70, sourceBody378_163, 378, 11))

def sourceBody378_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_164 sourceBody378_15

def sourceBody378_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_165 sourceBody378_0

def sourceBody378_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_162 sourceBody378_166

def sourceBody378_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_161 sourceBody378_167

def sourceBody378_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_160 sourceBody378_168

def sourceBody378_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_159 sourceBody378_169

def sourceBody378_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 96)

def sourceBody378_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 94) sourceBody378_173 sourceBody378_174

def sourceBody378_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_175 sourceBody378_15

def sourceBody378_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 46)

def sourceBody378_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def sourceBody378_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.reg 94) sourceBody378_173 sourceBody378_174

def sourceBody378_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_179 sourceBody378_15

def sourceBody378_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 27#64)

def sourceBody378_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 28#64)

def sourceBody378_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 40) sourceBody378_185 sourceBody378_186

def sourceBody378_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_187 sourceBody378_15

def sourceBody378_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.var 64])

def sourceBody378_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 76) sourceBody378_191 sourceBody378_189

def sourceBody378_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_192 sourceBody378_15

def sourceBody378_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody378_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody378_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 6)

def sourceBody378_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody378_198 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 12)) (some 371) ([46, 94]) (some (46, sourceBody378_197, 378, 13))

def sourceBody378_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_198 sourceBody378_15

def sourceBody378_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_199 sourceBody378_0

def sourceBody378_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_196 sourceBody378_200

def sourceBody378_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_195 sourceBody378_201

def sourceBody378_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_202

def sourceBody378_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_203

def sourceBody378_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 27#64])

def sourceBody378_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [70]

def sourceBody378_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_206 sourceBody378_0

def sourceBody378_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_205 sourceBody378_207

def sourceBody378_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_204 sourceBody378_208

def sourceBody378_210 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody378_209 sourceBody378_0

def sourceBody378_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_210 sourceBody378_15

def sourceBody378_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_211 sourceBody378_0

def sourceBody378_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_194 sourceBody378_212

def sourceBody378_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_193 sourceBody378_213

def sourceBody378_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_190 sourceBody378_214

def sourceBody378_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_189 sourceBody378_215

def sourceBody378_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_188 sourceBody378_216

def sourceBody378_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_184 sourceBody378_217

def sourceBody378_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_183 sourceBody378_218

def sourceBody378_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_219

def sourceBody378_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_182 sourceBody378_220

def sourceBody378_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_181 sourceBody378_221

def sourceBody378_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_222 sourceBody378_0

def sourceBody378_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_223 sourceBody378_15

def sourceBody378_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_224 sourceBody378_0

def sourceBody378_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_225

def sourceBody378_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_180 sourceBody378_226

def sourceBody378_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_172 sourceBody378_227

def sourceBody378_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_178 sourceBody378_228

def sourceBody378_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 4)

def sourceBody378_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 70)

def sourceBody378_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 46)

def sourceBody378_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 94)

def sourceBody378_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody378_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 70)

def sourceBody378_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody378_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 94)

def sourceBody378_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody378_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody378_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([64, 40, 88, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 14)) (some 116) ([76, 52, 100, 8, 54, 30, 78, 20]) (some (76, sourceBody378_240, 378, 15))

def sourceBody378_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_241 sourceBody378_15

def sourceBody378_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_242 sourceBody378_0

def sourceBody378_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_239 sourceBody378_243

def sourceBody378_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_238 sourceBody378_244

def sourceBody378_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_237 sourceBody378_245

def sourceBody378_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_236 sourceBody378_246

def sourceBody378_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_235 sourceBody378_247

def sourceBody378_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_234 sourceBody378_248

def sourceBody378_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_233 sourceBody378_249

def sourceBody378_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_232 sourceBody378_250

def sourceBody378_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 64)

def sourceBody378_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 40)

def sourceBody378_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 88)

def sourceBody378_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody378_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 35#64)

def sourceBody378_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody378_261 : WordLangProgHOL (BitVec 64) :=
.call (some (([76, 52, 100, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 16)) (some 116) ([54, 30, 78, 20, 68, 44, 92, 14]) (some (54, sourceBody378_260, 378, 17))

def sourceBody378_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_261 sourceBody378_15

def sourceBody378_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_262 sourceBody378_0

def sourceBody378_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_259 sourceBody378_263

def sourceBody378_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_258 sourceBody378_264

def sourceBody378_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_257 sourceBody378_265

def sourceBody378_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_256 sourceBody378_266

def sourceBody378_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_255 sourceBody378_267

def sourceBody378_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_254 sourceBody378_268

def sourceBody378_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_253 sourceBody378_269

def sourceBody378_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_252 sourceBody378_270

def sourceBody378_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 64)

def sourceBody378_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody378_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 88)

def sourceBody378_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody378_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 36#64)

def sourceBody378_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody378_281 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 30, 78, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 18)) (some 116) ([68, 44, 92, 14, 62, 38, 86, 26]) (some (68, sourceBody378_280, 378, 19))

def sourceBody378_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_281 sourceBody378_15

def sourceBody378_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_282 sourceBody378_0

def sourceBody378_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_279 sourceBody378_283

def sourceBody378_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_278 sourceBody378_284

def sourceBody378_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_277 sourceBody378_285

def sourceBody378_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_276 sourceBody378_286

def sourceBody378_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_275 sourceBody378_287

def sourceBody378_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_274 sourceBody378_288

def sourceBody378_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_273 sourceBody378_289

def sourceBody378_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_272 sourceBody378_290

def sourceBody378_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 56)

def sourceBody378_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody378_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 80)

def sourceBody378_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 76)

def sourceBody378_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 52)

def sourceBody378_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 100)

def sourceBody378_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 8)

def sourceBody378_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody378_301 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 20)) (some 105) ([44, 92, 14, 62, 38, 86, 26, 74]) (some (44, sourceBody378_300, 378, 21))

def sourceBody378_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_301 sourceBody378_15

def sourceBody378_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_302 sourceBody378_0

def sourceBody378_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_299 sourceBody378_303

def sourceBody378_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_298 sourceBody378_304

def sourceBody378_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_297 sourceBody378_305

def sourceBody378_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_296 sourceBody378_306

def sourceBody378_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_295 sourceBody378_307

def sourceBody378_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_294 sourceBody378_308

def sourceBody378_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_293 sourceBody378_309

def sourceBody378_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_292 sourceBody378_310

def sourceBody378_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 56)

def sourceBody378_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def sourceBody378_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 80)

def sourceBody378_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 54)

def sourceBody378_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody378_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 78)

def sourceBody378_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 20)

def sourceBody378_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def sourceBody378_321 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 22)) (some 105) ([92, 14, 62, 38, 86, 26, 74, 50]) (some (92, sourceBody378_320, 378, 23))

def sourceBody378_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_321 sourceBody378_15

def sourceBody378_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_322 sourceBody378_0

def sourceBody378_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_319 sourceBody378_323

def sourceBody378_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_318 sourceBody378_324

def sourceBody378_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_317 sourceBody378_325

def sourceBody378_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_316 sourceBody378_326

def sourceBody378_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_315 sourceBody378_327

def sourceBody378_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_314 sourceBody378_328

def sourceBody378_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_313 sourceBody378_329

def sourceBody378_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_312 sourceBody378_330

def sourceBody378_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 68)

def sourceBody378_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_335 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 62) sourceBody378_334 sourceBody378_259

def sourceBody378_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_335 sourceBody378_15

def sourceBody378_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody378_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_339 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 86 (Flapjack.WordRegImm.reg 26) sourceBody378_338 sourceBody378_278

def sourceBody378_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_339 sourceBody378_15

def sourceBody378_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody378_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_345 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 98) sourceBody378_343 sourceBody378_344

def sourceBody378_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_345 sourceBody378_15

def sourceBody378_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody378_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 50)

def sourceBody378_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_350 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 34) sourceBody378_349 sourceBody378_347

def sourceBody378_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_350 sourceBody378_15

def sourceBody378_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.var 58])

def sourceBody378_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 42#64)

def sourceBody378_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 92)

def sourceBody378_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_354 sourceBody378_0

def sourceBody378_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_355 sourceBody378_0

def sourceBody378_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_353 sourceBody378_356

def sourceBody378_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_357

def sourceBody378_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody378_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_359 sourceBody378_320

def sourceBody378_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_358 sourceBody378_360

def sourceBody378_362 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 82 (Flapjack.WordRegImm.imm 0#64) sourceBody378_361 sourceBody378_0

def sourceBody378_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_362 sourceBody378_15

def sourceBody378_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_363 sourceBody378_0

def sourceBody378_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_352 sourceBody378_364

def sourceBody378_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_351 sourceBody378_365

def sourceBody378_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_348 sourceBody378_366

def sourceBody378_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_347 sourceBody378_367

def sourceBody378_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_346 sourceBody378_368

def sourceBody378_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_342 sourceBody378_369

def sourceBody378_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_341 sourceBody378_370

def sourceBody378_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_340 sourceBody378_371

def sourceBody378_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_337 sourceBody378_372

def sourceBody378_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_278 sourceBody378_373

def sourceBody378_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_336 sourceBody378_374

def sourceBody378_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_333 sourceBody378_375

def sourceBody378_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_332 sourceBody378_376

def sourceBody378_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody378_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 4)

def sourceBody378_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody378_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody378_382 : WordLangProgHOL (BitVec 64) :=
.call (some (([92]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 24)) (some 372) ([14, 62, 38]) (some (14, sourceBody378_381, 378, 25))

def sourceBody378_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_382 sourceBody378_15

def sourceBody378_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_383 sourceBody378_0

def sourceBody378_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_380 sourceBody378_384

def sourceBody378_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_379 sourceBody378_385

def sourceBody378_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_378 sourceBody378_386

def sourceBody378_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_387

def sourceBody378_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_388

def sourceBody378_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_377 sourceBody378_389

def sourceBody378_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 44)

def sourceBody378_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [92]

def sourceBody378_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_392 sourceBody378_0

def sourceBody378_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_391 sourceBody378_393

def sourceBody378_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_390 sourceBody378_394

def sourceBody378_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_331 sourceBody378_395

def sourceBody378_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_396

def sourceBody378_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_397

def sourceBody378_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_311 sourceBody378_398

def sourceBody378_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_399

def sourceBody378_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_400

def sourceBody378_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_291 sourceBody378_401

def sourceBody378_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_402

def sourceBody378_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_403

def sourceBody378_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_404

def sourceBody378_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_405

def sourceBody378_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_406

def sourceBody378_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_407

def sourceBody378_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_408

def sourceBody378_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_409

def sourceBody378_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_271 sourceBody378_410

def sourceBody378_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_411

def sourceBody378_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_412

def sourceBody378_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_413

def sourceBody378_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_414

def sourceBody378_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_415

def sourceBody378_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_416

def sourceBody378_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_417

def sourceBody378_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_418

def sourceBody378_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_251 sourceBody378_419

def sourceBody378_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_420

def sourceBody378_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_421

def sourceBody378_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_422

def sourceBody378_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_423

def sourceBody378_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_424

def sourceBody378_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_425

def sourceBody378_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_426

def sourceBody378_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_427

def sourceBody378_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_231 sourceBody378_428

def sourceBody378_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_429

def sourceBody378_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_172 sourceBody378_430

def sourceBody378_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_431

def sourceBody378_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_174 sourceBody378_432

def sourceBody378_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_433

def sourceBody378_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_230 sourceBody378_434

def sourceBody378_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_435

def sourceBody378_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_229 sourceBody378_436

def sourceBody378_438 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_437 sourceBody378_0

def sourceBody378_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_438 sourceBody378_15

def sourceBody378_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_439 sourceBody378_0

def sourceBody378_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_440

def sourceBody378_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_441

def sourceBody378_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_172 sourceBody378_442

def sourceBody378_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_171 sourceBody378_443

def sourceBody378_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 43#64)

def sourceBody378_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 70)

def sourceBody378_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_446 sourceBody378_0

def sourceBody378_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_447 sourceBody378_0

def sourceBody378_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_445 sourceBody378_448

def sourceBody378_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_449

def sourceBody378_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody378_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_451 sourceBody378_163

def sourceBody378_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_450 sourceBody378_452

def sourceBody378_454 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_453 sourceBody378_0

def sourceBody378_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_454 sourceBody378_15

def sourceBody378_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_455 sourceBody378_0

def sourceBody378_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_456

def sourceBody378_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_457

def sourceBody378_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_172 sourceBody378_458

def sourceBody378_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_178 sourceBody378_459

def sourceBody378_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_444 sourceBody378_460

def sourceBody378_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 10)

def sourceBody378_463 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 46 (Flapjack.WordRegImm.reg 94) sourceBody378_173 sourceBody378_174

def sourceBody378_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_463 sourceBody378_15

def sourceBody378_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_464 sourceBody378_457

def sourceBody378_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_462 sourceBody378_465

def sourceBody378_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_173 sourceBody378_466

def sourceBody378_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_461 sourceBody378_467

def sourceBody378_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody378_470 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 26)) (some 373) ([46, 94]) (some (46, sourceBody378_197, 378, 27))

def sourceBody378_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_470 sourceBody378_15

def sourceBody378_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_471 sourceBody378_0

def sourceBody378_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_196 sourceBody378_472

def sourceBody378_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_195 sourceBody378_473

def sourceBody378_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_474

def sourceBody378_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_475

def sourceBody378_477 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_476 sourceBody378_0

def sourceBody378_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_477 sourceBody378_15

def sourceBody378_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_478 sourceBody378_0

def sourceBody378_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_479

def sourceBody378_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_480

def sourceBody378_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_469 sourceBody378_481

def sourceBody378_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_171 sourceBody378_482

def sourceBody378_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_468 sourceBody378_483

def sourceBody378_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody378_486 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 28)) (some 374) ([46, 94]) (some (46, sourceBody378_197, 378, 29))

def sourceBody378_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_486 sourceBody378_15

def sourceBody378_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_487 sourceBody378_0

def sourceBody378_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_196 sourceBody378_488

def sourceBody378_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_195 sourceBody378_489

def sourceBody378_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_490

def sourceBody378_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_491

def sourceBody378_493 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_492 sourceBody378_0

def sourceBody378_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_493 sourceBody378_15

def sourceBody378_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_494 sourceBody378_0

def sourceBody378_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_495

def sourceBody378_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_496

def sourceBody378_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_485 sourceBody378_497

def sourceBody378_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_171 sourceBody378_498

def sourceBody378_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_484 sourceBody378_499

def sourceBody378_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody378_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 30)) (some 375) ([46, 94]) (some (46, sourceBody378_197, 378, 31))

def sourceBody378_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_502 sourceBody378_15

def sourceBody378_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_503 sourceBody378_0

def sourceBody378_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_196 sourceBody378_504

def sourceBody378_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_195 sourceBody378_505

def sourceBody378_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_506

def sourceBody378_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_507

def sourceBody378_509 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_508 sourceBody378_0

def sourceBody378_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_509 sourceBody378_15

def sourceBody378_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_510 sourceBody378_0

def sourceBody378_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_511

def sourceBody378_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_512

def sourceBody378_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_501 sourceBody378_513

def sourceBody378_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_171 sourceBody378_514

def sourceBody378_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_500 sourceBody378_515

def sourceBody378_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody378_518 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody378_0, 378, 32)) (some 376) ([46, 94]) (some (46, sourceBody378_197, 378, 33))

def sourceBody378_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_518 sourceBody378_15

def sourceBody378_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_519 sourceBody378_0

def sourceBody378_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_196 sourceBody378_520

def sourceBody378_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_195 sourceBody378_521

def sourceBody378_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_522

def sourceBody378_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_523

def sourceBody378_525 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody378_524 sourceBody378_0

def sourceBody378_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_525 sourceBody378_15

def sourceBody378_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_526 sourceBody378_0

def sourceBody378_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_177 sourceBody378_527

def sourceBody378_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_176 sourceBody378_528

def sourceBody378_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_517 sourceBody378_529

def sourceBody378_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_171 sourceBody378_530

def sourceBody378_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_516 sourceBody378_531

def sourceBody378_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_159 sourceBody378_207

def sourceBody378_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_532 sourceBody378_533

def sourceBody378_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_170 sourceBody378_534

def sourceBody378_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_535

def sourceBody378_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_536

def sourceBody378_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_158 sourceBody378_537

def sourceBody378_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_538

def sourceBody378_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_157 sourceBody378_539

def sourceBody378_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_540

def sourceBody378_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_156 sourceBody378_541

def sourceBody378_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_542

def sourceBody378_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_155 sourceBody378_543

def sourceBody378_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_544

def sourceBody378_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_154 sourceBody378_545

def sourceBody378_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_546

def sourceBody378_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_153 sourceBody378_547

def sourceBody378_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_132 sourceBody378_548

def sourceBody378_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_549

def sourceBody378_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_550

def sourceBody378_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_113 sourceBody378_551

def sourceBody378_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_64 sourceBody378_552

def sourceBody378_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_553

def sourceBody378_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_554

def sourceBody378_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_44 sourceBody378_555

def sourceBody378_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_21 sourceBody378_556

def sourceBody378_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_557

def sourceBody378_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_558

def sourceBody378_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_8 sourceBody378_559

def sourceBody378_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_560

def sourceBody378_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_7 sourceBody378_561

def sourceBody378_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_562

def sourceBody378_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_6 sourceBody378_563

def sourceBody378_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_564

def sourceBody378_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_5 sourceBody378_565

def sourceBody378_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_566

def sourceBody378_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_4 sourceBody378_567

def sourceBody378_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_568

def sourceBody378_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_3 sourceBody378_569

def sourceBody378_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_570

def sourceBody378_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_2 sourceBody378_571

def sourceBody378_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_572

def sourceBody378_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_1 sourceBody378_573

def sourceBody378_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody378_0 sourceBody378_574

def source378 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (378, 4, sourceBody378_575)
end InitECandidate.Proofs.WordStages
