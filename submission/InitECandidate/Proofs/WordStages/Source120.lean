import InitECandidate.Proofs.WordStages.Source104
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody120_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody120_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody120_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 76) sourceBody120_2 sourceBody120_3

def sourceBody120_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody120_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_4 sourceBody120_5

def sourceBody120_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 40)

def sourceBody120_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody120_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 2)

def sourceBody120_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody120_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody120_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([58, 40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody120_8, 120, 2)) (some 119) ([76, 30]) (some (76, sourceBody120_11, 120, 3))

def sourceBody120_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_12 sourceBody120_5

def sourceBody120_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_13 sourceBody120_8

def sourceBody120_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_10 sourceBody120_14

def sourceBody120_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_9 sourceBody120_15

def sourceBody120_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 58)

def sourceBody120_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [76, 30, 68, 50]

def sourceBody120_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_20 sourceBody120_8

def sourceBody120_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_19 sourceBody120_21

def sourceBody120_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_18 sourceBody120_22

def sourceBody120_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_7 sourceBody120_23

def sourceBody120_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_17 sourceBody120_24

def sourceBody120_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_16 sourceBody120_25

def sourceBody120_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_26

def sourceBody120_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_27

def sourceBody120_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_28

def sourceBody120_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_29

def sourceBody120_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody120_30 sourceBody120_8

def sourceBody120_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_31 sourceBody120_5

def sourceBody120_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_32 sourceBody120_8

def sourceBody120_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_7 sourceBody120_33

def sourceBody120_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_6 sourceBody120_34

def sourceBody120_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_1 sourceBody120_35

def sourceBody120_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_0 sourceBody120_36

def sourceBody120_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([58, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 4)) (some 119) ([76, 30]) (some (76, sourceBody120_11, 120, 5))

def sourceBody120_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_38 sourceBody120_5

def sourceBody120_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_39 sourceBody120_8

def sourceBody120_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_10 sourceBody120_40

def sourceBody120_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_9 sourceBody120_41

def sourceBody120_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 2)

def sourceBody120_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 12)

def sourceBody120_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody120_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([76, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 6)) (some 119) ([68, 50]) (some (68, sourceBody120_45, 120, 7))

def sourceBody120_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_46 sourceBody120_5

def sourceBody120_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_47 sourceBody120_8

def sourceBody120_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_44 sourceBody120_48

def sourceBody120_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_43 sourceBody120_49

def sourceBody120_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 4)

def sourceBody120_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody120_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def sourceBody120_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 8)) (some 119) ([86, 20]) (some (86, sourceBody120_53, 120, 9))

def sourceBody120_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_54 sourceBody120_5

def sourceBody120_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_55 sourceBody120_8

def sourceBody120_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_52 sourceBody120_56

def sourceBody120_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_51 sourceBody120_57

def sourceBody120_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 2)

def sourceBody120_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody120_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody120_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([86, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 10)) (some 119) ([56, 38]) (some (56, sourceBody120_61, 120, 11))

def sourceBody120_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_62 sourceBody120_5

def sourceBody120_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_63 sourceBody120_8

def sourceBody120_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_60 sourceBody120_64

def sourceBody120_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_59 sourceBody120_65

def sourceBody120_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 4)

def sourceBody120_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody120_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody120_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 12)) (some 119) ([74, 28]) (some (74, sourceBody120_69, 120, 13))

def sourceBody120_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_70 sourceBody120_5

def sourceBody120_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_71 sourceBody120_8

def sourceBody120_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_68 sourceBody120_72

def sourceBody120_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_67 sourceBody120_73

def sourceBody120_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 6)

def sourceBody120_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 10)

def sourceBody120_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody120_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody120_8, 120, 14)) (some 119) ([66, 48]) (some (66, sourceBody120_77, 120, 15))

def sourceBody120_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_78 sourceBody120_5

def sourceBody120_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_79 sourceBody120_8

def sourceBody120_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_76 sourceBody120_80

def sourceBody120_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_75 sourceBody120_81

def sourceBody120_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 58)

def sourceBody120_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 40)

def sourceBody120_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_85 sourceBody120_8

def sourceBody120_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_86 sourceBody120_8

def sourceBody120_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 84)

def sourceBody120_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 76)

def sourceBody120_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 34)

def sourceBody120_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 44 80 1))

def sourceBody120_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 1)

def sourceBody120_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 3)

def sourceBody120_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_93 sourceBody120_94

def sourceBody120_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_92 sourceBody120_95

def sourceBody120_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_91 sourceBody120_96

def sourceBody120_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_90 sourceBody120_97

def sourceBody120_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_98

def sourceBody120_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_89 sourceBody120_99

def sourceBody120_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_100

def sourceBody120_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_88 sourceBody120_101

def sourceBody120_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_102

def sourceBody120_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_87 sourceBody120_103

def sourceBody120_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 66)

def sourceBody120_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_105 sourceBody120_8

def sourceBody120_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_106 sourceBody120_8

def sourceBody120_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_104 sourceBody120_107

def sourceBody120_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 48])

def sourceBody120_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 44)

def sourceBody120_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_110 sourceBody120_8

def sourceBody120_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_111 sourceBody120_8

def sourceBody120_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_109 sourceBody120_112

def sourceBody120_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_113

def sourceBody120_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_108 sourceBody120_114

def sourceBody120_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 68)

def sourceBody120_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_116 sourceBody120_99

def sourceBody120_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_117

def sourceBody120_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_88 sourceBody120_118

def sourceBody120_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_119

def sourceBody120_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_115 sourceBody120_120

def sourceBody120_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_121 sourceBody120_107

def sourceBody120_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_122 sourceBody120_114

def sourceBody120_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 24)

def sourceBody120_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_124 sourceBody120_8

def sourceBody120_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_125 sourceBody120_8

def sourceBody120_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_83 sourceBody120_8

def sourceBody120_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_127 sourceBody120_8

def sourceBody120_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_126 sourceBody120_128

def sourceBody120_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 84)

def sourceBody120_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody120_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody120_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 70)

def sourceBody120_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 80 34 1))

def sourceBody120_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_134 sourceBody120_95

def sourceBody120_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_133 sourceBody120_135

def sourceBody120_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_132 sourceBody120_136

def sourceBody120_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_137

def sourceBody120_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_131 sourceBody120_138

def sourceBody120_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_139

def sourceBody120_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_140

def sourceBody120_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_141

def sourceBody120_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_129 sourceBody120_142

def sourceBody120_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_143 sourceBody120_107

def sourceBody120_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 48])

def sourceBody120_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 80)

def sourceBody120_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_146 sourceBody120_8

def sourceBody120_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_147 sourceBody120_8

def sourceBody120_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_145 sourceBody120_148

def sourceBody120_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_149

def sourceBody120_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_144 sourceBody120_150

def sourceBody120_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 50)

def sourceBody120_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_152 sourceBody120_138

def sourceBody120_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_153

def sourceBody120_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_154

def sourceBody120_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_155

def sourceBody120_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_151 sourceBody120_156

def sourceBody120_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_157 sourceBody120_107

def sourceBody120_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_158 sourceBody120_150

def sourceBody120_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 86)

def sourceBody120_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_160 sourceBody120_138

def sourceBody120_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_161

def sourceBody120_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_162

def sourceBody120_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_163

def sourceBody120_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_159 sourceBody120_164

def sourceBody120_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_165 sourceBody120_107

def sourceBody120_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_166 sourceBody120_150

def sourceBody120_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 56)

def sourceBody120_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_168 sourceBody120_138

def sourceBody120_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_169

def sourceBody120_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_170

def sourceBody120_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_171

def sourceBody120_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_167 sourceBody120_172

def sourceBody120_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_173 sourceBody120_107

def sourceBody120_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_174 sourceBody120_150

def sourceBody120_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 74)

def sourceBody120_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_176 sourceBody120_138

def sourceBody120_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_177

def sourceBody120_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_178

def sourceBody120_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_179

def sourceBody120_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_175 sourceBody120_180

def sourceBody120_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_181 sourceBody120_107

def sourceBody120_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_182 sourceBody120_150

def sourceBody120_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_8

def sourceBody120_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_184 sourceBody120_8

def sourceBody120_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_126 sourceBody120_185

def sourceBody120_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody120_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 16)

def sourceBody120_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 52 52 34 70))

def sourceBody120_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 4)

def sourceBody120_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody120_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 54 54 88 18))

def sourceBody120_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody120_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 12)

def sourceBody120_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 36 72))

def sourceBody120_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 8)

def sourceBody120_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody120_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 82 82 64 46))

def sourceBody120_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_198 sourceBody120_8

def sourceBody120_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_197 sourceBody120_199

def sourceBody120_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_196 sourceBody120_200

def sourceBody120_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_195 sourceBody120_201

def sourceBody120_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_194 sourceBody120_202

def sourceBody120_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_193 sourceBody120_203

def sourceBody120_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_192 sourceBody120_204

def sourceBody120_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_191 sourceBody120_205

def sourceBody120_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_190 sourceBody120_206

def sourceBody120_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_189 sourceBody120_207

def sourceBody120_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_188 sourceBody120_208

def sourceBody120_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_187 sourceBody120_209

def sourceBody120_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 54,
      Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 82])

def sourceBody120_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def sourceBody120_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody120_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 80)

def sourceBody120_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody120_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [60, 42, 78, 32]

def sourceBody120_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_216 sourceBody120_8

def sourceBody120_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_215 sourceBody120_217

def sourceBody120_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_214 sourceBody120_218

def sourceBody120_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_213 sourceBody120_219

def sourceBody120_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_212 sourceBody120_220

def sourceBody120_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_211 sourceBody120_221

def sourceBody120_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_210 sourceBody120_222

def sourceBody120_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_186 sourceBody120_223

def sourceBody120_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_130 sourceBody120_224

def sourceBody120_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_225

def sourceBody120_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_183 sourceBody120_226

def sourceBody120_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_88 sourceBody120_227

def sourceBody120_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_228

def sourceBody120_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_123 sourceBody120_229

def sourceBody120_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_84 sourceBody120_230

def sourceBody120_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_231

def sourceBody120_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_83 sourceBody120_232

def sourceBody120_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_233

def sourceBody120_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_234

def sourceBody120_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_235

def sourceBody120_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_236

def sourceBody120_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_237

def sourceBody120_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_238

def sourceBody120_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_239

def sourceBody120_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_82 sourceBody120_240

def sourceBody120_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_241

def sourceBody120_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_242

def sourceBody120_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_243

def sourceBody120_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_244

def sourceBody120_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_74 sourceBody120_245

def sourceBody120_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_246

def sourceBody120_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_247

def sourceBody120_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_248

def sourceBody120_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_249

def sourceBody120_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_66 sourceBody120_250

def sourceBody120_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_251

def sourceBody120_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_252

def sourceBody120_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_253

def sourceBody120_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_254

def sourceBody120_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_58 sourceBody120_255

def sourceBody120_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_256

def sourceBody120_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_257

def sourceBody120_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_258

def sourceBody120_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_259

def sourceBody120_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_50 sourceBody120_260

def sourceBody120_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_261

def sourceBody120_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_262

def sourceBody120_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_263

def sourceBody120_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_264

def sourceBody120_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_42 sourceBody120_265

def sourceBody120_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_266

def sourceBody120_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_267

def sourceBody120_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_268

def sourceBody120_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_8 sourceBody120_269

def sourceBody120_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody120_37 sourceBody120_270

def source120 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (120, 9, sourceBody120_271)
end InitECandidate.Proofs.WordStages
