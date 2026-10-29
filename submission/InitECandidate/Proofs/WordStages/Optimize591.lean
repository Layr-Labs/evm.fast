import InitECandidate.Proofs.WordStages.Optimize575
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source591
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody591_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 2)]

def optimizedBody591_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (48, 48)]

def optimizedBody591_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody591_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody591_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_2 optimizedBody591_3

def optimizedBody591_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_1, 591, 2)) (some 565) ([2]) (some (2, optimizedBody591_4, 591, 3))

def optimizedBody591_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody591_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48)]

def optimizedBody591_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (46, 46), (4, 48)]

def optimizedBody591_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (4, 48)]

def optimizedBody591_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_9 optimizedBody591_3

def optimizedBody591_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_8, 591, 4)) (some 468) ([2, 4]) (some (2, optimizedBody591_10, 591, 5))

def optimizedBody591_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody591_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody591_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody591_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody591_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody591_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4, 6]

def optimizedBody591_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_16 optimizedBody591_17

def optimizedBody591_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_15 optimizedBody591_18

def optimizedBody591_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_14 optimizedBody591_19

def optimizedBody591_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_13 optimizedBody591_20

def optimizedBody591_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_21

def optimizedBody591_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody591_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody591_22 optimizedBody591_23

def optimizedBody591_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody591_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 8), (46, 46)]

def optimizedBody591_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody591_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody591_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_28 optimizedBody591_3

def optimizedBody591_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_27, 591, 6)) (some 68) ([2]) (some (2, optimizedBody591_29, 591, 7))

def optimizedBody591_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody591_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody591_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody591_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2)]

def optimizedBody591_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody591_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_35, 591, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody591_29, 591, 9))

def optimizedBody591_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody591_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (4, 46)]

def optimizedBody591_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46)]

def optimizedBody591_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_39 optimizedBody591_3

def optimizedBody591_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody591_38, 591, 10)) (some 493) ([2]) (some (2, optimizedBody591_40, 591, 11))

def optimizedBody591_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody591_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody591_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 100#64)

def optimizedBody591_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_44 optimizedBody591_18

def optimizedBody591_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_14 optimizedBody591_45

def optimizedBody591_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_43 optimizedBody591_46

def optimizedBody591_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_47

def optimizedBody591_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 4)]

def optimizedBody591_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody591_48 optimizedBody591_49

def optimizedBody591_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)

def optimizedBody591_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6)]

def optimizedBody591_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_52 optimizedBody591_17

def optimizedBody591_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_51 optimizedBody591_53

def optimizedBody591_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_12 optimizedBody591_54

def optimizedBody591_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_43 optimizedBody591_55

def optimizedBody591_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_56

def optimizedBody591_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_57

def optimizedBody591_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_50 optimizedBody591_58

def optimizedBody591_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_13 optimizedBody591_59

def optimizedBody591_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_42 optimizedBody591_60

def optimizedBody591_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_61

def optimizedBody591_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_41 optimizedBody591_62

def optimizedBody591_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_37 optimizedBody591_63

def optimizedBody591_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_64

def optimizedBody591_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_36 optimizedBody591_65

def optimizedBody591_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_34 optimizedBody591_66

def optimizedBody591_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_33 optimizedBody591_67

def optimizedBody591_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_32 optimizedBody591_68

def optimizedBody591_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_31 optimizedBody591_69

def optimizedBody591_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_70

def optimizedBody591_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_30 optimizedBody591_71

def optimizedBody591_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_26 optimizedBody591_72

def optimizedBody591_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_25 optimizedBody591_73

def optimizedBody591_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_74

def optimizedBody591_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_75

def optimizedBody591_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_24 optimizedBody591_76

def optimizedBody591_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_13 optimizedBody591_77

def optimizedBody591_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_12 optimizedBody591_78

def optimizedBody591_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_79

def optimizedBody591_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_11 optimizedBody591_80

def optimizedBody591_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_7 optimizedBody591_81

def optimizedBody591_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_6 optimizedBody591_82

def optimizedBody591_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_5 optimizedBody591_83

def optimizedBody591_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody591_0 optimizedBody591_84

def oracle591 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
def optimized591 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(591, 2, optimizedBody591_85)
theorem optimize591_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source591, oracle591) = optimized591 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize591_eq
end InitECandidate.Proofs.WordStages
