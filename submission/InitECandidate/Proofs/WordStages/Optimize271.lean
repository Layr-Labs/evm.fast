import InitECandidate.Proofs.WordStages.Optimize255
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source271
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody271_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody271_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44)]

def optimizedBody271_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody271_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody271_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_2 optimizedBody271_3

def optimizedBody271_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody271_1, 271, 2)) (some 269) ([2, 4, 6]) (some (2, optimizedBody271_4, 271, 3))

def optimizedBody271_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody271_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 32#64)

def optimizedBody271_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody271_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody271_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody271_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody271_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody271_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody271_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_13 optimizedBody271_3

def optimizedBody271_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_12 optimizedBody271_14

def optimizedBody271_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_11 optimizedBody271_15

def optimizedBody271_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_10 optimizedBody271_16

def optimizedBody271_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_9 optimizedBody271_17

def optimizedBody271_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_18

def optimizedBody271_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody271_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody271_19 optimizedBody271_20

def optimizedBody271_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody271_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (8, 8), (4, 4), (0, 44)]

def optimizedBody271_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody271_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_24 optimizedBody271_3

def optimizedBody271_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody271_23, 271, 4)) (some 146) ([2, 4]) (some (2, optimizedBody271_25, 271, 5))

def optimizedBody271_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody271_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody271_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_27 optimizedBody271_28

def optimizedBody271_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_29

def optimizedBody271_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_26 optimizedBody271_30

def optimizedBody271_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_22 optimizedBody271_31

def optimizedBody271_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_32

def optimizedBody271_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_33

def optimizedBody271_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_21 optimizedBody271_34

def optimizedBody271_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_8 optimizedBody271_35

def optimizedBody271_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_7 optimizedBody271_36

def optimizedBody271_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_6 optimizedBody271_37

def optimizedBody271_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_5 optimizedBody271_38

def optimizedBody271_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody271_0 optimizedBody271_39

def oracle271 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))
def optimized271 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(271, 4, optimizedBody271_40)
theorem optimize271_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source271, oracle271) = optimized271 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize271_eq
end InitECandidate.Proofs.WordStages
