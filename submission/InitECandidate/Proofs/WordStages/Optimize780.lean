import InitECandidate.Proofs.WordStages.Optimize764
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source780
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody780_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody780_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 288#64)

def optimizedBody780_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody780_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody780_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody780_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody780_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_4 optimizedBody780_5

def optimizedBody780_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody780_3, 780, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody780_6, 780, 3))

def optimizedBody780_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody780_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody780_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody780_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody780_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_10 optimizedBody780_11

def optimizedBody780_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_9 optimizedBody780_12

def optimizedBody780_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_8 optimizedBody780_13

def optimizedBody780_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_7 optimizedBody780_14

def optimizedBody780_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_2 optimizedBody780_15

def optimizedBody780_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_1 optimizedBody780_16

def optimizedBody780_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody780_0 optimizedBody780_17

def oracle780 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized780 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(780, 3, optimizedBody780_18)
theorem optimize780_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source780, oracle780) = optimized780 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize780_eq
end InitECandidate.Proofs.WordStages
