import InitECandidate.Proofs.WordStages.Optimize297
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source313
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody313_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (12, 8), (10, 10)]

def optimizedBody313_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody313_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody313_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody313_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 6), (6, 8)]

def optimizedBody313_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody313_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (44, 0), (46, 6), (50, 12), (52, 4), (58, 14), (60, 2), (62, 10), (64, 8)]

def optimizedBody313_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (10, 44), (6, 46), (46, 50), (4, 52), (14, 58), (50, 60), (44, 62), (8, 64)]

def optimizedBody313_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (46, 50), (4, 52), (14, 58), (50, 60), (44, 62), (8, 64)]

def optimizedBody313_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody313_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_8 optimizedBody313_9

def optimizedBody313_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody313_7, 313, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody313_10, 313, 3))

def optimizedBody313_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody313_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody313_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 50)]

def optimizedBody313_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody313_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 46)]

def optimizedBody313_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody313_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody313_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 44)]

def optimizedBody313_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody313_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_2 optimizedBody313_20

def optimizedBody313_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_17 optimizedBody313_21

def optimizedBody313_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_19 optimizedBody313_22

def optimizedBody313_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_18 optimizedBody313_23

def optimizedBody313_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_2 optimizedBody313_24

def optimizedBody313_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_17 optimizedBody313_25

def optimizedBody313_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_16 optimizedBody313_26

def optimizedBody313_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_15 optimizedBody313_27

def optimizedBody313_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_14 optimizedBody313_28

def optimizedBody313_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_29

def optimizedBody313_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(48, 46), (54, 50), (56, 44)]

def optimizedBody313_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody313_30 optimizedBody313_31

def optimizedBody313_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 10), (6, 6), (48, 48), (4, 4), (14, 14), (54, 54), (56, 56), (8, 8)]

def optimizedBody313_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_33

def optimizedBody313_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_34

def optimizedBody313_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_32 optimizedBody313_35

def optimizedBody313_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_13 optimizedBody313_36

def optimizedBody313_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_12 optimizedBody313_37

def optimizedBody313_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_38

def optimizedBody313_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_11 optimizedBody313_39

def optimizedBody313_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_6 optimizedBody313_40

def optimizedBody313_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_41

def optimizedBody313_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (48, 12), (4, 4), (14, 14), (54, 2), (56, 10), (8, 8)]

def optimizedBody313_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_43

def optimizedBody313_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 8) optimizedBody313_42 optimizedBody313_44

def optimizedBody313_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 6), (6, 4), (8, 8), (44, 44), (46, 6), (48, 48), (50, 4), (52, 14), (54, 54), (56, 56), (58, 8)]

def optimizedBody313_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 2), (44, 44), (4, 46), (14, 48), (10, 50), (0, 52), (8, 54), (16, 56), (12, 58)]

def optimizedBody313_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (14, 48), (10, 50), (0, 52), (8, 54), (16, 56), (12, 58)]

def optimizedBody313_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_48 optimizedBody313_9

def optimizedBody313_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody313_47, 313, 4)) (some 291) ([2, 4, 6, 8]) (some (2, optimizedBody313_49, 313, 5))

def optimizedBody313_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody313_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.reg 0)))

def optimizedBody313_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (4, 4)]

def optimizedBody313_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 18)))

def optimizedBody313_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody313_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody313_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 56#64))

def optimizedBody313_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18)]

def optimizedBody313_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody313_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (12, 12)]

def optimizedBody313_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 12 12 (Flapjack.WordRegImm.reg 18)))

def optimizedBody313_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 0), (48, 18)]

def optimizedBody313_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (8, 46), (4, 48)]

def optimizedBody313_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48)]

def optimizedBody313_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_64 optimizedBody313_9

def optimizedBody313_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody313_63, 313, 6)) (some 312) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody313_65, 313, 7))

def optimizedBody313_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody313_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 8), (4, 4), (6, 6)]

def optimizedBody313_69 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 2, 4, 6]) (none)

def optimizedBody313_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_68 optimizedBody313_69

def optimizedBody313_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_70

def optimizedBody313_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6)]

def optimizedBody313_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody313_71 optimizedBody313_72

def optimizedBody313_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody313_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody313_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_74 optimizedBody313_75

def optimizedBody313_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_76

def optimizedBody313_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_77

def optimizedBody313_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_73 optimizedBody313_78

def optimizedBody313_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_67 optimizedBody313_79

def optimizedBody313_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_13 optimizedBody313_80

def optimizedBody313_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_81

def optimizedBody313_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_66 optimizedBody313_82

def optimizedBody313_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_62 optimizedBody313_83

def optimizedBody313_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_61 optimizedBody313_84

def optimizedBody313_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_60 optimizedBody313_85

def optimizedBody313_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_59 optimizedBody313_86

def optimizedBody313_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_58 optimizedBody313_87

def optimizedBody313_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_57 optimizedBody313_88

def optimizedBody313_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_55 optimizedBody313_89

def optimizedBody313_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_56 optimizedBody313_90

def optimizedBody313_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_55 optimizedBody313_91

def optimizedBody313_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_54 optimizedBody313_92

def optimizedBody313_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_53 optimizedBody313_93

def optimizedBody313_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_52 optimizedBody313_94

def optimizedBody313_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_51 optimizedBody313_95

def optimizedBody313_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_96

def optimizedBody313_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_50 optimizedBody313_97

def optimizedBody313_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_46 optimizedBody313_98

def optimizedBody313_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_5 optimizedBody313_99

def optimizedBody313_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_45 optimizedBody313_100

def optimizedBody313_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_4 optimizedBody313_101

def optimizedBody313_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_3 optimizedBody313_102

def optimizedBody313_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_2 optimizedBody313_103

def optimizedBody313_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_1 optimizedBody313_104

def optimizedBody313_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody313_0 optimizedBody313_105

def oracle313 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              5
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              3 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 22)) 4 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7)) 7
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)))
              6
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 6 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 4)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 26 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 30 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 31 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 Flapjack.Spt.ln))))))))
def optimized313 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(313, 6, optimizedBody313_106)
theorem optimize313_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source313, oracle313) = optimized313 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize313_eq
end InitECandidate.Proofs.WordStages
