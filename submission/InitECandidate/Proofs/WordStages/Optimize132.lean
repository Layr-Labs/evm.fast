import InitECandidate.Proofs.WordStages.Optimize116
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source132
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody132_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody132_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody132_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody132_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody132_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody132_5 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 2, 4, 6, 8]) (none)

def optimizedBody132_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_4 optimizedBody132_5

def optimizedBody132_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_6

def optimizedBody132_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (2, 2), (6, 6)]

def optimizedBody132_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 12) optimizedBody132_7 optimizedBody132_8

def optimizedBody132_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody132_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody132_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_10 optimizedBody132_11

def optimizedBody132_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_12

def optimizedBody132_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_3 optimizedBody132_13

def optimizedBody132_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_9 optimizedBody132_14

def optimizedBody132_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_2 optimizedBody132_15

def optimizedBody132_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_1 optimizedBody132_16

def optimizedBody132_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody132_0 optimizedBody132_17

def oracle132 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.ls 0))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 4))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3))))
      Flapjack.Spt.ln))
def optimized132 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(132, 5, optimizedBody132_18)
theorem optimize132_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source132, oracle132) = optimized132 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize132_eq
end InitECandidate.Proofs.WordStages
