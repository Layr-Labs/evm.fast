import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass866_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word866_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 2)]

def word866_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_0 word866_1_1

def word866_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 32)]

def word866_1_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 86 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_5 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_4

def word866_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_2 word866_1_5

def word866_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 72 248#64)

def word866_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_6 word866_1_7

def word866_1_9 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_8 word866_1_7

def word866_1_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word866_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word866_1_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 2)) (some 68) ([72]) (some (72, word866_1_11, 866, 3))

def word866_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_9 word866_1_12

def word866_1_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word866_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_13 word866_1_14

def word866_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 18)]

def word866_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_15 word866_1_16

def word866_1_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 248#64)

def word866_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_17 word866_1_18

def word866_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_19 word866_1_18

def word866_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word866_1_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 4)) (some 78) ([46, 100]) (some (46, word866_1_21, 866, 5))

def word866_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_20 word866_1_22

def word866_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_23 word866_1_14

def word866_1_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 18)]

def word866_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_24 word866_1_25

def word866_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 1#64)

def word866_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_26 word866_1_27

def word866_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 1#64)

def word866_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_28 word866_1_29

def word866_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 72)]

def word866_1_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 100 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_33 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_31 word866_1_32

def word866_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_30 word866_1_33

def word866_1_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 18)]

def word866_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 72 113 (Flapjack.WordRegImm.imm 8#64)))

def word866_1_37 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_36

def word866_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_34 word866_1_37

def word866_1_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 86)]

def word866_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_38 word866_1_39

def word866_1_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(100, 46)]

def word866_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_40 word866_1_41

def word866_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_42 word866_1_33

def word866_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 32#64)

def word866_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_43 word866_1_44

def word866_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_45 word866_1_44

def word866_1_47 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 6)) (some 68) ([46]) (some (46, word866_1_21, 866, 7))

def word866_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_46 word866_1_47

def word866_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_48 word866_1_14

def word866_1_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 100 8#64)

def word866_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_49 word866_1_50

def word866_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_51 word866_1_50

def word866_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 100

def word866_1_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 8)) (some 68) ([100]) (some (100, word866_1_53, 866, 9))

def word866_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_52 word866_1_54

def word866_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_55 word866_1_14

def word866_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_56 word866_1_41

def word866_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 192#64)

def word866_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_57 word866_1_58

def word866_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 100 0#64))

def word866_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_59 word866_1_60

def word866_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 46)]

def word866_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_61 word866_1_62

def word866_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 1#64)

def word866_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_63 word866_1_64

def word866_1_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 72)]

def word866_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_65 word866_1_66

def word866_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_67 word866_1_64

def word866_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word866_1_70 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 10)) (some 158) ([10, 66, 40]) (some (10, word866_1_69, 866, 11))

def word866_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_68 word866_1_70

def word866_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_71 word866_1_14

def word866_1_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 100 113 (Flapjack.WordRegImm.imm 16#64)))

def word866_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_73

def word866_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_72 word866_1_74

def word866_1_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 72)]

def word866_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_75 word866_1_76

def word866_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 10)]

def word866_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_77 word866_1_78

def word866_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 100)]

def word866_1_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 66 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_80 word866_1_81

def word866_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_79 word866_1_82

def word866_1_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 100 113 (Flapjack.WordRegImm.imm 24#64)))

def word866_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_84

def word866_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_83 word866_1_85

def word866_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 86)]

def word866_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 32#64)))

def word866_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_88

def word866_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_86 word866_1_89

def word866_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_90 word866_1_78

def word866_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_91 word866_1_82

def word866_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 100 113 (Flapjack.WordRegImm.imm 32#64)))

def word866_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_93

def word866_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_92 word866_1_94

def word866_1_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 52#64)))

def word866_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_96

def word866_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_95 word866_1_97

def word866_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_98 word866_1_78

def word866_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_99 word866_1_82

def word866_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 32#64)

def word866_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_100 word866_1_101

def word866_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_102 word866_1_101

def word866_1_104 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 12)) (some 68) ([10]) (some (10, word866_1_69, 866, 13))

def word866_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_103 word866_1_104

def word866_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_105 word866_1_14

def word866_1_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 40#64)))

def word866_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_107

def word866_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_106 word866_1_108

def word866_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 100)]

def word866_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_109 word866_1_110

def word866_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 66)]

def word866_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_111 word866_1_112

def word866_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 10)]

def word866_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_114 word866_1_115

def word866_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_113 word866_1_116

def word866_1_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 48#64)))

def word866_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_118

def word866_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_117 word866_1_119

def word866_1_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 113 (Flapjack.WordRegImm.imm 84#64)))

def word866_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_121

def word866_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_120 word866_1_122

def word866_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_123 word866_1_112

def word866_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_124 word866_1_116

def word866_1_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 56#64)))

def word866_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_126

def word866_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_125 word866_1_127

def word866_1_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 113 (Flapjack.WordRegImm.imm 116#64)))

def word866_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_129

def word866_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_128 word866_1_130

def word866_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_131 word866_1_112

def word866_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_132 word866_1_116

def word866_1_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 64#64)))

def word866_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_134

def word866_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_133 word866_1_135

def word866_1_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 0#64)

def word866_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_136 word866_1_137

def word866_1_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def word866_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_138 word866_1_139

def word866_1_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 0#64)

def word866_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_140 word866_1_141

def word866_1_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def word866_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_142 word866_1_143

def word866_1_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 80 0#64)

def word866_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_144 word866_1_145

def word866_1_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 80 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_114 word866_1_147

def word866_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_146 word866_1_148

def word866_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_149 word866_1_145

def word866_1_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 80 (Flapjack.WordLangAddr.addr 113 8#64))

def word866_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_114 word866_1_151

def word866_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_150 word866_1_152

def word866_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_153 word866_1_145

def word866_1_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 80 (Flapjack.WordLangAddr.addr 113 16#64))

def word866_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_114 word866_1_155

def word866_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_154 word866_1_156

def word866_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_157 word866_1_145

def word866_1_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 80 (Flapjack.WordLangAddr.addr 113 24#64))

def word866_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_114 word866_1_159

def word866_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_158 word866_1_160

def word866_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 96#64)))

def word866_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_162

def word866_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_161 word866_1_163

def word866_1_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 80#64))

def word866_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_165

def word866_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_164 word866_1_166

def word866_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_167 word866_1_112

def word866_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_168 word866_1_116

def word866_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 104#64)))

def word866_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_170

def word866_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_169 word866_1_171

def word866_1_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 88#64))

def word866_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_173

def word866_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_172 word866_1_174

def word866_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_175 word866_1_112

def word866_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_176 word866_1_116

def word866_1_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 112#64)))

def word866_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_178

def word866_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_177 word866_1_179

def word866_1_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 96#64))

def word866_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_181

def word866_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_180 word866_1_182

def word866_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_183 word866_1_112

def word866_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_184 word866_1_116

def word866_1_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 120#64)))

def word866_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_186

def word866_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_185 word866_1_187

def word866_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 104#64))

def word866_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_189

def word866_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_188 word866_1_190

def word866_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_191 word866_1_112

def word866_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_192 word866_1_116

def word866_1_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 128#64)))

def word866_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_194

def word866_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_193 word866_1_195

def word866_1_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 16#64))

def word866_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_197

def word866_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_196 word866_1_198

def word866_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_199 word866_1_112

def word866_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_200 word866_1_116

def word866_1_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 136#64)))

def word866_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_202

def word866_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_201 word866_1_203

def word866_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 66 (Flapjack.WordLangAddr.addr 113 24#64))

def word866_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_205

def word866_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_204 word866_1_206

def word866_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_207 word866_1_112

def word866_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_208 word866_1_116

def word866_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 113 (Flapjack.WordRegImm.imm 144#64)))

def word866_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_210

def word866_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_209 word866_1_211

def word866_1_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 113 (Flapjack.WordRegImm.imm 372#64)))

def word866_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_213

def word866_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_212 word866_1_214

def word866_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_215 word866_1_112

def word866_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_216 word866_1_116

def word866_1_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 8#64)

def word866_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_217 word866_1_218

def word866_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_219 word866_1_218

def word866_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word866_1_222 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 14)) (some 68) ([66]) (some (66, word866_1_221, 866, 15))

def word866_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_220 word866_1_222

def word866_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_223 word866_1_14

def word866_1_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 10)]

def word866_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_224 word866_1_225

def word866_1_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 94 8#64)

def word866_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_226 word866_1_227

def word866_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_228 word866_1_227

def word866_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word866_1_231 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 16)) (some 78) ([40, 94]) (some (40, word866_1_230, 866, 17))

def word866_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_229 word866_1_231

def word866_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_232 word866_1_14

def word866_1_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 113 (Flapjack.WordRegImm.imm 152#64)))

def word866_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_234

def word866_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_233 word866_1_235

def word866_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_236 word866_1_225

def word866_1_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(94, 40)]

def word866_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_237 word866_1_238

def word866_1_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 66)]

def word866_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 94 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_240 word866_1_241

def word866_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_239 word866_1_242

def word866_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 113 (Flapjack.WordRegImm.imm 440#64)))

def word866_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_244

def word866_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_243 word866_1_245

def word866_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 66 (Flapjack.WordLangAddr.addr 66 0#64))

def word866_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_246 word866_1_247

def word866_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 113 (Flapjack.WordRegImm.imm 441#64)))

def word866_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_249

def word866_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_248 word866_1_250

def word866_1_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def word866_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_251 word866_1_252

def word866_1_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 94 113 (Flapjack.WordRegImm.imm 442#64)))

def word866_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_254

def word866_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_253 word866_1_255

def word866_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 94 (Flapjack.WordLangAddr.addr 94 0#64))

def word866_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_256 word866_1_257

def word866_1_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 113 (Flapjack.WordRegImm.imm 443#64)))

def word866_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_259

def word866_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_258 word866_1_260

def word866_1_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def word866_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_261 word866_1_262

def word866_1_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 80 113 (Flapjack.WordRegImm.imm 444#64)))

def word866_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_264

def word866_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_263 word866_1_265

def word866_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 80 (Flapjack.WordLangAddr.addr 80 0#64))

def word866_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_266 word866_1_267

def word866_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 113 (Flapjack.WordRegImm.imm 445#64)))

def word866_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_269

def word866_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_268 word866_1_270

def word866_1_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def word866_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_271 word866_1_272

def word866_1_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 108 113 (Flapjack.WordRegImm.imm 446#64)))

def word866_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_274

def word866_1_276 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_273 word866_1_275

def word866_1_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 108 (Flapjack.WordLangAddr.addr 108 0#64))

def word866_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_276 word866_1_277

def word866_1_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 113 (Flapjack.WordRegImm.imm 447#64)))

def word866_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_279

def word866_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_278 word866_1_280

def word866_1_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def word866_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_281 word866_1_282

def word866_1_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 6)]

def word866_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 113 (Flapjack.WordRegImm.imm 24#64)))

def word866_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_284 word866_1_285

def word866_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 108)]

def word866_1_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 114 114 (Flapjack.WordRegImm.imm 16#64)))

def word866_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_287 word866_1_288

def word866_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 113 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_289 word866_1_290

def word866_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_286 word866_1_291

def word866_1_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 54)]

def word866_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 114 114 (Flapjack.WordRegImm.imm 8#64)))

def word866_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_293 word866_1_294

def word866_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_295 word866_1_290

def word866_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_292 word866_1_296

def word866_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 80)]

def word866_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_298 word866_1_290

def word866_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_297 word866_1_299

def word866_1_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 113 (Flapjack.WordRegImm.imm 32#64)))

def word866_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_300 word866_1_301

def word866_1_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 26)]

def word866_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 114 114 (Flapjack.WordRegImm.imm 24#64)))

def word866_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_303 word866_1_304

def word866_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_305 word866_1_290

def word866_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_302 word866_1_306

def word866_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 94)]

def word866_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_308 word866_1_288

def word866_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_309 word866_1_290

def word866_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_307 word866_1_310

def word866_1_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 40)]

def word866_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_312 word866_1_294

def word866_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_313 word866_1_290

def word866_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_311 word866_1_314

def word866_1_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 66)]

def word866_1_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 62 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_316 word866_1_317

def word866_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_315 word866_1_318

def word866_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_283 word866_1_319

def word866_1_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 113 (Flapjack.WordRegImm.imm 448#64)))

def word866_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_321

def word866_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_320 word866_1_322

def word866_1_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 36 (Flapjack.WordLangAddr.addr 36 0#64))

def word866_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_323 word866_1_324

def word866_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 90 113 (Flapjack.WordRegImm.imm 449#64)))

def word866_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_326

def word866_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_325 word866_1_327

def word866_1_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 90 (Flapjack.WordLangAddr.addr 90 0#64))

def word866_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_328 word866_1_329

def word866_1_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 113 (Flapjack.WordRegImm.imm 450#64)))

def word866_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_331

def word866_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_330 word866_1_332

def word866_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def word866_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_333 word866_1_334

def word866_1_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 76 113 (Flapjack.WordRegImm.imm 451#64)))

def word866_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_336

def word866_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_335 word866_1_337

def word866_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 76 (Flapjack.WordLangAddr.addr 76 0#64))

def word866_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_338 word866_1_339

def word866_1_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 50 113 (Flapjack.WordRegImm.imm 452#64)))

def word866_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_341

def word866_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_340 word866_1_342

def word866_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 50 (Flapjack.WordLangAddr.addr 50 0#64))

def word866_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_343 word866_1_344

def word866_1_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 104 113 (Flapjack.WordRegImm.imm 453#64)))

def word866_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_346

def word866_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_345 word866_1_347

def word866_1_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 104 (Flapjack.WordLangAddr.addr 104 0#64))

def word866_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_348 word866_1_349

def word866_1_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 113 (Flapjack.WordRegImm.imm 454#64)))

def word866_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_351

def word866_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_350 word866_1_352

def word866_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word866_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_353 word866_1_354

def word866_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 70 113 (Flapjack.WordRegImm.imm 455#64)))

def word866_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_356

def word866_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_355 word866_1_357

def word866_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 70 (Flapjack.WordLangAddr.addr 70 0#64))

def word866_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_358 word866_1_359

def word866_1_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 70)]

def word866_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_361 word866_1_285

def word866_1_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 14)]

def word866_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_363 word866_1_288

def word866_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_364 word866_1_290

def word866_1_366 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_362 word866_1_365

def word866_1_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 104)]

def word866_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_367 word866_1_294

def word866_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_368 word866_1_290

def word866_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_366 word866_1_369

def word866_1_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 50)]

def word866_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_371 word866_1_290

def word866_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_370 word866_1_372

def word866_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_373 word866_1_301

def word866_1_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 76)]

def word866_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_375 word866_1_304

def word866_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_376 word866_1_290

def word866_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_374 word866_1_377

def word866_1_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 22)]

def word866_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_379 word866_1_288

def word866_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_380 word866_1_290

def word866_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_378 word866_1_381

def word866_1_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 90)]

def word866_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_383 word866_1_294

def word866_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_384 word866_1_290

def word866_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_382 word866_1_385

def word866_1_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 36)]

def word866_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 44 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_387 word866_1_388

def word866_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_386 word866_1_389

def word866_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_360 word866_1_390

def word866_1_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 98 113 (Flapjack.WordRegImm.imm 456#64)))

def word866_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_392

def word866_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_391 word866_1_393

def word866_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 98 (Flapjack.WordLangAddr.addr 98 0#64))

def word866_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_394 word866_1_395

def word866_1_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 113 (Flapjack.WordRegImm.imm 457#64)))

def word866_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_397

def word866_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_396 word866_1_398

def word866_1_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def word866_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_399 word866_1_400

def word866_1_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 84 113 (Flapjack.WordRegImm.imm 458#64)))

def word866_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_402

def word866_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_401 word866_1_403

def word866_1_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 84 (Flapjack.WordLangAddr.addr 84 0#64))

def word866_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_404 word866_1_405

def word866_1_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 58 113 (Flapjack.WordRegImm.imm 459#64)))

def word866_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_407

def word866_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_406 word866_1_408

def word866_1_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 58 (Flapjack.WordLangAddr.addr 58 0#64))

def word866_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_409 word866_1_410

def word866_1_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 112 113 (Flapjack.WordRegImm.imm 460#64)))

def word866_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_412

def word866_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_411 word866_1_413

def word866_1_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 112 (Flapjack.WordLangAddr.addr 112 0#64))

def word866_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_414 word866_1_415

def word866_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 113 (Flapjack.WordRegImm.imm 461#64)))

def word866_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_417

def word866_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_416 word866_1_418

def word866_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def word866_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_419 word866_1_420

def word866_1_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 60 113 (Flapjack.WordRegImm.imm 462#64)))

def word866_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_422

def word866_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_421 word866_1_423

def word866_1_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 60 (Flapjack.WordLangAddr.addr 60 0#64))

def word866_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_424 word866_1_425

def word866_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 34 113 (Flapjack.WordRegImm.imm 463#64)))

def word866_1_428 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_427

def word866_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_426 word866_1_428

def word866_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def word866_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_429 word866_1_430

def word866_1_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 34)]

def word866_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_432 word866_1_285

def word866_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 60)]

def word866_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_434 word866_1_288

def word866_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_435 word866_1_290

def word866_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_433 word866_1_436

def word866_1_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 4)]

def word866_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_438 word866_1_294

def word866_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_439 word866_1_290

def word866_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_437 word866_1_440

def word866_1_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 112)]

def word866_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_442 word866_1_290

def word866_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_441 word866_1_443

def word866_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_444 word866_1_301

def word866_1_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 58)]

def word866_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_446 word866_1_304

def word866_1_448 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_447 word866_1_290

def word866_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_445 word866_1_448

def word866_1_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 84)]

def word866_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_450 word866_1_288

def word866_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_451 word866_1_290

def word866_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_449 word866_1_452

def word866_1_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 30)]

def word866_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_454 word866_1_294

def word866_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_455 word866_1_290

def word866_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_453 word866_1_456

def word866_1_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 98)]

def word866_1_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 88 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_458 word866_1_459

def word866_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_457 word866_1_460

def word866_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_431 word866_1_461

def word866_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 113 (Flapjack.WordRegImm.imm 464#64)))

def word866_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_463

def word866_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_462 word866_1_464

def word866_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def word866_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_465 word866_1_466

def word866_1_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 74 113 (Flapjack.WordRegImm.imm 465#64)))

def word866_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_468

def word866_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_467 word866_1_469

def word866_1_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 74 (Flapjack.WordLangAddr.addr 74 0#64))

def word866_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_470 word866_1_471

def word866_1_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 48 113 (Flapjack.WordRegImm.imm 466#64)))

def word866_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_473

def word866_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_472 word866_1_474

def word866_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 48 (Flapjack.WordLangAddr.addr 48 0#64))

def word866_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_475 word866_1_476

def word866_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 102 113 (Flapjack.WordRegImm.imm 467#64)))

def word866_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_478

def word866_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_477 word866_1_479

def word866_1_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 102 (Flapjack.WordLangAddr.addr 102 0#64))

def word866_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_480 word866_1_481

def word866_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 113 (Flapjack.WordRegImm.imm 468#64)))

def word866_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_483

def word866_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_482 word866_1_484

def word866_1_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def word866_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_485 word866_1_486

def word866_1_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 68 113 (Flapjack.WordRegImm.imm 469#64)))

def word866_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_488

def word866_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_487 word866_1_489

def word866_1_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def word866_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_490 word866_1_491

def word866_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 113 (Flapjack.WordRegImm.imm 470#64)))

def word866_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_493

def word866_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_492 word866_1_494

def word866_1_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def word866_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_495 word866_1_496

def word866_1_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 96 113 (Flapjack.WordRegImm.imm 471#64)))

def word866_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_87 word866_1_498

def word866_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_497 word866_1_499

def word866_1_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 96 (Flapjack.WordLangAddr.addr 96 0#64))

def word866_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_500 word866_1_501

def word866_1_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 96)]

def word866_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_503 word866_1_285

def word866_1_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 42)]

def word866_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_505 word866_1_288

def word866_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_506 word866_1_290

def word866_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_504 word866_1_507

def word866_1_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 68)]

def word866_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_509 word866_1_294

def word866_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_510 word866_1_290

def word866_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_508 word866_1_511

def word866_1_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 12)]

def word866_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_513 word866_1_290

def word866_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_512 word866_1_514

def word866_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_515 word866_1_301

def word866_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 102)]

def word866_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_517 word866_1_304

def word866_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_518 word866_1_290

def word866_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_516 word866_1_519

def word866_1_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 48)]

def word866_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_521 word866_1_288

def word866_1_523 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_522 word866_1_290

def word866_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_520 word866_1_523

def word866_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 74)]

def word866_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_525 word866_1_294

def word866_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_526 word866_1_290

def word866_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_524 word866_1_527

def word866_1_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 20)]

def word866_1_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_529 word866_1_530

def word866_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_528 word866_1_531

def word866_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_502 word866_1_532

def word866_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 82 113 (Flapjack.WordRegImm.imm 160#64)))

def word866_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_534

def word866_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_533 word866_1_535

def word866_1_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 62)]

def word866_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_536 word866_1_537

def word866_1_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(110, 44)]

def word866_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_538 word866_1_539

def word866_1_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 88)]

def word866_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_540 word866_1_541

def word866_1_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 28)]

def word866_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_542 word866_1_543

def word866_1_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 56)]

def word866_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_544 word866_1_545

def word866_1_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 82)]

def word866_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_549 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_547 word866_1_548

def word866_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_546 word866_1_549

def word866_1_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 110)]

def word866_1_552 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_550 word866_1_551

def word866_1_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 113 8#64))

def word866_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_547 word866_1_553

def word866_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_552 word866_1_554

def word866_1_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 8)]

def word866_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_555 word866_1_556

def word866_1_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 113 16#64))

def word866_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_547 word866_1_558

def word866_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_557 word866_1_559

def word866_1_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 64)]

def word866_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_560 word866_1_561

def word866_1_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 113 24#64))

def word866_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_547 word866_1_563

def word866_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_562 word866_1_564

def word866_1_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 32#64)

def word866_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_565 word866_1_566

def word866_1_568 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_567 word866_1_566

def word866_1_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word866_1_570 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 18)) (some 68) ([56]) (some (56, word866_1_569, 866, 19))

def word866_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_568 word866_1_570

def word866_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_571 word866_1_14

def word866_1_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 113 (Flapjack.WordRegImm.imm 192#64)))

def word866_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_573

def word866_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_572 word866_1_574

def word866_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(110, 82)]

def word866_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_575 word866_1_576

def word866_1_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 110)]

def word866_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_577 word866_1_578

def word866_1_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 56)]

def word866_1_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_580 word866_1_581

def word866_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_579 word866_1_582

def word866_1_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 113 (Flapjack.WordRegImm.imm 200#64)))

def word866_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_584

def word866_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_583 word866_1_585

def word866_1_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 110 (Flapjack.WordLangAddr.addr 113 112#64))

def word866_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_587

def word866_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_586 word866_1_588

def word866_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_589 word866_1_578

def word866_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_590 word866_1_582

def word866_1_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 113 (Flapjack.WordRegImm.imm 208#64)))

def word866_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_592

def word866_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_591 word866_1_593

def word866_1_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 110 (Flapjack.WordLangAddr.addr 113 120#64))

def word866_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_595

def word866_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_594 word866_1_596

def word866_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_597 word866_1_578

def word866_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_598 word866_1_582

def word866_1_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 113 (Flapjack.WordRegImm.imm 216#64)))

def word866_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_600

def word866_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_599 word866_1_601

def word866_1_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 110 (Flapjack.WordLangAddr.addr 113 24#64))

def word866_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_0 word866_1_603

def word866_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_602 word866_1_604

def word866_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_605 word866_1_578

def word866_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_606 word866_1_582

def word866_1_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 110 32#64)

def word866_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_607 word866_1_608

def word866_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_609 word866_1_608

def word866_1_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 110

def word866_1_612 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 20)) (some 68) ([110]) (some (110, word866_1_611, 866, 21))

def word866_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_610 word866_1_612

def word866_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_613 word866_1_14

def word866_1_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 110 113 (Flapjack.WordRegImm.imm 224#64)))

def word866_1_616 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_615

def word866_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_614 word866_1_616

def word866_1_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 56)]

def word866_1_619 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_617 word866_1_618

def word866_1_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 8)]

def word866_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_619 word866_1_620

def word866_1_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 110)]

def word866_1_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 64 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_622 word866_1_623

def word866_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_621 word866_1_624

def word866_1_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 32#64)

def word866_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_625 word866_1_626

def word866_1_628 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_627 word866_1_626

def word866_1_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word866_1_630 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 22)) (some 68) ([8]) (some (8, word866_1_629, 866, 23))

def word866_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_628 word866_1_630

def word866_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_631 word866_1_14

def word866_1_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 113 (Flapjack.WordRegImm.imm 232#64)))

def word866_1_634 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_633

def word866_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_632 word866_1_634

def word866_1_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 110)]

def word866_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_635 word866_1_636

def word866_1_638 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_637 word866_1_561

def word866_1_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 8)]

def word866_1_640 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_639 word866_1_548

def word866_1_641 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_638 word866_1_640

def word866_1_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 113 (Flapjack.WordRegImm.imm 240#64)))

def word866_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_35 word866_1_642

def word866_1_644 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_641 word866_1_643

def word866_1_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 64 (Flapjack.WordLangAddr.addr 113 128#64))

def word866_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_645

def word866_1_647 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_644 word866_1_646

def word866_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_647 word866_1_561

def word866_1_649 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_648 word866_1_640

def word866_1_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 18)]

def word866_1_651 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_649 word866_1_650

def word866_1_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 32)]

def word866_1_653 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_651 word866_1_652

def word866_1_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word866_1_655 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 24)) (some 865) ([64, 38]) (some (64, word866_1_654, 866, 25))

def word866_1_656 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_653 word866_1_655

def word866_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_656 word866_1_14

def word866_1_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 8388608#64)

def word866_1_659 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_657 word866_1_658

def word866_1_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(92, 8)]

def word866_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_659 word866_1_660

def word866_1_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 1#64)

def word866_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_662 word866_1_14

def word866_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1#64)

def word866_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_663 word866_1_664

def word866_1_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 7#64)

def word866_1_667 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_665 word866_1_666

def word866_1_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 64)]

def word866_1_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 113)

def word866_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_668 word866_1_669

def word866_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_667 word866_1_670

def word866_1_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 4#64)

def word866_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_671 word866_1_672

def word866_1_674 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_673 word866_1_654

def word866_1_675 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 38 (Flapjack.WordRegImm.reg 92) word866_1_674 word866_1_10

def word866_1_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word866_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_676 word866_1_14

def word866_1_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def word866_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_677 word866_1_678

def word866_1_680 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_675 word866_1_679

def word866_1_681 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_661 word866_1_680

def word866_1_682 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_681 word866_1_14

def word866_1_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 113 32#64))

def word866_1_684 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_683

def word866_1_685 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_682 word866_1_684

def word866_1_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 92 (Flapjack.WordLangAddr.addr 113 40#64))

def word866_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_686

def word866_1_688 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_685 word866_1_687

def word866_1_689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 100)]

def word866_1_690 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_688 word866_1_689

def word866_1_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word866_1_692 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 26)) (some 334) ([38, 92, 24]) (some (38, word866_1_691, 866, 27))

def word866_1_693 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_690 word866_1_692

def word866_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_693 word866_1_14

def word866_1_695 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 64 (Flapjack.WordLangAddr.addr 113 56#64))

def word866_1_696 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_695

def word866_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_694 word866_1_696

def word866_1_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 113 (Flapjack.WordRegImm.imm 4#64)))

def word866_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_668 word866_1_698

def word866_1_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 92 113 (Flapjack.WordRegImm.imm 16#64)))

def word866_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_699 word866_1_700

def word866_1_702 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_697 word866_1_701

def word866_1_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word866_1_704 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 28)) (some 68) ([92]) (some (92, word866_1_703, 866, 29))

def word866_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_702 word866_1_704

def word866_1_706 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_705 word866_1_14

def word866_1_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 113 Flapjack.WordStore.heapLength

def word866_1_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 113 (Flapjack.WordRegImm.imm 1#64)))

def word866_1_709 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_707 word866_1_708

def word866_1_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 113

def word866_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_709 word866_1_710

def word866_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 92 113 (Flapjack.WordRegImm.imm 18446744073709550880#64)))

def word866_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_711 word866_1_712

def word866_1_714 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_706 word866_1_713

def word866_1_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 38)]

def word866_1_716 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_714 word866_1_715

def word866_1_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 24)]

def word866_1_718 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_716 word866_1_717

def word866_1_719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 92)]

def word866_1_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 78 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_719 word866_1_720

def word866_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_718 word866_1_721

def word866_1_723 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_722 word866_1_676

def word866_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_723 word866_1_14

def word866_1_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 64)]

def word866_1_726 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_715 word866_1_725

def word866_1_727 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_664 word866_1_14

def word866_1_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 1#64)

def word866_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_727 word866_1_728

def word866_1_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 38)]

def word866_1_731 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_729 word866_1_730

def word866_1_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 44#64)

def word866_1_733 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_731 word866_1_732

def word866_1_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 106 106 78 52))

def word866_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_733 word866_1_734

def word866_1_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 106)]

def word866_1_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(114, 32)]

def word866_1_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 114 (Flapjack.WordLangAddr.addr 114 48#64))

def word866_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_737 word866_1_738

def word866_1_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_739 word866_1_740

def word866_1_742 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_736 word866_1_741

def word866_1_743 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_735 word866_1_742

def word866_1_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word866_1_745 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 30)) (some 857) ([16]) (some (78, word866_1_744, 866, 31))

def word866_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_743 word866_1_745

def word866_1_747 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_746 word866_1_14

def word866_1_748 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 38)]

def word866_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_748 word866_1_698

def word866_1_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 114 Flapjack.WordStore.heapLength

def word866_1_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 114 114 (Flapjack.WordRegImm.imm 1#64)))

def word866_1_752 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_750 word866_1_751

def word866_1_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 114 114

def word866_1_754 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_752 word866_1_753

def word866_1_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 114 (Flapjack.WordLangAddr.addr 114 18446744073709550880#64))

def word866_1_756 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_754 word866_1_755

def word866_1_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 78 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_758 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_756 word866_1_757

def word866_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_749 word866_1_758

def word866_1_760 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_747 word866_1_759

def word866_1_761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 92)]

def word866_1_762 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_760 word866_1_761

def word866_1_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 52)]

def word866_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_762 word866_1_763

def word866_1_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 78)]

def word866_1_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 106 (Flapjack.WordLangAddr.addr 113 0#64))

def word866_1_767 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_765 word866_1_766

def word866_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_764 word866_1_767

def word866_1_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 113 113 (Flapjack.WordRegImm.reg 114)))

def word866_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_756 word866_1_769

def word866_1_771 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_749 word866_1_770

def word866_1_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 78 113 (Flapjack.WordRegImm.imm 8#64)))

def word866_1_773 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_771 word866_1_772

def word866_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_768 word866_1_773

def word866_1_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 24)]

def word866_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_774 word866_1_775

def word866_1_777 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_776 word866_1_763

def word866_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_777 word866_1_767

def word866_1_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 78 113 (Flapjack.WordRegImm.imm 1#64)))

def word866_1_780 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_748 word866_1_779

def word866_1_781 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_778 word866_1_780

def word866_1_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 78)]

def word866_1_783 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_781 word866_1_782

def word866_1_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word866_1_785 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_783 word866_1_784

def word866_1_786 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_678 word866_1_14

def word866_1_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 0#64)

def word866_1_788 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_786 word866_1_787

def word866_1_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word866_1_790 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_788 word866_1_789

def word866_1_791 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 78) word866_1_785 word866_1_790

def word866_1_792 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_726 word866_1_791

def word866_1_793 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_792 word866_1_14

def word866_1_794 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word866_1_793 (Flapjack.Spt.bs
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

def word866_1_795 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_724 word866_1_794

def word866_1_796 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_795 word866_1_14

def word866_1_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 113 18446744073709550880#64))

def word866_1_798 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_711 word866_1_797

def word866_1_799 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_796 word866_1_798

def word866_1_800 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_799 word866_1_725

def word866_1_801 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 82)]

def word866_1_802 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_800 word866_1_801

def word866_1_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word866_1_804 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 32)) (some 334) ([24, 78, 52]) (some (24, word866_1_803, 866, 33))

def word866_1_805 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_802 word866_1_804

def word866_1_806 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_805 word866_1_14

def word866_1_807 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 78 (Flapjack.WordLangAddr.addr 113 32#64))

def word866_1_808 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_0 word866_1_807

def word866_1_809 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_806 word866_1_808

def word866_1_810 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 34)) (some 858) ([78]) (some (78, word866_1_744, 866, 35))

def word866_1_811 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_809 word866_1_810

def word866_1_812 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_811 word866_1_14

def word866_1_813 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_812 word866_1_761

def word866_1_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(106, 24)]

def word866_1_815 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_813 word866_1_814

def word866_1_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 56)]

def word866_1_817 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_815 word866_1_816

def word866_1_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word866_1_819 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word866_1_10, 866, 36)) (some 859) ([52, 106, 16]) (some (52, word866_1_818, 866, 37))

def word866_1_820 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_817 word866_1_819

def word866_1_821 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_820 word866_1_14

def word866_1_822 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 52 (Flapjack.WordLangAddr.addr 113 64#64))

def word866_1_823 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_822

def word866_1_824 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_821 word866_1_823

def word866_1_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 106 (Flapjack.WordLangAddr.addr 113 72#64))

def word866_1_826 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_3 word866_1_825

def word866_1_827 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_824 word866_1_826

def word866_1_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 110)]

def word866_1_829 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_827 word866_1_828

def word866_1_830 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word866_1_10, 866, 38)) (some 158) ([52, 106, 16]) (some (52, word866_1_818, 866, 39))

def word866_1_831 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_829 word866_1_830

def word866_1_832 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_831 word866_1_14

def word866_1_833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 18)]

def word866_1_834 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_832 word866_1_833

def word866_1_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [78]

def word866_1_836 : WordLangProgHOL (BitVec 64) :=
.seq word866_1_834 word866_1_835

def pass866_1 : WordLangProgHOL (BitVec 64) :=
word866_1_836
theorem pass866_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass866_0) + 1) (pass866_0) = pass866_1 := by
  kernel_rfl
#print axioms pass866_1_eq
end InitECandidate.Proofs.WordStages
