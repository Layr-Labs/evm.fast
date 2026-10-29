import InitECandidate.Proofs.WordStages.Source866
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel866
def word866_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def word866_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 0#64]))

def word866_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_0 word866_0_1

def word866_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 248#64)

def word866_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_2 word866_0_3

def word866_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_4 word866_0_3

def word866_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word866_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word866_0_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 2)) (some 68) ([72]) (some (72, word866_0_7, 866, 3))

def word866_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_5 word866_0_8

def word866_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word866_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_9 word866_0_10

def word866_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 18)

def word866_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_11 word866_0_12

def word866_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 248#64)

def word866_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_13 word866_0_14

def word866_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_15 word866_0_14

def word866_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word866_0_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 4)) (some 78) ([46, 100]) (some (46, word866_0_17, 866, 5))

def word866_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_16 word866_0_18

def word866_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_19 word866_0_10

def word866_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64])

def word866_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_20 word866_0_21

def word866_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_22 word866_0_23

def word866_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_24 word866_0_25

def word866_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 72) 100

def word866_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_26 word866_0_27

def word866_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def word866_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_28 word866_0_29

def word866_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 0#64])

def word866_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_30 word866_0_31

def word866_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 46)

def word866_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_32 word866_0_33

def word866_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_34 word866_0_27

def word866_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 32#64)

def word866_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_35 word866_0_36

def word866_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_37 word866_0_36

def word866_0_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 6)) (some 68) ([46]) (some (46, word866_0_17, 866, 7))

def word866_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_38 word866_0_39

def word866_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_40 word866_0_10

def word866_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.const 8#64)

def word866_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_41 word866_0_42

def word866_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_43 word866_0_42

def word866_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 100

def word866_0_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 8)) (some 68) ([100]) (some (100, word866_0_45, 866, 9))

def word866_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_44 word866_0_46

def word866_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_47 word866_0_10

def word866_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_48 word866_0_33

def word866_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 192#64)

def word866_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_49 word866_0_50

def word866_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 100 0#64))

def word866_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_51 word866_0_52

def word866_0_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 46)

def word866_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_53 word866_0_54

def word866_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_55 word866_0_56

def word866_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word866_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_57 word866_0_58

def word866_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_59 word866_0_56

def word866_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word866_0_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 10)) (some 158) ([10, 66, 40]) (some (10, word866_0_61, 866, 11))

def word866_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_60 word866_0_62

def word866_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_63 word866_0_10

def word866_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64])

def word866_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_64 word866_0_65

def word866_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 72)

def word866_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_66 word866_0_67

def word866_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 10)

def word866_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_68 word866_0_69

def word866_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 100) 66

def word866_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_70 word866_0_71

def word866_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64])

def word866_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_72 word866_0_73

def word866_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 32#64])

def word866_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_74 word866_0_75

def word866_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_76 word866_0_69

def word866_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_77 word866_0_71

def word866_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64])

def word866_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_78 word866_0_79

def word866_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 52#64])

def word866_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_80 word866_0_81

def word866_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_82 word866_0_69

def word866_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_83 word866_0_71

def word866_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def word866_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_84 word866_0_85

def word866_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_86 word866_0_85

def word866_0_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 12)) (some 68) ([10]) (some (10, word866_0_61, 866, 13))

def word866_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_87 word866_0_88

def word866_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_89 word866_0_10

def word866_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64])

def word866_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_90 word866_0_91

def word866_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 100)

def word866_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_92 word866_0_93

def word866_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 66)

def word866_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_94 word866_0_95

def word866_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 40

def word866_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_96 word866_0_97

def word866_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64])

def word866_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_98 word866_0_99

def word866_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 84#64])

def word866_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_100 word866_0_101

def word866_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_102 word866_0_95

def word866_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_103 word866_0_97

def word866_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 56#64])

def word866_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_104 word866_0_105

def word866_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 116#64])

def word866_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_106 word866_0_107

def word866_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_108 word866_0_95

def word866_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_109 word866_0_97

def word866_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 64#64])

def word866_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_110 word866_0_111

def word866_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_112 word866_0_113

def word866_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_114 word866_0_115

def word866_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_116 word866_0_117

def word866_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_118 word866_0_119

def word866_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_120 word866_0_121

def word866_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 80

def word866_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_122 word866_0_123

def word866_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_124 word866_0_121

def word866_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])
  80

def word866_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_125 word866_0_126

def word866_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_127 word866_0_121

def word866_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64])
  80

def word866_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_128 word866_0_129

def word866_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_130 word866_0_121

def word866_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64])
  80

def word866_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_131 word866_0_132

def word866_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 96#64])

def word866_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_133 word866_0_134

def word866_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 80#64]))

def word866_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_135 word866_0_136

def word866_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_137 word866_0_95

def word866_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_138 word866_0_97

def word866_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 104#64])

def word866_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_139 word866_0_140

def word866_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 88#64]))

def word866_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_141 word866_0_142

def word866_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_143 word866_0_95

def word866_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_144 word866_0_97

def word866_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 112#64])

def word866_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_145 word866_0_146

def word866_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 96#64]))

def word866_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_147 word866_0_148

def word866_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_149 word866_0_95

def word866_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_150 word866_0_97

def word866_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 120#64])

def word866_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_151 word866_0_152

def word866_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 104#64]))

def word866_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_153 word866_0_154

def word866_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_155 word866_0_95

def word866_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_156 word866_0_97

def word866_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 128#64])

def word866_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_157 word866_0_158

def word866_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64]))

def word866_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_159 word866_0_160

def word866_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_161 word866_0_95

def word866_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_162 word866_0_97

def word866_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 136#64])

def word866_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_163 word866_0_164

def word866_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 24#64]))

def word866_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_165 word866_0_166

def word866_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_167 word866_0_95

def word866_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_168 word866_0_97

def word866_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 144#64])

def word866_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_169 word866_0_170

def word866_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 372#64])

def word866_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_171 word866_0_172

def word866_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_173 word866_0_95

def word866_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_174 word866_0_97

def word866_0_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 8#64)

def word866_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_175 word866_0_176

def word866_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_177 word866_0_176

def word866_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word866_0_180 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 14)) (some 68) ([66]) (some (66, word866_0_179, 866, 15))

def word866_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_178 word866_0_180

def word866_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_181 word866_0_10

def word866_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def word866_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_182 word866_0_183

def word866_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 8#64)

def word866_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_184 word866_0_185

def word866_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_186 word866_0_185

def word866_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word866_0_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 16)) (some 78) ([40, 94]) (some (40, word866_0_188, 866, 17))

def word866_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_187 word866_0_189

def word866_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_190 word866_0_10

def word866_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 152#64])

def word866_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_191 word866_0_192

def word866_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_193 word866_0_183

def word866_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 40)

def word866_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_194 word866_0_195

def word866_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 66) 94

def word866_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_196 word866_0_197

def word866_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64])

def word866_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_198 word866_0_199

def word866_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 66 (Flapjack.WordLangAddr.addr 66 0#64))

def word866_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_200 word866_0_201

def word866_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 1#64])

def word866_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_202 word866_0_203

def word866_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def word866_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_204 word866_0_205

def word866_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 2#64])

def word866_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_206 word866_0_207

def word866_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 94 (Flapjack.WordLangAddr.addr 94 0#64))

def word866_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_208 word866_0_209

def word866_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 3#64])

def word866_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_210 word866_0_211

def word866_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def word866_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_212 word866_0_213

def word866_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 4#64])

def word866_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_214 word866_0_215

def word866_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 80 (Flapjack.WordLangAddr.addr 80 0#64))

def word866_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_216 word866_0_217

def word866_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def word866_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_218 word866_0_219

def word866_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def word866_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_220 word866_0_221

def word866_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def word866_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_222 word866_0_223

def word866_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 108 (Flapjack.WordLangAddr.addr 108 0#64))

def word866_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_224 word866_0_225

def word866_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def word866_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_226 word866_0_227

def word866_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def word866_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_228 word866_0_229

def word866_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 94)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 80,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def word866_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_230 word866_0_231

def word866_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64])

def word866_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_232 word866_0_233

def word866_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 36 (Flapjack.WordLangAddr.addr 36 0#64))

def word866_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_234 word866_0_235

def word866_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 1#64])

def word866_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_236 word866_0_237

def word866_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 90 (Flapjack.WordLangAddr.addr 90 0#64))

def word866_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_238 word866_0_239

def word866_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 2#64])

def word866_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_240 word866_0_241

def word866_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def word866_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_242 word866_0_243

def word866_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 3#64])

def word866_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_244 word866_0_245

def word866_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 76 (Flapjack.WordLangAddr.addr 76 0#64))

def word866_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_246 word866_0_247

def word866_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 4#64])

def word866_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_248 word866_0_249

def word866_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 50 (Flapjack.WordLangAddr.addr 50 0#64))

def word866_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_250 word866_0_251

def word866_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word866_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_252 word866_0_253

def word866_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 104 (Flapjack.WordLangAddr.addr 104 0#64))

def word866_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_254 word866_0_255

def word866_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word866_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_256 word866_0_257

def word866_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word866_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_258 word866_0_259

def word866_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word866_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_260 word866_0_261

def word866_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 70 (Flapjack.WordLangAddr.addr 70 0#64))

def word866_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_262 word866_0_263

def word866_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 90)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 50,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 104)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def word866_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_264 word866_0_265

def word866_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64])

def word866_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_266 word866_0_267

def word866_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 98 (Flapjack.WordLangAddr.addr 98 0#64))

def word866_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_268 word866_0_269

def word866_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 1#64])

def word866_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_270 word866_0_271

def word866_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def word866_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_272 word866_0_273

def word866_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 2#64])

def word866_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_274 word866_0_275

def word866_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 84 (Flapjack.WordLangAddr.addr 84 0#64))

def word866_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_276 word866_0_277

def word866_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 3#64])

def word866_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_278 word866_0_279

def word866_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 58 (Flapjack.WordLangAddr.addr 58 0#64))

def word866_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_280 word866_0_281

def word866_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 4#64])

def word866_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_282 word866_0_283

def word866_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 112 (Flapjack.WordLangAddr.addr 112 0#64))

def word866_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_284 word866_0_285

def word866_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word866_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_286 word866_0_287

def word866_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def word866_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_288 word866_0_289

def word866_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word866_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_290 word866_0_291

def word866_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 60 (Flapjack.WordLangAddr.addr 60 0#64))

def word866_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_292 word866_0_293

def word866_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 16#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word866_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_294 word866_0_295

def word866_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def word866_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_296 word866_0_297

def word866_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 98,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 112,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def word866_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_298 word866_0_299

def word866_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64])

def word866_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_300 word866_0_301

def word866_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def word866_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_302 word866_0_303

def word866_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 1#64])

def word866_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_304 word866_0_305

def word866_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 74 (Flapjack.WordLangAddr.addr 74 0#64))

def word866_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_306 word866_0_307

def word866_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 2#64])

def word866_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_308 word866_0_309

def word866_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 48 (Flapjack.WordLangAddr.addr 48 0#64))

def word866_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_310 word866_0_311

def word866_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 3#64])

def word866_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_312 word866_0_313

def word866_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 102 (Flapjack.WordLangAddr.addr 102 0#64))

def word866_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_314 word866_0_315

def word866_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 4#64])

def word866_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_316 word866_0_317

def word866_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def word866_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_318 word866_0_319

def word866_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word866_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_320 word866_0_321

def word866_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def word866_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_322 word866_0_323

def word866_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word866_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_324 word866_0_325

def word866_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def word866_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_326 word866_0_327

def word866_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 86, Flapjack.WordLangExpHOL.const 440#64, Flapjack.WordLangExpHOL.const 24#64,
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word866_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_328 word866_0_329

def word866_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 96 (Flapjack.WordLangAddr.addr 96 0#64))

def word866_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_330 word866_0_331

def word866_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 102)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 12,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 42)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 96)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def word866_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_332 word866_0_333

def word866_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 160#64])

def word866_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_334 word866_0_335

def word866_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 62)

def word866_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_336 word866_0_337

def word866_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 44)

def word866_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_338 word866_0_339

def word866_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 88)

def word866_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_340 word866_0_341

def word866_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 28)

def word866_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_342 word866_0_343

def word866_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 56)

def word866_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_344 word866_0_345

def word866_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 82) 38

def word866_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_346 word866_0_347

def word866_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 110)

def word866_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_348 word866_0_349

def word866_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.const 8#64])
  38

def word866_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_350 word866_0_351

def word866_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def word866_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_352 word866_0_353

def word866_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.const 16#64])
  38

def word866_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_354 word866_0_355

def word866_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 64)

def word866_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_356 word866_0_357

def word866_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.const 24#64])
  38

def word866_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_358 word866_0_359

def word866_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 32#64)

def word866_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_360 word866_0_361

def word866_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_362 word866_0_361

def word866_0_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word866_0_365 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 18)) (some 68) ([56]) (some (56, word866_0_364, 866, 19))

def word866_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_363 word866_0_365

def word866_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_366 word866_0_10

def word866_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 192#64])

def word866_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_367 word866_0_368

def word866_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 82)

def word866_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_369 word866_0_370

def word866_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 110)

def word866_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_371 word866_0_372

def word866_0_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 8

def word866_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_373 word866_0_374

def word866_0_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 200#64])

def word866_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_375 word866_0_376

def word866_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 112#64]))

def word866_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_377 word866_0_378

def word866_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_379 word866_0_372

def word866_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_380 word866_0_374

def word866_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 208#64])

def word866_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_381 word866_0_382

def word866_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 120#64]))

def word866_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_383 word866_0_384

def word866_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_385 word866_0_372

def word866_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_386 word866_0_374

def word866_0_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 216#64])

def word866_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_387 word866_0_388

def word866_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def word866_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_389 word866_0_390

def word866_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_391 word866_0_372

def word866_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_392 word866_0_374

def word866_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 32#64)

def word866_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_393 word866_0_394

def word866_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_395 word866_0_394

def word866_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 110

def word866_0_398 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 20)) (some 68) ([110]) (some (110, word866_0_397, 866, 21))

def word866_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_396 word866_0_398

def word866_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_399 word866_0_10

def word866_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 224#64])

def word866_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_400 word866_0_401

def word866_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 56)

def word866_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_402 word866_0_403

def word866_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 8)

def word866_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_404 word866_0_405

def word866_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 110) 64

def word866_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_406 word866_0_407

def word866_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def word866_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_408 word866_0_409

def word866_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_410 word866_0_409

def word866_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word866_0_413 : WordLangProgHOL (BitVec 64) :=
.call (some (([110]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 22)) (some 68) ([8]) (some (8, word866_0_412, 866, 23))

def word866_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_411 word866_0_413

def word866_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_414 word866_0_10

def word866_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 232#64])

def word866_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_415 word866_0_416

def word866_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 110)

def word866_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_417 word866_0_418

def word866_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_419 word866_0_357

def word866_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 38

def word866_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_420 word866_0_421

def word866_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 240#64])

def word866_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_422 word866_0_423

def word866_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 128#64]))

def word866_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_424 word866_0_425

def word866_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_426 word866_0_357

def word866_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_427 word866_0_421

def word866_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 18)

def word866_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_428 word866_0_429

def word866_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def word866_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_430 word866_0_431

def word866_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word866_0_434 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 24)) (some 865) ([64, 38]) (some (64, word866_0_433, 866, 25))

def word866_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_432 word866_0_434

def word866_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_435 word866_0_10

def word866_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 8388608#64)

def word866_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_436 word866_0_437

def word866_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 8)

def word866_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_438 word866_0_439

def word866_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_441 word866_0_10

def word866_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_442 word866_0_443

def word866_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 7#64)

def word866_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_444 word866_0_445

def word866_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 64)

def word866_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_446 word866_0_447

def word866_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 4#64)

def word866_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_448 word866_0_449

def word866_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_450 word866_0_433

def word866_0_452 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 38 (Flapjack.WordRegImm.reg 92) word866_0_451 word866_0_6

def word866_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_453 word866_0_10

def word866_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_454 word866_0_455

def word866_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_452 word866_0_456

def word866_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_440 word866_0_457

def word866_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_458 word866_0_10

def word866_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 32#64]))

def word866_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_459 word866_0_460

def word866_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 40#64]))

def word866_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_461 word866_0_462

def word866_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 100)

def word866_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_463 word866_0_464

def word866_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word866_0_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 26)) (some 334) ([38, 92, 24]) (some (38, word866_0_466, 866, 27))

def word866_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_465 word866_0_467

def word866_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_468 word866_0_10

def word866_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 56#64]))

def word866_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_469 word866_0_470

def word866_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 64)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 16#64])

def word866_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_471 word866_0_472

def word866_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word866_0_475 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 28)) (some 68) ([92]) (some (92, word866_0_474, 866, 29))

def word866_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_473 word866_0_475

def word866_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_476 word866_0_10

def word866_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 736#64])

def word866_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_477 word866_0_478

def word866_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def word866_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_479 word866_0_480

def word866_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 24)

def word866_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_481 word866_0_482

def word866_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 92) 78

def word866_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_483 word866_0_484

def word866_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_485 word866_0_453

def word866_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_486 word866_0_10

def word866_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 64)

def word866_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_480 word866_0_488

def word866_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_443 word866_0_10

def word866_0_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def word866_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_490 word866_0_491

def word866_0_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 38)

def word866_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_492 word866_0_493

def word866_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 44#64)

def word866_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_494 word866_0_495

def word866_0_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 106 106 78 52))

def word866_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_496 word866_0_497

def word866_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.var 106])

def word866_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_498 word866_0_499

def word866_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word866_0_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([92, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 30)) (some 857) ([16]) (some (78, word866_0_501, 866, 31))

def word866_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_500 word866_0_502

def word866_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_503 word866_0_10

def word866_0_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 736#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.const 4#64)])

def word866_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_504 word866_0_505

def word866_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 92)

def word866_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_506 word866_0_507

def word866_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 52)

def word866_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_508 word866_0_509

def word866_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 78) 106

def word866_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_510 word866_0_511

def word866_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 736#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def word866_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_512 word866_0_513

def word866_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 24)

def word866_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_514 word866_0_515

def word866_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_516 word866_0_509

def word866_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_517 word866_0_511

def word866_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1#64])

def word866_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_518 word866_0_519

def word866_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 78)

def word866_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_520 word866_0_521

def word866_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word866_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_522 word866_0_523

def word866_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_455 word866_0_10

def word866_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def word866_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_525 word866_0_526

def word866_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word866_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_527 word866_0_528

def word866_0_530 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 78) word866_0_524 word866_0_529

def word866_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_489 word866_0_530

def word866_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_531 word866_0_10

def word866_0_533 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) word866_0_532 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def word866_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_487 word866_0_533

def word866_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_534 word866_0_10

def word866_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 736#64]))

def word866_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_535 word866_0_536

def word866_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_537 word866_0_488

def word866_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 82)

def word866_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_538 word866_0_539

def word866_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word866_0_542 : WordLangProgHOL (BitVec 64) :=
.call (some (([92]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 32)) (some 334) ([24, 78, 52]) (some (24, word866_0_541, 866, 33))

def word866_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_540 word866_0_542

def word866_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_543 word866_0_10

def word866_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def word866_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_544 word866_0_545

def word866_0_547 : WordLangProgHOL (BitVec 64) :=
.call (some (([92, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 34)) (some 858) ([78]) (some (78, word866_0_501, 866, 35))

def word866_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_546 word866_0_547

def word866_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_548 word866_0_10

def word866_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_549 word866_0_507

def word866_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 24)

def word866_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_550 word866_0_551

def word866_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 56)

def word866_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_552 word866_0_553

def word866_0_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word866_0_556 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 36)) (some 859) ([52, 106, 16]) (some (52, word866_0_555, 866, 37))

def word866_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_554 word866_0_556

def word866_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_557 word866_0_10

def word866_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 64#64]))

def word866_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_558 word866_0_559

def word866_0_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 72#64]))

def word866_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_560 word866_0_561

def word866_0_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 110)

def word866_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_562 word866_0_563

def word866_0_565 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_0_6, 866, 38)) (some 158) ([52, 106, 16]) (some (52, word866_0_555, 866, 39))

def word866_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_564 word866_0_565

def word866_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_566 word866_0_10

def word866_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 18)

def word866_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_567 word866_0_568

def word866_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [78]

def word866_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word866_0_569 word866_0_570

def pass866_0 : WordLangProgHOL (BitVec 64) :=
word866_0_571
end InitECandidate.Proofs.WordStages.Parallel866
