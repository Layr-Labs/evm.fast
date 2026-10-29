import InitECandidate.Proofs.WordStages.Optimize855
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source871
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody871_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody871_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody871_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody871_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody871_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody871_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_3 optimizedBody871_4

def optimizedBody871_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody871_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody871_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody871_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2688614470#64)

def optimizedBody871_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 0 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody871_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody871_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody871_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9#64)

def optimizedBody871_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_13 optimizedBody871_5

def optimizedBody871_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_12 optimizedBody871_14

def optimizedBody871_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_8 optimizedBody871_15

def optimizedBody871_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_11 optimizedBody871_16

def optimizedBody871_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_10 optimizedBody871_17

def optimizedBody871_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_9 optimizedBody871_18

def optimizedBody871_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_8 optimizedBody871_19

def optimizedBody871_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_7 optimizedBody871_20

def optimizedBody871_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_6 optimizedBody871_21

def optimizedBody871_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 3#64) optimizedBody871_5 optimizedBody871_22

def optimizedBody871_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_23 optimizedBody871_6

def optimizedBody871_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_2 optimizedBody871_24

def optimizedBody871_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody871_1, 871, 2)) (some 870) ([2]) (some (2, optimizedBody871_25, 871, 3))

def optimizedBody871_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody871_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody871_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody871_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_28 optimizedBody871_29

def optimizedBody871_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_27 optimizedBody871_30

def optimizedBody871_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_6 optimizedBody871_31

def optimizedBody871_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_26 optimizedBody871_32

def optimizedBody871_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_0 optimizedBody871_33

def oracle871 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
def optimized871 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(871, 2, optimizedBody871_34)
theorem optimize871_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source871, oracle871) = optimized871 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize871_eq
end InitECandidate.Proofs.WordStages
