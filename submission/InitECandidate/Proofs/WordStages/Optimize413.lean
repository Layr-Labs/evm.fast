import InitECandidate.Proofs.WordStages.Optimize397
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source413
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody413_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody413_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody413_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody413_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody413_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_2 optimizedBody413_3

def optimizedBody413_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody413_1, 413, 2)) (some 406) ([2]) (some (2, optimizedBody413_4, 413, 3))

def optimizedBody413_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody413_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody413_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody413_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody413_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody413_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody413_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_10 optimizedBody413_11

def optimizedBody413_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_9 optimizedBody413_12

def optimizedBody413_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_6 optimizedBody413_13

def optimizedBody413_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody413_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody413_14 optimizedBody413_15

def optimizedBody413_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_8 optimizedBody413_12

def optimizedBody413_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_6 optimizedBody413_17

def optimizedBody413_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_6 optimizedBody413_18

def optimizedBody413_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_16 optimizedBody413_19

def optimizedBody413_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_8 optimizedBody413_20

def optimizedBody413_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_7 optimizedBody413_21

def optimizedBody413_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_6 optimizedBody413_22

def optimizedBody413_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_5 optimizedBody413_23

def optimizedBody413_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody413_0 optimizedBody413_24

def oracle413 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized413 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(413, 2, optimizedBody413_25)
theorem optimize413_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source413, oracle413) = optimized413 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize413_eq
end InitECandidate.Proofs.WordStages
