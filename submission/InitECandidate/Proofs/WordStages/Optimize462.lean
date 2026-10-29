import InitECandidate.Proofs.WordStages.Optimize446
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source462
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody462_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def optimizedBody462_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody462_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody462_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody462_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody462_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody462_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody462_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody462_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody462_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_7 optimizedBody462_8

def optimizedBody462_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_6 optimizedBody462_9

def optimizedBody462_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_10

def optimizedBody462_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody462_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody462_11 optimizedBody462_12

def optimizedBody462_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody462_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_14 optimizedBody462_8

def optimizedBody462_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_15

def optimizedBody462_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_16

def optimizedBody462_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_13 optimizedBody462_17

def optimizedBody462_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_4 optimizedBody462_18

def optimizedBody462_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_19

def optimizedBody462_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_20

def optimizedBody462_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_21

def optimizedBody462_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_0 optimizedBody462_22

def oracle462 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
      Flapjack.Spt.ln))
def optimized462 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(462, 5, optimizedBody462_23)
theorem optimize462_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source462, oracle462) = optimized462 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize462_eq
end InitECandidate.Proofs.WordStages
