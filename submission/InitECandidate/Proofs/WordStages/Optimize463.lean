import InitECandidate.Proofs.WordStages.Optimize447
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source463
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody463_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (0, 0)]

def optimizedBody463_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody463_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody463_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody463_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody463_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody463_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody463_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_5 optimizedBody463_6

def optimizedBody463_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_4 optimizedBody463_7

def optimizedBody463_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_3 optimizedBody463_8

def optimizedBody463_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody463_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody463_9 optimizedBody463_10

def optimizedBody463_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody463_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_12 optimizedBody463_6

def optimizedBody463_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_3 optimizedBody463_13

def optimizedBody463_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_3 optimizedBody463_14

def optimizedBody463_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_11 optimizedBody463_15

def optimizedBody463_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_2 optimizedBody463_16

def optimizedBody463_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_1 optimizedBody463_17

def optimizedBody463_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_0 optimizedBody463_18

def oracle463 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))))
      Flapjack.Spt.ln))
def optimized463 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(463, 3, optimizedBody463_19)
theorem optimize463_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source463, oracle463) = optimized463 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize463_eq
end InitECandidate.Proofs.WordStages
