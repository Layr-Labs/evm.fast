import InitECandidate.Proofs.WordStages.Optimize859
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source875
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody875_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody875_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody875_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody875_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody875_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody875_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_3 optimizedBody875_4

def optimizedBody875_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody875_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody875_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody875_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody875_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody875_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 6#64)

def optimizedBody875_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody875_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody875_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_13 optimizedBody875_5

def optimizedBody875_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_12 optimizedBody875_14

def optimizedBody875_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_8 optimizedBody875_15

def optimizedBody875_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_11 optimizedBody875_16

def optimizedBody875_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_10 optimizedBody875_17

def optimizedBody875_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_9 optimizedBody875_18

def optimizedBody875_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_8 optimizedBody875_19

def optimizedBody875_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_7 optimizedBody875_20

def optimizedBody875_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_6 optimizedBody875_21

def optimizedBody875_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 6#64) optimizedBody875_5 optimizedBody875_22

def optimizedBody875_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_23 optimizedBody875_6

def optimizedBody875_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_2 optimizedBody875_24

def optimizedBody875_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody875_1, 875, 2)) (some 874) ([2]) (some (2, optimizedBody875_25, 875, 3))

def optimizedBody875_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody875_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody875_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody875_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_28 optimizedBody875_29

def optimizedBody875_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_27 optimizedBody875_30

def optimizedBody875_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_6 optimizedBody875_31

def optimizedBody875_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_26 optimizedBody875_32

def optimizedBody875_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody875_0 optimizedBody875_33

def oracle875 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
def optimized875 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(875, 2, optimizedBody875_34)
theorem optimize875_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source875, oracle875) = optimized875 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize875_eq
end InitECandidate.Proofs.WordStages
