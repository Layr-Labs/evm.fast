import InitECandidate.Proofs.WordStages.Optimize858
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source874
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody874_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody874_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody874_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody874_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody874_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody874_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_3 optimizedBody874_4

def optimizedBody874_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody874_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody874_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody874_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody874_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody874_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody874_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody874_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody874_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_13 optimizedBody874_5

def optimizedBody874_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_12 optimizedBody874_14

def optimizedBody874_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_8 optimizedBody874_15

def optimizedBody874_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_11 optimizedBody874_16

def optimizedBody874_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_10 optimizedBody874_17

def optimizedBody874_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_9 optimizedBody874_18

def optimizedBody874_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_8 optimizedBody874_19

def optimizedBody874_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_7 optimizedBody874_20

def optimizedBody874_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_6 optimizedBody874_21

def optimizedBody874_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 7#64) optimizedBody874_5 optimizedBody874_22

def optimizedBody874_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_23 optimizedBody874_6

def optimizedBody874_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_2 optimizedBody874_24

def optimizedBody874_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody874_1, 874, 2)) (some 873) ([2]) (some (2, optimizedBody874_25, 874, 3))

def optimizedBody874_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody874_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody874_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody874_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_28 optimizedBody874_29

def optimizedBody874_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_27 optimizedBody874_30

def optimizedBody874_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_6 optimizedBody874_31

def optimizedBody874_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_26 optimizedBody874_32

def optimizedBody874_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody874_0 optimizedBody874_33

def oracle874 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
def optimized874 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(874, 2, optimizedBody874_34)
theorem optimize874_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source874, oracle874) = optimized874 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize874_eq
end InitECandidate.Proofs.WordStages
