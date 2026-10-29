import InitECandidate.Proofs.WordStages.Optimize301
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source317
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody317_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (12, 2), (4, 4), (6, 6)]

def optimizedBody317_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody317_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody317_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody317_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody317_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_3 optimizedBody317_4

def optimizedBody317_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_1 optimizedBody317_5

def optimizedBody317_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_6

def optimizedBody317_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody317_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody317_7 optimizedBody317_8

def optimizedBody317_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody317_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody317_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody317_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody317_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody317_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody317_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody317_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody317_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody317_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_18 optimizedBody317_4

def optimizedBody317_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_17 optimizedBody317_19

def optimizedBody317_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_16 optimizedBody317_20

def optimizedBody317_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_15 optimizedBody317_21

def optimizedBody317_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_14 optimizedBody317_22

def optimizedBody317_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_23

def optimizedBody317_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 8)]

def optimizedBody317_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody317_24 optimizedBody317_25

def optimizedBody317_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody317_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 46), (48, 4), (50, 10), (52, 6)]

def optimizedBody317_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody317_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (48, 50), (6, 52)]

def optimizedBody317_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody317_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_30 optimizedBody317_31

def optimizedBody317_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody317_29, 317, 2)) (some 286) ([2]) (some (2, optimizedBody317_32, 317, 3))

def optimizedBody317_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4), (48, 48), (6, 6)]

def optimizedBody317_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_34

def optimizedBody317_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_33 optimizedBody317_35

def optimizedBody317_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_28 optimizedBody317_36

def optimizedBody317_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_27 optimizedBody317_37

def optimizedBody317_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_38

def optimizedBody317_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (0, 46), (4, 4), (48, 10), (6, 6)]

def optimizedBody317_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_40

def optimizedBody317_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody317_39 optimizedBody317_41

def optimizedBody317_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 6), (2, 4)]

def optimizedBody317_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody317_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody317_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody317_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 48), (50, 4)]

def optimizedBody317_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (8, 46), (10, 48), (4, 50)]

def optimizedBody317_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (10, 48), (4, 50)]

def optimizedBody317_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_49 optimizedBody317_31

def optimizedBody317_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody317_48, 317, 4)) (some 292) ([2, 4, 6, 8]) (some (2, optimizedBody317_50, 317, 5))

def optimizedBody317_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody317_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody317_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody317_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4), (2, 6)]

def optimizedBody317_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody317_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody317_58 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 2, 4, 6]) (none)

def optimizedBody317_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_57 optimizedBody317_58

def optimizedBody317_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_56 optimizedBody317_59

def optimizedBody317_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_55 optimizedBody317_60

def optimizedBody317_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_61

def optimizedBody317_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (6, 6)]

def optimizedBody317_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody317_62 optimizedBody317_63

def optimizedBody317_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 56#64))

def optimizedBody317_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody317_67 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 296) ([0, 2, 4, 6, 8]) (none)

def optimizedBody317_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_66 optimizedBody317_67

def optimizedBody317_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_65 optimizedBody317_68

def optimizedBody317_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_10 optimizedBody317_69

def optimizedBody317_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_56 optimizedBody317_70

def optimizedBody317_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_55 optimizedBody317_71

def optimizedBody317_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_72

def optimizedBody317_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_73

def optimizedBody317_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_64 optimizedBody317_74

def optimizedBody317_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_27 optimizedBody317_75

def optimizedBody317_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_12 optimizedBody317_76

def optimizedBody317_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_54 optimizedBody317_77

def optimizedBody317_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_53 optimizedBody317_78

def optimizedBody317_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_52 optimizedBody317_79

def optimizedBody317_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_10 optimizedBody317_80

def optimizedBody317_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_81

def optimizedBody317_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_51 optimizedBody317_82

def optimizedBody317_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_47 optimizedBody317_83

def optimizedBody317_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_46 optimizedBody317_84

def optimizedBody317_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_45 optimizedBody317_85

def optimizedBody317_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_44 optimizedBody317_86

def optimizedBody317_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_43 optimizedBody317_87

def optimizedBody317_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_88

def optimizedBody317_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_42 optimizedBody317_89

def optimizedBody317_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_1 optimizedBody317_90

def optimizedBody317_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_12 optimizedBody317_91

def optimizedBody317_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_92

def optimizedBody317_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_93

def optimizedBody317_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_26 optimizedBody317_94

def optimizedBody317_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_13 optimizedBody317_95

def optimizedBody317_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_12 optimizedBody317_96

def optimizedBody317_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_11 optimizedBody317_97

def optimizedBody317_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_10 optimizedBody317_98

def optimizedBody317_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_99

def optimizedBody317_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_2 optimizedBody317_100

def optimizedBody317_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_9 optimizedBody317_101

def optimizedBody317_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_1 optimizedBody317_102

def optimizedBody317_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody317_0 optimizedBody317_103

def oracle317 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22)))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 2)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
              4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              6 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))
def optimized317 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(317, 5, optimizedBody317_104)
theorem optimize317_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source317, oracle317) = optimized317 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize317_eq
end InitECandidate.Proofs.WordStages
