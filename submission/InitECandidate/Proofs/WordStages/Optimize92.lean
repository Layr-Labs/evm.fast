import InitECandidate.Proofs.WordStages.Optimize76
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source92
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody92_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody92_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody92_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody92_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody92_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_2 optimizedBody92_3

def optimizedBody92_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_1 optimizedBody92_4

def optimizedBody92_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody92_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody92_5 optimizedBody92_6

def optimizedBody92_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody92_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_8 optimizedBody92_3

def optimizedBody92_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_1 optimizedBody92_9

def optimizedBody92_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_1 optimizedBody92_10

def optimizedBody92_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_7 optimizedBody92_11

def optimizedBody92_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody92_0 optimizedBody92_12

def oracle92 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
      Flapjack.Spt.ln))
def optimized92 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(92, 3, optimizedBody92_13)
theorem optimize92_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source92, oracle92) = optimized92 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize92_eq
end InitECandidate.Proofs.WordStages
