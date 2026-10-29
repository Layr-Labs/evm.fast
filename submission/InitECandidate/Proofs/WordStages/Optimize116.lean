import InitECandidate.Proofs.WordStages.Optimize100
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source116
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody116_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2), (18, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody116_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody116_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody116_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 10 0))

def optimizedBody116_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (12, 12), (4, 4), (2, 2)]

def optimizedBody116_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 12 0))

def optimizedBody116_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 14), (6, 6), (4, 4)]

def optimizedBody116_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 14 0))

def optimizedBody116_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 16), (8, 8), (6, 6)]

def optimizedBody116_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 16 0))

def optimizedBody116_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody116_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8]

def optimizedBody116_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_10 optimizedBody116_11

def optimizedBody116_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_9 optimizedBody116_12

def optimizedBody116_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_8 optimizedBody116_13

def optimizedBody116_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_7 optimizedBody116_14

def optimizedBody116_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_6 optimizedBody116_15

def optimizedBody116_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_5 optimizedBody116_16

def optimizedBody116_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_4 optimizedBody116_17

def optimizedBody116_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_3 optimizedBody116_18

def optimizedBody116_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_2 optimizedBody116_19

def optimizedBody116_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_1 optimizedBody116_20

def optimizedBody116_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody116_0 optimizedBody116_21

def oracle116 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 9
              (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized116 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(116, 9, optimizedBody116_22)
theorem optimize116_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source116, oracle116) = optimized116 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize116_eq
end InitECandidate.Proofs.WordStages
