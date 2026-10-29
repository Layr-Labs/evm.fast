import InitECandidate.Proofs.WordStages.Optimize462
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source478
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody478_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody478_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody478_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody478_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody478_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody478_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody478_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0)]

def optimizedBody478_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody478_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody478_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody478_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_8 optimizedBody478_9

def optimizedBody478_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody478_7, 478, 2)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody478_10, 478, 3))

def optimizedBody478_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody478_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_12

def optimizedBody478_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_11 optimizedBody478_13

def optimizedBody478_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_14

def optimizedBody478_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_5 optimizedBody478_15

def optimizedBody478_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_16

def optimizedBody478_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_4 optimizedBody478_17

def optimizedBody478_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_3 optimizedBody478_18

def optimizedBody478_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_19

def optimizedBody478_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody478_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody478_7, 478, 4)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody478_10, 478, 5))

def optimizedBody478_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_22 optimizedBody478_13

def optimizedBody478_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_6 optimizedBody478_23

def optimizedBody478_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_21 optimizedBody478_24

def optimizedBody478_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_25

def optimizedBody478_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_4 optimizedBody478_26

def optimizedBody478_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_3 optimizedBody478_27

def optimizedBody478_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_28

def optimizedBody478_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody478_20 optimizedBody478_29

def optimizedBody478_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody478_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody478_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_31 optimizedBody478_32

def optimizedBody478_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_21 optimizedBody478_33

def optimizedBody478_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_2 optimizedBody478_34

def optimizedBody478_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_30 optimizedBody478_35

def optimizedBody478_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_1 optimizedBody478_36

def optimizedBody478_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody478_0 optimizedBody478_37

def oracle478 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized478 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(478, 2, optimizedBody478_38)
theorem optimize478_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source478, oracle478) = optimized478 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize478_eq
end InitECandidate.Proofs.WordStages
