import InitECandidate.Proofs.WordStages.Optimize332
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source348
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody348_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody348_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody348_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody348_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody348_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody348_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody348_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody348_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody348_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_6 optimizedBody348_7

def optimizedBody348_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_5 optimizedBody348_8

def optimizedBody348_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_2 optimizedBody348_9

def optimizedBody348_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_4 optimizedBody348_10

def optimizedBody348_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_2 optimizedBody348_11

def optimizedBody348_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_3 optimizedBody348_12

def optimizedBody348_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_2 optimizedBody348_13

def optimizedBody348_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_1 optimizedBody348_14

def optimizedBody348_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody348_0 optimizedBody348_15

def oracle348 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))))
      Flapjack.Spt.ln))
def optimized348 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(348, 2, optimizedBody348_16)
theorem optimize348_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source348, oracle348) = optimized348 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize348_eq
end InitECandidate.Proofs.WordStages
