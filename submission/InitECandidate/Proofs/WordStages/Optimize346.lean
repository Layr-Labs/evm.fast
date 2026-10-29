import InitECandidate.Proofs.WordStages.Optimize330
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source346
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody346_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody346_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody346_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody346_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody346_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_2 optimizedBody346_3

def optimizedBody346_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody346_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody346_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody346_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 100#64)))

def optimizedBody346_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody346_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody346_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_10 optimizedBody346_4

def optimizedBody346_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_9 optimizedBody346_11

def optimizedBody346_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_7 optimizedBody346_12

def optimizedBody346_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_8 optimizedBody346_13

def optimizedBody346_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_7 optimizedBody346_14

def optimizedBody346_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_6 optimizedBody346_15

def optimizedBody346_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_5 optimizedBody346_16

def optimizedBody346_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody346_4 optimizedBody346_17

def optimizedBody346_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody346_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_5 optimizedBody346_19

def optimizedBody346_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_18 optimizedBody346_20

def optimizedBody346_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_1 optimizedBody346_21

def optimizedBody346_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody346_1, 346, 2)) (some 345) ([2, 4]) (some (2, optimizedBody346_22, 346, 3))

def optimizedBody346_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody346_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody346_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_24 optimizedBody346_25

def optimizedBody346_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_5 optimizedBody346_26

def optimizedBody346_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_23 optimizedBody346_27

def optimizedBody346_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody346_0 optimizedBody346_28

def oracle346 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
def optimized346 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(346, 3, optimizedBody346_29)
theorem optimize346_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source346, oracle346) = optimized346 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize346_eq
end InitECandidate.Proofs.WordStages
