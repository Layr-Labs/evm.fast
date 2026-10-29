import InitECandidate.Proofs.WordStages.Source700
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel700
def word700_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word700_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word700_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 2)) (some 69) ([]) (some (16, word700_0_1, 700, 3))

def word700_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word700_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_2 word700_0_3

def word700_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_4 word700_0_5

def word700_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_6 word700_0_5

def word700_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word700_0_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 4)) (some 68) ([52]) (some (52, word700_0_8, 700, 5))

def word700_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_7 word700_0_9

def word700_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_10 word700_0_3

def word700_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_11 word700_0_12

def word700_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_13 word700_0_12

def word700_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word700_0_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 6)) (some 68) ([34]) (some (34, word700_0_15, 700, 7))

def word700_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_14 word700_0_16

def word700_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_17 word700_0_3

def word700_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_18 word700_0_19

def word700_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_20 word700_0_19

def word700_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word700_0_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 8)) (some 68) ([72]) (some (72, word700_0_22, 700, 9))

def word700_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_21 word700_0_23

def word700_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_24 word700_0_3

def word700_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_25 word700_0_26

def word700_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_27 word700_0_26

def word700_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word700_0_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 10)) (some 68) ([10]) (some (10, word700_0_29, 700, 11))

def word700_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_28 word700_0_30

def word700_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_31 word700_0_3

def word700_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_32 word700_0_33

def word700_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_34 word700_0_33

def word700_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word700_0_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 12)) (some 68) ([48]) (some (48, word700_0_36, 700, 13))

def word700_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_35 word700_0_37

def word700_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_38 word700_0_3

def word700_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_39 word700_0_40

def word700_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_41 word700_0_40

def word700_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word700_0_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 14)) (some 68) ([30]) (some (30, word700_0_43, 700, 15))

def word700_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_42 word700_0_44

def word700_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_45 word700_0_3

def word700_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 16)

def word700_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_46 word700_0_47

def word700_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_48 word700_0_49

def word700_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_50 word700_0_49

def word700_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word700_0_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 16)) (some 78) ([68, 22]) (some (68, word700_0_52, 700, 17))

def word700_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_51 word700_0_53

def word700_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_54 word700_0_3

def word700_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def word700_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_55 word700_0_56

def word700_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 82#64)

def word700_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_57 word700_0_58

def word700_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_59 word700_0_60

def word700_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_61 word700_0_62

def word700_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_63 word700_0_64

def word700_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 82#64)

def word700_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_65 word700_0_66

def word700_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 78

def word700_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_67 word700_0_68

def word700_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_69 word700_0_70

def word700_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 8#64])
  78

def word700_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_71 word700_0_72

def word700_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_73 word700_0_70

def word700_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 16#64])
  78

def word700_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_74 word700_0_75

def word700_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_76 word700_0_70

def word700_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 24#64])
  78

def word700_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_77 word700_0_78

def word700_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 18#64)

def word700_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_79 word700_0_80

def word700_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_81 word700_0_70

def word700_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_82 word700_0_83

def word700_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_84 word700_0_85

def word700_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_86 word700_0_85

def word700_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_87 word700_0_83

def word700_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_88 word700_0_70

def word700_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_89 word700_0_80

def word700_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word700_0_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 68, 22, 58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 18)) (some 667) ([40, 78, 8, 46]) (some (40, word700_0_91, 700, 19))

def word700_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_90 word700_0_92

def word700_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_93 word700_0_3

def word700_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 192#64])

def word700_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_94 word700_0_95

def word700_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 30)

def word700_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_96 word700_0_97

def word700_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 68)

def word700_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_98 word700_0_99

def word700_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def word700_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_100 word700_0_101

def word700_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def word700_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_102 word700_0_103

def word700_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 78)

def word700_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_104 word700_0_105

def word700_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 66

def word700_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_106 word700_0_107

def word700_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 8)

def word700_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_108 word700_0_109

def word700_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  66

def word700_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_110 word700_0_111

def word700_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 46)

def word700_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_112 word700_0_113

def word700_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  66

def word700_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_114 word700_0_115

def word700_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def word700_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_116 word700_0_117

def word700_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  66

def word700_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_118 word700_0_119

def word700_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 384#64])

def word700_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_120 word700_0_121

def word700_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_122 word700_0_123

def word700_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_124 word700_0_83

def word700_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_125 word700_0_85

def word700_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_126 word700_0_127

def word700_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_128 word700_0_129

def word700_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_130 word700_0_107

def word700_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_131 word700_0_132

def word700_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_133 word700_0_111

def word700_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_134 word700_0_132

def word700_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_135 word700_0_115

def word700_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_136 word700_0_132

def word700_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_137 word700_0_119

def word700_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 52)

def word700_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_138 word700_0_139

def word700_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_140 word700_0_141

def word700_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_142 word700_0_141

def word700_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word700_0_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 20)) (some 78) ([78, 8]) (some (78, word700_0_144, 700, 21))

def word700_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_143 word700_0_145

def word700_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_146 word700_0_3

def word700_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_147 word700_0_139

def word700_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def word700_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_148 word700_0_149

def word700_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 384#64)

def word700_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_150 word700_0_151

def word700_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_152 word700_0_151

def word700_0_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 22)) (some 77) ([78, 8, 46]) (some (78, word700_0_144, 700, 23))

def word700_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_153 word700_0_154

def word700_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_155 word700_0_3

def word700_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 34)

def word700_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_156 word700_0_157

def word700_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_158 word700_0_141

def word700_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_159 word700_0_141

def word700_0_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 24)) (some 78) ([78, 8]) (some (78, word700_0_144, 700, 25))

def word700_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_160 word700_0_161

def word700_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_162 word700_0_3

def word700_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 72)

def word700_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_163 word700_0_164

def word700_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_165 word700_0_141

def word700_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_166 word700_0_141

def word700_0_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 26)) (some 78) ([78, 8]) (some (78, word700_0_144, 700, 27))

def word700_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_167 word700_0_168

def word700_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_169 word700_0_3

def word700_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word700_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_170 word700_0_171

def word700_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_172 word700_0_123

def word700_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_173 word700_0_83

def word700_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_174 word700_0_85

def word700_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_175 word700_0_127

def word700_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_176 word700_0_129

def word700_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_177 word700_0_107

def word700_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_178 word700_0_132

def word700_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_179 word700_0_111

def word700_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_180 word700_0_132

def word700_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_181 word700_0_115

def word700_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_182 word700_0_132

def word700_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_183 word700_0_119

def word700_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_184 word700_0_3

def word700_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_186 word700_0_139

def word700_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13#64)

def word700_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_187 word700_0_188

def word700_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_189 word700_0_188

def word700_0_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 28)) (some 698) ([78, 8]) (some (78, word700_0_144, 700, 29))

def word700_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_190 word700_0_191

def word700_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_192 word700_0_3

def word700_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_193 word700_0_83

def word700_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 40)

def word700_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_194 word700_0_195

def word700_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_197 word700_0_3

def word700_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_198 word700_0_199

def word700_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word700_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_200 word700_0_201

def word700_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_83 word700_0_3

def word700_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_203 word700_0_127

def word700_0_205 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 8 (Flapjack.WordRegImm.reg 46) word700_0_202 word700_0_204

def word700_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_196 word700_0_205

def word700_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_206 word700_0_3

def word700_0_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def word700_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_207 word700_0_208

def word700_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 13#64)

def word700_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_209 word700_0_210

def word700_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_211 word700_0_210

def word700_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word700_0_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 30)) (some 698) ([8, 46]) (some (8, word700_0_213, 700, 31))

def word700_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_212 word700_0_214

def word700_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_215 word700_0_3

def word700_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def word700_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_216 word700_0_217

def word700_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_218 word700_0_219

def word700_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_220 word700_0_219

def word700_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word700_0_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 32)) (some 78) ([46, 28]) (some (46, word700_0_222, 700, 33))

def word700_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_221 word700_0_223

def word700_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_224 word700_0_3

def word700_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word700_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_225 word700_0_226

def word700_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 52,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word700_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_227 word700_0_228

def word700_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 52,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word700_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_229 word700_0_230

def word700_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 52,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word700_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_231 word700_0_232

def word700_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def word700_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_233 word700_0_234

def word700_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 46)

def word700_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_235 word700_0_236

def word700_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def word700_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_237 word700_0_238

def word700_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 66)

def word700_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_239 word700_0_240

def word700_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word700_0_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 56, 38, 76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 34)) (some 671) ([14, 50, 32, 70]) (some (14, word700_0_242, 700, 35))

def word700_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_241 word700_0_243

def word700_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_244 word700_0_3

def word700_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_245 word700_0_3

def word700_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 78)

def word700_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 40)

def word700_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_247 word700_0_248

def word700_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_250 word700_0_3

def word700_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_251 word700_0_252

def word700_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word700_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_253 word700_0_254

def word700_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 16,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word700_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_255 word700_0_256

def word700_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 16,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word700_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_257 word700_0_258

def word700_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 16,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word700_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_259 word700_0_260

def word700_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def word700_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_261 word700_0_262

def word700_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def word700_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_263 word700_0_264

def word700_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def word700_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_265 word700_0_266

def word700_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 70)

def word700_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_267 word700_0_268

def word700_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def word700_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_269 word700_0_270

def word700_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 56)

def word700_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_271 word700_0_272

def word700_0_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 38)

def word700_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_273 word700_0_274

def word700_0_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 76)

def word700_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_275 word700_0_276

def word700_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word700_0_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 60, 42, 80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 36)) (some 668) ([6, 44, 26, 64, 18, 54, 36, 74]) (some (6, word700_0_278, 700, 37))

def word700_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_277 word700_0_279

def word700_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_280 word700_0_3

def word700_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.var 40])
        (Flapjack.WordLangExpHOL.const 5#64)])

def word700_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_281 word700_0_282

def word700_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 24)

def word700_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_283 word700_0_284

def word700_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 60)

def word700_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_285 word700_0_286

def word700_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 42)

def word700_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_287 word700_0_288

def word700_0_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 80)

def word700_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_289 word700_0_290

def word700_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 44)

def word700_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_291 word700_0_292

def word700_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 54

def word700_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_293 word700_0_294

def word700_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 26)

def word700_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_295 word700_0_296

def word700_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]) 54

def word700_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_297 word700_0_298

def word700_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 64)

def word700_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_299 word700_0_300

def word700_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])
  54

def word700_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_301 word700_0_302

def word700_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 18)

def word700_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_303 word700_0_304

def word700_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])
  54

def word700_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_305 word700_0_306

def word700_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 16)

def word700_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_307 word700_0_308

def word700_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 52)

def word700_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_309 word700_0_310

def word700_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 24)

def word700_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_311 word700_0_312

def word700_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 60)

def word700_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_313 word700_0_314

def word700_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 42)

def word700_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_315 word700_0_316

def word700_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 80)

def word700_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_317 word700_0_318

def word700_0_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.var 40])

def word700_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_319 word700_0_320

def word700_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 40)

def word700_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_321 word700_0_322

def word700_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word700_0_325 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 38)) (some 699) ([44, 26, 64, 18, 54, 36, 74, 12]) (some (44, word700_0_324, 700, 39))

def word700_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_323 word700_0_325

def word700_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_326 word700_0_3

def word700_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def word700_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_327 word700_0_328

def word700_0_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 13#64)

def word700_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_329 word700_0_330

def word700_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_331 word700_0_330

def word700_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_332 word700_0_330

def word700_0_334 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 40)) (some 698) ([6, 44]) (some (6, word700_0_278, 700, 41))

def word700_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_333 word700_0_334

def word700_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_335 word700_0_3

def word700_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word700_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_336 word700_0_337

def word700_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_339 word700_0_3

def word700_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_340 word700_0_341

def word700_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_342 word700_0_201

def word700_0_344 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 32) word700_0_338 word700_0_343

def word700_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_249 word700_0_344

def word700_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_345 word700_0_3

def word700_0_347 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word700_0_346 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word700_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_246 word700_0_347

def word700_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_348 word700_0_3

def word700_0_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def word700_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_349 word700_0_350

def word700_0_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def word700_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_351 word700_0_352

def word700_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 416#64)

def word700_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_353 word700_0_354

def word700_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_355 word700_0_354

def word700_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word700_0_358 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 42)) (some 77) ([50, 32, 70]) (some (50, word700_0_357, 700, 43))

def word700_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_356 word700_0_358

def word700_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_359 word700_0_3

def word700_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_360 word700_0_361

def word700_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_362 word700_0_3

def word700_0_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def word700_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 13#64)

def word700_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_364 word700_0_365

def word700_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_367 word700_0_3

def word700_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_368 word700_0_369

def word700_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word700_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_370 word700_0_371

def word700_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word700_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_372 word700_0_373

def word700_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word700_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_374 word700_0_375

def word700_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word700_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_376 word700_0_377

def word700_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 50)

def word700_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_378 word700_0_379

def word700_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 32)

def word700_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_380 word700_0_381

def word700_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 70)

def word700_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_382 word700_0_383

def word700_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_384 word700_0_284

def word700_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word700_0_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 44)) (some 102) ([42, 80, 6, 44]) (some (42, word700_0_386, 700, 45))

def word700_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_385 word700_0_387

def word700_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_388 word700_0_3

def word700_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 60)

def word700_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_389 word700_0_390

def word700_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_391 word700_0_392

def word700_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_394 word700_0_3

def word700_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def word700_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_395 word700_0_396

def word700_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 48)

def word700_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_397 word700_0_398

def word700_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 72)

def word700_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_399 word700_0_400

def word700_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_401 word700_0_264

def word700_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_402 word700_0_266

def word700_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_403 word700_0_268

def word700_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def word700_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_404 word700_0_405

def word700_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def word700_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_406 word700_0_407

def word700_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.var 14])

def word700_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_408 word700_0_409

def word700_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word700_0_412 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 46)) (some 699) ([80, 6, 44, 26, 64, 18, 54, 36]) (some (80, word700_0_411, 700, 47))

def word700_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_410 word700_0_412

def word700_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_413 word700_0_3

def word700_0_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_415 word700_0_3

def word700_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_416 word700_0_417

def word700_0_419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 80 (Flapjack.WordRegImm.reg 6) word700_0_414 word700_0_418

def word700_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_393 word700_0_419

def word700_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_420 word700_0_3

def word700_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def word700_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_421 word700_0_422

def word700_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 42)

def word700_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_423 word700_0_424

def word700_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_425 word700_0_337

def word700_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_427 word700_0_3

def word700_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_428 word700_0_429

def word700_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_430 word700_0_201

def word700_0_432 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 32 (Flapjack.WordRegImm.reg 70) word700_0_426 word700_0_431

def word700_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_366 word700_0_432

def word700_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_433 word700_0_3

def word700_0_435 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word700_0_434 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word700_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_363 word700_0_435

def word700_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_436 word700_0_3

def word700_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def word700_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_437 word700_0_438

def word700_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 52)

def word700_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_439 word700_0_440

def word700_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 50)

def word700_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_441 word700_0_442

def word700_0_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 34)

def word700_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_443 word700_0_444

def word700_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 72)

def word700_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_445 word700_0_446

def word700_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 48)

def word700_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_447 word700_0_448

def word700_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def word700_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_449 word700_0_450

def word700_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_451 word700_0_337

def word700_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_452 word700_0_3

def word700_0_454 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word700_0_453 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word700_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_185 word700_0_454

def word700_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_455 word700_0_3

def word700_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_456 word700_0_139

def word700_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_457 word700_0_188

def word700_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_458 word700_0_188

def word700_0_460 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 48)) (some 698) ([78, 8]) (some (78, word700_0_144, 700, 49))

def word700_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_459 word700_0_460

def word700_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_461 word700_0_3

def word700_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 40)

def word700_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_462 word700_0_463

def word700_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_464 word700_0_85

def word700_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def word700_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_200 word700_0_466

def word700_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_467 word700_0_151

def word700_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_468 word700_0_151

def word700_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_469 word700_0_151

def word700_0_471 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 50)) (some 78) ([8, 46]) (some (8, word700_0_213, 700, 51))

def word700_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_470 word700_0_471

def word700_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_472 word700_0_3

def word700_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 62)

def word700_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_473 word700_0_474

def word700_0_476 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word700_0_0, 700, 52)) (some 70) ([8]) (some (8, word700_0_213, 700, 53))

def word700_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_475 word700_0_476

def word700_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_477 word700_0_3

def word700_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_478 word700_0_70

def word700_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [78]

def word700_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_479 word700_0_480

def word700_0_482 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 46) word700_0_481 word700_0_0

def word700_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_482 word700_0_204

def word700_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_465 word700_0_483

def word700_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_484 word700_0_3

def word700_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 52))

def word700_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_485 word700_0_486

def word700_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 8#64]))

def word700_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_487 word700_0_488

def word700_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 16#64]))

def word700_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_489 word700_0_490

def word700_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 24#64]))

def word700_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_491 word700_0_492

def word700_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 78)

def word700_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_493 word700_0_494

def word700_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_495 word700_0_234

def word700_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_496 word700_0_236

def word700_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_497 word700_0_238

def word700_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word700_0_500 : WordLangProgHOL (BitVec 64) :=
.call (some (([66, 20, 56, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 54)) (some 671) ([76, 14, 50, 32]) (some (76, word700_0_499, 700, 55))

def word700_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_498 word700_0_500

def word700_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_501 word700_0_3

def word700_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 0#64)

def word700_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_502 word700_0_503

def word700_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_504 word700_0_3

def word700_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 76)

def word700_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 12#64)

def word700_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_506 word700_0_507

def word700_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 72,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word700_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_253 word700_0_509

def word700_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 72,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word700_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_510 word700_0_511

def word700_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 72,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word700_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_512 word700_0_513

def word700_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 72,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word700_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_514 word700_0_515

def word700_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_516 word700_0_262

def word700_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_517 word700_0_264

def word700_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_518 word700_0_266

def word700_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_519 word700_0_268

def word700_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 66)

def word700_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_520 word700_0_521

def word700_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 20)

def word700_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_522 word700_0_523

def word700_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def word700_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_524 word700_0_525

def word700_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 38)

def word700_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_526 word700_0_527

def word700_0_529 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 60, 42, 80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_0_0, 700, 56)) (some 668) ([6, 44, 26, 64, 18, 54, 36, 74]) (some (6, word700_0_278, 700, 57))

def word700_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_528 word700_0_529

def word700_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_530 word700_0_3

def word700_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
        (Flapjack.WordLangExpHOL.const 5#64)])

def word700_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_531 word700_0_532

def word700_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_533 word700_0_284

def word700_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_534 word700_0_286

def word700_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_535 word700_0_288

def word700_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_536 word700_0_290

def word700_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_537 word700_0_292

def word700_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_538 word700_0_294

def word700_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_539 word700_0_296

def word700_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_540 word700_0_298

def word700_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_541 word700_0_300

def word700_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_542 word700_0_302

def word700_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_543 word700_0_304

def word700_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_544 word700_0_306

def word700_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 1#64])

def word700_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_545 word700_0_546

def word700_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 6)

def word700_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_547 word700_0_548

def word700_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_549 word700_0_337

def word700_0_551 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 32) word700_0_550 word700_0_343

def word700_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_508 word700_0_551

def word700_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_552 word700_0_3

def word700_0_554 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word700_0_553 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word700_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_505 word700_0_554

def word700_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_555 word700_0_3

def word700_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def word700_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_556 word700_0_557

def word700_0_559 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word700_0_0, 700, 58)) (some 70) ([50]) (some (50, word700_0_357, 700, 59))

def word700_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_558 word700_0_559

def word700_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_560 word700_0_3

def word700_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_561 word700_0_361

def word700_0_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def word700_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word700_0_562 word700_0_563

def pass700_0 : WordLangProgHOL (BitVec 64) :=
word700_0_564
end InitECandidate.Proofs.WordStages.Parallel700
