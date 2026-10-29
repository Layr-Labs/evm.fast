import InitECandidate.Proofs.WordStages.Optimize519
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source535
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody535_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody535_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody535_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody535_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody535_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_2 optimizedBody535_3

def optimizedBody535_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody535_1, 535, 2)) (some 475) ([]) (some (2, optimizedBody535_4, 535, 3))

def optimizedBody535_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody535_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody535_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody535_1, 535, 4)) (some 470) ([2]) (some (2, optimizedBody535_4, 535, 5))

def optimizedBody535_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody535_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody535_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody535_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_11 optimizedBody535_3

def optimizedBody535_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody535_10, 535, 6)) (some 490) ([2]) (some (2, optimizedBody535_12, 535, 7))

def optimizedBody535_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody535_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody535_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody535_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_15 optimizedBody535_16

def optimizedBody535_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_14 optimizedBody535_17

def optimizedBody535_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_6 optimizedBody535_18

def optimizedBody535_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_13 optimizedBody535_19

def optimizedBody535_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_2 optimizedBody535_20

def optimizedBody535_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_9 optimizedBody535_21

def optimizedBody535_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_6 optimizedBody535_22

def optimizedBody535_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_8 optimizedBody535_23

def optimizedBody535_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_2 optimizedBody535_24

def optimizedBody535_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_7 optimizedBody535_25

def optimizedBody535_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_6 optimizedBody535_26

def optimizedBody535_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_5 optimizedBody535_27

def optimizedBody535_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody535_0 optimizedBody535_28

def oracle535 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized535 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(535, 1, optimizedBody535_29)
theorem optimize535_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source535, oracle535) = optimized535 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize535_eq
end InitECandidate.Proofs.WordStages
