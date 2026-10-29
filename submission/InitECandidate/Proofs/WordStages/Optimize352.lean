import InitECandidate.Proofs.WordStages.Optimize336
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source352
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody352_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody352_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 320#64))

def optimizedBody352_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody352_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 328#64))

def optimizedBody352_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 336#64))

def optimizedBody352_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 344#64))

def optimizedBody352_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody352_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody352_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_6 optimizedBody352_7

def optimizedBody352_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_5 optimizedBody352_8

def optimizedBody352_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_2 optimizedBody352_9

def optimizedBody352_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_4 optimizedBody352_10

def optimizedBody352_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_2 optimizedBody352_11

def optimizedBody352_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_3 optimizedBody352_12

def optimizedBody352_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_2 optimizedBody352_13

def optimizedBody352_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_1 optimizedBody352_14

def optimizedBody352_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody352_0 optimizedBody352_15

def oracle352 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))))
      Flapjack.Spt.ln))
def optimized352 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(352, 2, optimizedBody352_16)
theorem optimize352_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source352, oracle352) = optimized352 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize352_eq
end InitECandidate.Proofs.WordStages
