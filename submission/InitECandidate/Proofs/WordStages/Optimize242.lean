import InitECandidate.Proofs.WordStages.Optimize226
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source242
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody242_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6)]

def optimizedBody242_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody242_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 4)]

def optimizedBody242_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody242_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody242_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody242_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (52, 0), (44, 8), (46, 10), (48, 2)]

def optimizedBody242_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 52), (6, 44), (4, 46), (0, 48)]

def optimizedBody242_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (6, 44), (4, 46), (0, 48)]

def optimizedBody242_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody242_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_8 optimizedBody242_9

def optimizedBody242_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_7, 242, 2)) (some 78) ([2, 4]) (some (2, optimizedBody242_10, 242, 3))

def optimizedBody242_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (52, 52)]

def optimizedBody242_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52)]

def optimizedBody242_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 52)]

def optimizedBody242_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_14 optimizedBody242_9

def optimizedBody242_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_13, 242, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody242_15, 242, 5))

def optimizedBody242_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody242_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody242_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody242_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_18 optimizedBody242_19

def optimizedBody242_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_17 optimizedBody242_20

def optimizedBody242_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_21

def optimizedBody242_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_16 optimizedBody242_22

def optimizedBody242_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_12 optimizedBody242_23

def optimizedBody242_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_24

def optimizedBody242_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_11 optimizedBody242_25

def optimizedBody242_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_6 optimizedBody242_26

def optimizedBody242_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_5 optimizedBody242_27

def optimizedBody242_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_4 optimizedBody242_28

def optimizedBody242_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_29

def optimizedBody242_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 8), (48, 10), (50, 6), (44, 0)]

def optimizedBody242_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody242_30 optimizedBody242_31

def optimizedBody242_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody242_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody242_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody242_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_35 optimizedBody242_9

def optimizedBody242_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_34, 242, 6)) (some 69) ([]) (some (2, optimizedBody242_36, 242, 7))

def optimizedBody242_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6), (48, 48)]

def optimizedBody242_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (8, 48)]

def optimizedBody242_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody242_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_40 optimizedBody242_9

def optimizedBody242_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_39, 242, 8)) (some 241) ([2, 4]) (some (2, optimizedBody242_41, 242, 9))

def optimizedBody242_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 4), (8, 8), (44, 44), (46, 46)]

def optimizedBody242_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody242_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody242_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_45 optimizedBody242_9

def optimizedBody242_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_44, 242, 10)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody242_46, 242, 11))

def optimizedBody242_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody242_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody242_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody242_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_50 optimizedBody242_9

def optimizedBody242_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody242_49, 242, 12)) (some 70) ([2]) (some (2, optimizedBody242_51, 242, 13))

def optimizedBody242_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_52 optimizedBody242_22

def optimizedBody242_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_48 optimizedBody242_53

def optimizedBody242_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_54

def optimizedBody242_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_47 optimizedBody242_55

def optimizedBody242_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_43 optimizedBody242_56

def optimizedBody242_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_57

def optimizedBody242_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_42 optimizedBody242_58

def optimizedBody242_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_38 optimizedBody242_59

def optimizedBody242_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_60

def optimizedBody242_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_37 optimizedBody242_61

def optimizedBody242_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_33 optimizedBody242_62

def optimizedBody242_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_63

def optimizedBody242_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_3 optimizedBody242_64

def optimizedBody242_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_32 optimizedBody242_65

def optimizedBody242_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_2 optimizedBody242_66

def optimizedBody242_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_1 optimizedBody242_67

def optimizedBody242_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody242_0 optimizedBody242_68

def oracle242 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            5 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            0 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            Flapjack.Spt.ln)))))
def optimized242 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(242, 4, optimizedBody242_69)
theorem optimize242_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source242, oracle242) = optimized242 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize242_eq
end InitECandidate.Proofs.WordStages
