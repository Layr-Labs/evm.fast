import InitECandidate.Proofs.WordStages.Optimize402
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source418
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody418_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody418_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody418_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody418_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody418_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_2 optimizedBody418_3

def optimizedBody418_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody418_1, 418, 2)) (some 406) ([2]) (some (2, optimizedBody418_4, 418, 3))

def optimizedBody418_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody418_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody418_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody418_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody418_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody418_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody418_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_10 optimizedBody418_11

def optimizedBody418_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_9 optimizedBody418_12

def optimizedBody418_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_13

def optimizedBody418_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody418_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody418_14 optimizedBody418_15

def optimizedBody418_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 4)]

def optimizedBody418_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody418_1, 418, 4)) (some 416) ([2]) (some (2, optimizedBody418_4, 418, 5))

def optimizedBody418_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody418_14 optimizedBody418_15

def optimizedBody418_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_8 optimizedBody418_12

def optimizedBody418_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_20

def optimizedBody418_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_21

def optimizedBody418_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_19 optimizedBody418_22

def optimizedBody418_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_9 optimizedBody418_23

def optimizedBody418_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_7 optimizedBody418_24

def optimizedBody418_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_25

def optimizedBody418_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_18 optimizedBody418_26

def optimizedBody418_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_17 optimizedBody418_27

def optimizedBody418_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_28

def optimizedBody418_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_29

def optimizedBody418_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_16 optimizedBody418_30

def optimizedBody418_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_8 optimizedBody418_31

def optimizedBody418_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_7 optimizedBody418_32

def optimizedBody418_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_6 optimizedBody418_33

def optimizedBody418_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_5 optimizedBody418_34

def optimizedBody418_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_0 optimizedBody418_35

def oracle418 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized418 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(418, 2, optimizedBody418_36)
theorem optimize418_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source418, oracle418) = optimized418 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize418_eq
end InitECandidate.Proofs.WordStages
