import InitECandidate.Proofs.WordStages.Optimize159
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source175
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody175_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody175_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 55#64)

def optimizedBody175_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody175_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody175_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody175_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody175_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody175_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_5 optimizedBody175_6

def optimizedBody175_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_4 optimizedBody175_7

def optimizedBody175_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_3 optimizedBody175_8

def optimizedBody175_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody175_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody175_9 optimizedBody175_10

def optimizedBody175_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0)]

def optimizedBody175_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody175_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody175_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody175_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_14 optimizedBody175_15

def optimizedBody175_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody175_13, 175, 2)) (some 172) ([2]) (some (2, optimizedBody175_16, 175, 3))

def optimizedBody175_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody175_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody175_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody175_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_5 optimizedBody175_20

def optimizedBody175_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_19 optimizedBody175_21

def optimizedBody175_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_18 optimizedBody175_22

def optimizedBody175_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_3 optimizedBody175_23

def optimizedBody175_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_17 optimizedBody175_24

def optimizedBody175_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_12 optimizedBody175_25

def optimizedBody175_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_3 optimizedBody175_26

def optimizedBody175_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_3 optimizedBody175_27

def optimizedBody175_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_11 optimizedBody175_28

def optimizedBody175_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_2 optimizedBody175_29

def optimizedBody175_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_1 optimizedBody175_30

def optimizedBody175_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody175_0 optimizedBody175_31

def oracle175 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        Flapjack.Spt.ln)))
def optimized175 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(175, 2, optimizedBody175_32)
theorem optimize175_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source175, oracle175) = optimized175 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize175_eq
end InitECandidate.Proofs.WordStages
