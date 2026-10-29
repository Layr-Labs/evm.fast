import InitECandidate.Proofs.WordStages.Optimize389
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source405
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody405_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody405_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody405_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody405_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody405_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_2 optimizedBody405_3

def optimizedBody405_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody405_1, 405, 2)) (some 404) ([2]) (some (2, optimizedBody405_4, 405, 3))

def optimizedBody405_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody405_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody405_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody405_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody405_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody405_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody405_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_11 optimizedBody405_3

def optimizedBody405_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody405_10, 405, 4)) (some 394) ([]) (some (2, optimizedBody405_12, 405, 5))

def optimizedBody405_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody405_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_6 optimizedBody405_14

def optimizedBody405_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_13 optimizedBody405_15

def optimizedBody405_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_9 optimizedBody405_16

def optimizedBody405_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_6 optimizedBody405_17

def optimizedBody405_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody405_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_6 optimizedBody405_19

def optimizedBody405_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody405_18 optimizedBody405_20

def optimizedBody405_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody405_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody405_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_22 optimizedBody405_23

def optimizedBody405_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_6 optimizedBody405_24

def optimizedBody405_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_21 optimizedBody405_25

def optimizedBody405_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_8 optimizedBody405_26

def optimizedBody405_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_7 optimizedBody405_27

def optimizedBody405_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_6 optimizedBody405_28

def optimizedBody405_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_5 optimizedBody405_29

def optimizedBody405_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody405_0 optimizedBody405_30

def oracle405 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized405 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(405, 2, optimizedBody405_31)
theorem optimize405_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source405, oracle405) = optimized405 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize405_eq
end InitECandidate.Proofs.WordStages
