import InitECandidate.Proofs.WordStages.Optimize401
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source417
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody417_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody417_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody417_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody417_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody417_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_2 optimizedBody417_3

def optimizedBody417_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody417_1, 417, 2)) (some 406) ([2]) (some (2, optimizedBody417_4, 417, 3))

def optimizedBody417_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody417_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody417_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody417_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody417_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody417_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody417_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_11

def optimizedBody417_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_9 optimizedBody417_12

def optimizedBody417_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_13

def optimizedBody417_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody417_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody417_14 optimizedBody417_15

def optimizedBody417_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 4)]

def optimizedBody417_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody417_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody417_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_19 optimizedBody417_3

def optimizedBody417_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody417_18, 417, 4)) (some 416) ([2]) (some (2, optimizedBody417_20, 417, 5))

def optimizedBody417_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody417_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody417_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_22 optimizedBody417_23

def optimizedBody417_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_24

def optimizedBody417_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_21 optimizedBody417_25

def optimizedBody417_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_17 optimizedBody417_26

def optimizedBody417_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_27

def optimizedBody417_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_28

def optimizedBody417_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_16 optimizedBody417_29

def optimizedBody417_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_8 optimizedBody417_30

def optimizedBody417_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_7 optimizedBody417_31

def optimizedBody417_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_32

def optimizedBody417_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_5 optimizedBody417_33

def optimizedBody417_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_0 optimizedBody417_34

def oracle417 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized417 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(417, 2, optimizedBody417_35)
theorem optimize417_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source417, oracle417) = optimized417 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize417_eq
end InitECandidate.Proofs.WordStages
