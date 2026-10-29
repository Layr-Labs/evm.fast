import InitECandidate.Proofs.WordStages.Optimize480
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source496
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody496_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody496_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)

def optimizedBody496_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody496_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody496_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody496_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody496_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody496_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_5 optimizedBody496_6

def optimizedBody496_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody496_4, 496, 2)) (some 494) ([2]) (some (2, optimizedBody496_7, 496, 3))

def optimizedBody496_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody496_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_2 optimizedBody496_9

def optimizedBody496_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_8 optimizedBody496_10

def optimizedBody496_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_3 optimizedBody496_11

def optimizedBody496_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_2 optimizedBody496_12

def optimizedBody496_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody496_13 optimizedBody496_10

def optimizedBody496_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody496_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody496_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody496_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_16 optimizedBody496_17

def optimizedBody496_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_15 optimizedBody496_18

def optimizedBody496_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_2 optimizedBody496_19

def optimizedBody496_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_14 optimizedBody496_20

def optimizedBody496_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_1 optimizedBody496_21

def optimizedBody496_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody496_0 optimizedBody496_22

def oracle496 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0 (Flapjack.Spt.ls 3))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
        Flapjack.Spt.ln)))
def optimized496 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(496, 3, optimizedBody496_23)
theorem optimize496_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source496, oracle496) = optimized496 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize496_eq
end InitECandidate.Proofs.WordStages
