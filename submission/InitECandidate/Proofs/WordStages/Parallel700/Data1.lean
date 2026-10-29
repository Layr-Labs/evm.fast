import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel700
def word700_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word700_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word700_1_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 2)) (some 69) ([]) (some (16, word700_1_1, 700, 3))

def word700_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word700_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_2 word700_1_3

def word700_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 416#64)

def word700_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_4 word700_1_5

def word700_1_7 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_6 word700_1_5

def word700_1_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word700_1_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 4)) (some 68) ([52]) (some (52, word700_1_8, 700, 5))

def word700_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_7 word700_1_9

def word700_1_11 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_10 word700_1_3

def word700_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 416#64)

def word700_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_11 word700_1_12

def word700_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_13 word700_1_12

def word700_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word700_1_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 6)) (some 68) ([34]) (some (34, word700_1_15, 700, 7))

def word700_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_14 word700_1_16

def word700_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_17 word700_1_3

def word700_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 416#64)

def word700_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_18 word700_1_19

def word700_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_20 word700_1_19

def word700_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word700_1_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 8)) (some 68) ([72]) (some (72, word700_1_22, 700, 9))

def word700_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_21 word700_1_23

def word700_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_24 word700_1_3

def word700_1_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 416#64)

def word700_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_25 word700_1_26

def word700_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_27 word700_1_26

def word700_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word700_1_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 10)) (some 68) ([10]) (some (10, word700_1_29, 700, 11))

def word700_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_28 word700_1_30

def word700_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_31 word700_1_3

def word700_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 416#64)

def word700_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_32 word700_1_33

def word700_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_34 word700_1_33

def word700_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word700_1_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 12)) (some 68) ([48]) (some (48, word700_1_36, 700, 13))

def word700_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_35 word700_1_37

def word700_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_38 word700_1_3

def word700_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 416#64)

def word700_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_39 word700_1_40

def word700_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_41 word700_1_40

def word700_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word700_1_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 14)) (some 68) ([30]) (some (30, word700_1_43, 700, 15))

def word700_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_42 word700_1_44

def word700_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_45 word700_1_3

def word700_1_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 16)]

def word700_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_46 word700_1_47

def word700_1_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 416#64)

def word700_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_48 word700_1_49

def word700_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_50 word700_1_49

def word700_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word700_1_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 16)) (some 78) ([68, 22]) (some (68, word700_1_52, 700, 17))

def word700_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_51 word700_1_53

def word700_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_54 word700_1_3

def word700_1_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 16)]

def word700_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_55 word700_1_56

def word700_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 82#64)

def word700_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_57 word700_1_58

def word700_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def word700_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_59 word700_1_60

def word700_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 0#64)

def word700_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_61 word700_1_62

def word700_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def word700_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_63 word700_1_64

def word700_1_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 82#64)

def word700_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_65 word700_1_66

def word700_1_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 30)]

def word700_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 78 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_68 word700_1_69

def word700_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_67 word700_1_70

def word700_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 0#64)

def word700_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_71 word700_1_72

def word700_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 78 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_68 word700_1_74

def word700_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_73 word700_1_75

def word700_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_76 word700_1_72

def word700_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 78 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_68 word700_1_78

def word700_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_77 word700_1_79

def word700_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_80 word700_1_72

def word700_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 78 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_68 word700_1_82

def word700_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_81 word700_1_83

def word700_1_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 18#64)

def word700_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_84 word700_1_85

def word700_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_86 word700_1_72

def word700_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word700_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_87 word700_1_88

def word700_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 0#64)

def word700_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_89 word700_1_90

def word700_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_91 word700_1_90

def word700_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_92 word700_1_88

def word700_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_93 word700_1_72

def word700_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_94 word700_1_85

def word700_1_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word700_1_97 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 18)) (some 667) ([40, 78, 8, 46]) (some (40, word700_1_96, 700, 19))

def word700_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_95 word700_1_97

def word700_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_98 word700_1_3

def word700_1_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 16)]

def word700_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 81 (Flapjack.WordRegImm.imm 192#64)))

def word700_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_100 word700_1_101

def word700_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_99 word700_1_102

def word700_1_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 30)]

def word700_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_103 word700_1_104

def word700_1_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 68)]

def word700_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_105 word700_1_106

def word700_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 22)]

def word700_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_107 word700_1_108

def word700_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 58)]

def word700_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_109 word700_1_110

def word700_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 78)]

def word700_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_111 word700_1_112

def word700_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 40)]

def word700_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 66 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_114 word700_1_115

def word700_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_113 word700_1_116

def word700_1_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 8)]

def word700_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_117 word700_1_118

def word700_1_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 66 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_114 word700_1_120

def word700_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_119 word700_1_121

def word700_1_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 46)]

def word700_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_122 word700_1_123

def word700_1_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 66 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_114 word700_1_125

def word700_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_124 word700_1_126

def word700_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 28)]

def word700_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_127 word700_1_128

def word700_1_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 66 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_114 word700_1_130

def word700_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_129 word700_1_131

def word700_1_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 81 (Flapjack.WordRegImm.imm 384#64)))

def word700_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_100 word700_1_133

def word700_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_132 word700_1_134

def word700_1_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 1#64)

def word700_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_135 word700_1_136

def word700_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_137 word700_1_88

def word700_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_138 word700_1_90

def word700_1_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word700_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_139 word700_1_140

def word700_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 1#64)

def word700_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_141 word700_1_142

def word700_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_143 word700_1_116

def word700_1_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 0#64)

def word700_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_144 word700_1_145

def word700_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_146 word700_1_121

def word700_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_147 word700_1_145

def word700_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_148 word700_1_126

def word700_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_149 word700_1_145

def word700_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_150 word700_1_131

def word700_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 52)]

def word700_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_151 word700_1_152

def word700_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 416#64)

def word700_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_153 word700_1_154

def word700_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_155 word700_1_154

def word700_1_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word700_1_158 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 20)) (some 78) ([78, 8]) (some (78, word700_1_157, 700, 21))

def word700_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_156 word700_1_158

def word700_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_159 word700_1_3

def word700_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_160 word700_1_152

def word700_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 4)]

def word700_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_161 word700_1_162

def word700_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 384#64)

def word700_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_163 word700_1_164

def word700_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_165 word700_1_164

def word700_1_167 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 22)) (some 77) ([78, 8, 46]) (some (78, word700_1_157, 700, 23))

def word700_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_166 word700_1_167

def word700_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_168 word700_1_3

def word700_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 34)]

def word700_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_169 word700_1_170

def word700_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_171 word700_1_154

def word700_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_172 word700_1_154

def word700_1_174 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 24)) (some 78) ([78, 8]) (some (78, word700_1_157, 700, 25))

def word700_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_173 word700_1_174

def word700_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_175 word700_1_3

def word700_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 72)]

def word700_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_176 word700_1_177

def word700_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_178 word700_1_154

def word700_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_179 word700_1_154

def word700_1_181 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 26)) (some 78) ([78, 8]) (some (78, word700_1_157, 700, 27))

def word700_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_180 word700_1_181

def word700_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_182 word700_1_3

def word700_1_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 72)]

def word700_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_183 word700_1_184

def word700_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_185 word700_1_136

def word700_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_186 word700_1_88

def word700_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_187 word700_1_90

def word700_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_188 word700_1_140

def word700_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_189 word700_1_142

def word700_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_190 word700_1_116

def word700_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_191 word700_1_145

def word700_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_192 word700_1_121

def word700_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_193 word700_1_145

def word700_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_194 word700_1_126

def word700_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_195 word700_1_145

def word700_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_196 word700_1_131

def word700_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_197 word700_1_3

def word700_1_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def word700_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_199 word700_1_152

def word700_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13#64)

def word700_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_200 word700_1_201

def word700_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_202 word700_1_201

def word700_1_204 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 28)) (some 698) ([78, 8]) (some (78, word700_1_157, 700, 29))

def word700_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_203 word700_1_204

def word700_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_205 word700_1_3

def word700_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_206 word700_1_88

def word700_1_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 40)]

def word700_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_207 word700_1_208

def word700_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word700_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_210 word700_1_3

def word700_1_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word700_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_211 word700_1_212

def word700_1_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word700_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_213 word700_1_214

def word700_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_88 word700_1_3

def word700_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_216 word700_1_140

def word700_1_218 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 8 (Flapjack.WordRegImm.reg 46) word700_1_215 word700_1_217

def word700_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_209 word700_1_218

def word700_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_219 word700_1_3

def word700_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 16)]

def word700_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_220 word700_1_221

def word700_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 13#64)

def word700_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_222 word700_1_223

def word700_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_224 word700_1_223

def word700_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word700_1_227 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 30)) (some 698) ([8, 46]) (some (8, word700_1_226, 700, 31))

def word700_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_225 word700_1_227

def word700_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_228 word700_1_3

def word700_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 10)]

def word700_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_229 word700_1_230

def word700_1_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 416#64)

def word700_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_231 word700_1_232

def word700_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_233 word700_1_232

def word700_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word700_1_236 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 32)) (some 78) ([46, 28]) (some (46, word700_1_235, 700, 33))

def word700_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_234 word700_1_236

def word700_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_237 word700_1_3

def word700_1_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 81 81 (Flapjack.WordRegImm.imm 5#64)))

def word700_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_114 word700_1_239

def word700_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 52)]

def word700_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 81 81 (Flapjack.WordRegImm.reg 82)))

def word700_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_241 word700_1_242

def word700_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_240 word700_1_243

def word700_1_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_244 word700_1_245

def word700_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_238 word700_1_246

def word700_1_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 52)]

def word700_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 40)]

def word700_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 82 82 (Flapjack.WordRegImm.imm 5#64)))

def word700_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_249 word700_1_250

def word700_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_251 word700_1_242

def word700_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_248 word700_1_252

def word700_1_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 46 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_253 word700_1_254

def word700_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_247 word700_1_255

def word700_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_253 word700_1_257

def word700_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_256 word700_1_258

def word700_1_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_253 word700_1_260

def word700_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_259 word700_1_261

def word700_1_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 8)]

def word700_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_262 word700_1_263

def word700_1_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 46)]

def word700_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_264 word700_1_265

def word700_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 28)]

def word700_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_266 word700_1_267

def word700_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 66)]

def word700_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_268 word700_1_269

def word700_1_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word700_1_272 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 34)) (some 671) ([14, 50, 32, 70]) (some (14, word700_1_271, 700, 35))

def word700_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_270 word700_1_272

def word700_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_273 word700_1_3

def word700_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_274 word700_1_3

def word700_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 78)]

def word700_1_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 40)]

def word700_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_276 word700_1_277

def word700_1_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word700_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_279 word700_1_3

def word700_1_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 1#64)

def word700_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_280 word700_1_281

def word700_1_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 78)]

def word700_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_283 word700_1_239

def word700_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 16)]

def word700_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_285 word700_1_242

def word700_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_284 word700_1_286

def word700_1_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_287 word700_1_288

def word700_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_282 word700_1_289

def word700_1_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 78)]

def word700_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_291 word700_1_250

def word700_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_292 word700_1_242

def word700_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_100 word700_1_293

def word700_1_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_294 word700_1_295

def word700_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_290 word700_1_296

def word700_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_294 word700_1_298

def word700_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_297 word700_1_299

def word700_1_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_294 word700_1_301

def word700_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_300 word700_1_302

def word700_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 14)]

def word700_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_303 word700_1_304

def word700_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 50)]

def word700_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_305 word700_1_306

def word700_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 32)]

def word700_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_307 word700_1_308

def word700_1_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 70)]

def word700_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_309 word700_1_310

def word700_1_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 20)]

def word700_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_311 word700_1_312

def word700_1_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 56)]

def word700_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_313 word700_1_314

def word700_1_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 38)]

def word700_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_315 word700_1_316

def word700_1_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 76)]

def word700_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_317 word700_1_318

def word700_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word700_1_321 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 36)) (some 668) ([6, 44, 26, 64, 18, 54, 36, 74]) (some (6, word700_1_320, 700, 37))

def word700_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_319 word700_1_321

def word700_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_322 word700_1_3

def word700_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 81 81 (Flapjack.WordRegImm.reg 82)))

def word700_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_249 word700_1_324

def word700_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_283 word700_1_325

def word700_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_326 word700_1_239

def word700_1_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 10)]

def word700_1_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 81 (Flapjack.WordRegImm.reg 82)))

def word700_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_328 word700_1_329

def word700_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_327 word700_1_330

def word700_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_323 word700_1_331

def word700_1_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 24)]

def word700_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_332 word700_1_333

def word700_1_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 60)]

def word700_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_334 word700_1_335

def word700_1_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 42)]

def word700_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_336 word700_1_337

def word700_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 80)]

def word700_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_338 word700_1_339

def word700_1_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 44)]

def word700_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_340 word700_1_341

def word700_1_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 6)]

def word700_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_343 word700_1_344

def word700_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_342 word700_1_345

def word700_1_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 26)]

def word700_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_346 word700_1_347

def word700_1_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_343 word700_1_349

def word700_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_348 word700_1_350

def word700_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 64)]

def word700_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_351 word700_1_352

def word700_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_343 word700_1_354

def word700_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_353 word700_1_355

def word700_1_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 18)]

def word700_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_356 word700_1_357

def word700_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_343 word700_1_359

def word700_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_358 word700_1_360

def word700_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 16)]

def word700_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_361 word700_1_362

def word700_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 52)]

def word700_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_363 word700_1_364

def word700_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 24)]

def word700_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_365 word700_1_366

def word700_1_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 60)]

def word700_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_367 word700_1_368

def word700_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 42)]

def word700_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_369 word700_1_370

def word700_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 80)]

def word700_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_371 word700_1_372

def word700_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 74 81 (Flapjack.WordRegImm.reg 82)))

def word700_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_249 word700_1_374

def word700_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_283 word700_1_375

def word700_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_373 word700_1_376

def word700_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 40)]

def word700_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_377 word700_1_378

def word700_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word700_1_381 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 38)) (some 699) ([44, 26, 64, 18, 54, 36, 74, 12]) (some (44, word700_1_380, 700, 39))

def word700_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_379 word700_1_381

def word700_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_382 word700_1_3

def word700_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 16)]

def word700_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_383 word700_1_384

def word700_1_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 13#64)

def word700_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_385 word700_1_386

def word700_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_387 word700_1_386

def word700_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_388 word700_1_386

def word700_1_390 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 40)) (some 698) ([6, 44]) (some (6, word700_1_320, 700, 41))

def word700_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_389 word700_1_390

def word700_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_391 word700_1_3

def word700_1_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word700_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_392 word700_1_393

def word700_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word700_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_395 word700_1_3

def word700_1_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 0#64)

def word700_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_396 word700_1_397

def word700_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_398 word700_1_214

def word700_1_400 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 32) word700_1_394 word700_1_399

def word700_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_278 word700_1_400

def word700_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_401 word700_1_3

def word700_1_403 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word700_1_402 (Flapjack.Spt.bs
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

def word700_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_275 word700_1_403

def word700_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_404 word700_1_3

def word700_1_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 48)]

def word700_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_405 word700_1_406

def word700_1_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 34)]

def word700_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_407 word700_1_408

def word700_1_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 416#64)

def word700_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_409 word700_1_410

def word700_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_411 word700_1_410

def word700_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word700_1_414 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 42)) (some 77) ([50, 32, 70]) (some (50, word700_1_413, 700, 43))

def word700_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_412 word700_1_414

def word700_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_415 word700_1_3

def word700_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word700_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_416 word700_1_417

def word700_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_418 word700_1_3

def word700_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 14)]

def word700_1_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 13#64)

def word700_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_420 word700_1_421

def word700_1_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 1#64)

def word700_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_423 word700_1_3

def word700_1_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1#64)

def word700_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_424 word700_1_425

def word700_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 14)]

def word700_1_428 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_427 word700_1_239

def word700_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_328 word700_1_242

def word700_1_430 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_428 word700_1_429

def word700_1_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_430 word700_1_431

def word700_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_426 word700_1_432

def word700_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 10)]

def word700_1_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 14)]

def word700_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_435 word700_1_250

def word700_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_436 word700_1_242

def word700_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_434 word700_1_437

def word700_1_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_438 word700_1_439

def word700_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_433 word700_1_440

def word700_1_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_438 word700_1_442

def word700_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_441 word700_1_443

def word700_1_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_438 word700_1_445

def word700_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_444 word700_1_446

def word700_1_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 50)]

def word700_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_447 word700_1_448

def word700_1_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 32)]

def word700_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_449 word700_1_450

def word700_1_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 70)]

def word700_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_451 word700_1_452

def word700_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_453 word700_1_333

def word700_1_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word700_1_456 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 44)) (some 102) ([42, 80, 6, 44]) (some (42, word700_1_455, 700, 45))

def word700_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_454 word700_1_456

def word700_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_457 word700_1_3

def word700_1_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 60)]

def word700_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_458 word700_1_459

def word700_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word700_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_460 word700_1_461

def word700_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 80 1#64)

def word700_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_463 word700_1_3

def word700_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 1#64)

def word700_1_466 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_464 word700_1_465

def word700_1_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 48)]

def word700_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_466 word700_1_467

def word700_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 72)]

def word700_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_468 word700_1_469

def word700_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_470 word700_1_306

def word700_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_471 word700_1_308

def word700_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_472 word700_1_310

def word700_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 24)]

def word700_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_473 word700_1_474

def word700_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 14)]

def word700_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_475 word700_1_476

def word700_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 12#64)

def word700_1_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 36 81 (Flapjack.WordRegImm.reg 82)))

def word700_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_435 word700_1_479

def word700_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_478 word700_1_480

def word700_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_477 word700_1_481

def word700_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word700_1_484 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 46)) (some 699) ([80, 6, 44, 26, 64, 18, 54, 36]) (some (80, word700_1_483, 700, 47))

def word700_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_482 word700_1_484

def word700_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_485 word700_1_3

def word700_1_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 80 0#64)

def word700_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_487 word700_1_3

def word700_1_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 0#64)

def word700_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_488 word700_1_489

def word700_1_491 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 80 (Flapjack.WordRegImm.reg 6) word700_1_486 word700_1_490

def word700_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_462 word700_1_491

def word700_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_492 word700_1_3

def word700_1_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 81 (Flapjack.WordRegImm.imm 1#64)))

def word700_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_427 word700_1_494

def word700_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_493 word700_1_495

def word700_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 42)]

def word700_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_496 word700_1_497

def word700_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_498 word700_1_393

def word700_1_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word700_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_500 word700_1_3

def word700_1_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def word700_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_501 word700_1_502

def word700_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_503 word700_1_214

def word700_1_505 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 32 (Flapjack.WordRegImm.reg 70) word700_1_499 word700_1_504

def word700_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_422 word700_1_505

def word700_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_506 word700_1_3

def word700_1_508 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word700_1_507 (Flapjack.Spt.bs
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

def word700_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_419 word700_1_508

def word700_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_509 word700_1_3

def word700_1_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 16)]

def word700_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_510 word700_1_511

def word700_1_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 52)]

def word700_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_512 word700_1_513

def word700_1_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 50)]

def word700_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_514 word700_1_515

def word700_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 34)]

def word700_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_516 word700_1_517

def word700_1_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 72)]

def word700_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_518 word700_1_519

def word700_1_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 48)]

def word700_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_520 word700_1_521

def word700_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 50)]

def word700_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_522 word700_1_523

def word700_1_525 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_524 word700_1_393

def word700_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_525 word700_1_3

def word700_1_527 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word700_1_526 (Flapjack.Spt.bs
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

def word700_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_198 word700_1_527

def word700_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_528 word700_1_3

def word700_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_529 word700_1_152

def word700_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_530 word700_1_201

def word700_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_531 word700_1_201

def word700_1_533 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 48)) (some 698) ([78, 8]) (some (78, word700_1_157, 700, 49))

def word700_1_534 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_532 word700_1_533

def word700_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_534 word700_1_3

def word700_1_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 40)]

def word700_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_535 word700_1_536

def word700_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_537 word700_1_90

def word700_1_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2)]

def word700_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_213 word700_1_539

def word700_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_540 word700_1_164

def word700_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_541 word700_1_164

def word700_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_542 word700_1_164

def word700_1_544 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word700_1_0, 700, 50)) (some 78) ([8, 46]) (some (8, word700_1_226, 700, 51))

def word700_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_543 word700_1_544

def word700_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_545 word700_1_3

def word700_1_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 62)]

def word700_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_546 word700_1_547

def word700_1_549 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word700_1_0, 700, 52)) (some 70) ([8]) (some (8, word700_1_226, 700, 53))

def word700_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_548 word700_1_549

def word700_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_550 word700_1_3

def word700_1_552 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_551 word700_1_72

def word700_1_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [78]

def word700_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_552 word700_1_553

def word700_1_555 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 46) word700_1_554 word700_1_0

def word700_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_555 word700_1_217

def word700_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_538 word700_1_556

def word700_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_557 word700_1_3

def word700_1_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 78 (Flapjack.WordLangAddr.addr 81 0#64))

def word700_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_248 word700_1_559

def word700_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_558 word700_1_560

def word700_1_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 81 8#64))

def word700_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_248 word700_1_562

def word700_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_561 word700_1_563

def word700_1_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 46 (Flapjack.WordLangAddr.addr 81 16#64))

def word700_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_248 word700_1_565

def word700_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_564 word700_1_566

def word700_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 81 24#64))

def word700_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_248 word700_1_568

def word700_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_567 word700_1_569

def word700_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 78)]

def word700_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_570 word700_1_571

def word700_1_573 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_572 word700_1_263

def word700_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_573 word700_1_265

def word700_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_574 word700_1_267

def word700_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word700_1_577 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 54)) (some 671) ([76, 14, 50, 32]) (some (76, word700_1_576, 700, 55))

def word700_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_575 word700_1_577

def word700_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_578 word700_1_3

def word700_1_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 76 0#64)

def word700_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_579 word700_1_580

def word700_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_581 word700_1_3

def word700_1_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 76)]

def word700_1_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 12#64)

def word700_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_583 word700_1_584

def word700_1_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 76)]

def word700_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_586 word700_1_239

def word700_1_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 72)]

def word700_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_588 word700_1_242

def word700_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_587 word700_1_589

def word700_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_590 word700_1_288

def word700_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_282 word700_1_591

def word700_1_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 72)]

def word700_1_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 76)]

def word700_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_594 word700_1_250

def word700_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_595 word700_1_242

def word700_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_593 word700_1_596

def word700_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_597 word700_1_295

def word700_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_592 word700_1_598

def word700_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_597 word700_1_298

def word700_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_599 word700_1_600

def word700_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_597 word700_1_301

def word700_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_601 word700_1_602

def word700_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_603 word700_1_304

def word700_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_604 word700_1_306

def word700_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_605 word700_1_308

def word700_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_606 word700_1_310

def word700_1_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 66)]

def word700_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_607 word700_1_608

def word700_1_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 20)]

def word700_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_609 word700_1_610

def word700_1_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 56)]

def word700_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_611 word700_1_612

def word700_1_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 38)]

def word700_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_613 word700_1_614

def word700_1_616 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word700_1_0, 700, 56)) (some 668) ([6, 44, 26, 64, 18, 54, 36, 74]) (some (6, word700_1_320, 700, 57))

def word700_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_615 word700_1_616

def word700_1_618 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_617 word700_1_3

def word700_1_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 2)]

def word700_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_619 word700_1_329

def word700_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_587 word700_1_620

def word700_1_622 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_618 word700_1_621

def word700_1_623 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_622 word700_1_333

def word700_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_623 word700_1_335

def word700_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_624 word700_1_337

def word700_1_626 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_625 word700_1_339

def word700_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_626 word700_1_341

def word700_1_628 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_627 word700_1_345

def word700_1_629 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_628 word700_1_347

def word700_1_630 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_629 word700_1_350

def word700_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_630 word700_1_352

def word700_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_631 word700_1_355

def word700_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_632 word700_1_357

def word700_1_634 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_633 word700_1_360

def word700_1_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 81 (Flapjack.WordRegImm.imm 1#64)))

def word700_1_636 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_586 word700_1_635

def word700_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_634 word700_1_636

def word700_1_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 6)]

def word700_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_637 word700_1_638

def word700_1_640 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_639 word700_1_393

def word700_1_641 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 32) word700_1_640 word700_1_399

def word700_1_642 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_585 word700_1_641

def word700_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_642 word700_1_3

def word700_1_644 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word700_1_643 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word700_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_582 word700_1_644

def word700_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_645 word700_1_3

def word700_1_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 62)]

def word700_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_646 word700_1_647

def word700_1_649 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word700_1_0, 700, 58)) (some 70) ([50]) (some (50, word700_1_413, 700, 59))

def word700_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_648 word700_1_649

def word700_1_651 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_650 word700_1_3

def word700_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_651 word700_1_417

def word700_1_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def word700_1_654 : WordLangProgHOL (BitVec 64) :=
.seq word700_1_652 word700_1_653

def pass700_1 : WordLangProgHOL (BitVec 64) :=
word700_1_654
end InitECandidate.Proofs.WordStages.Parallel700
