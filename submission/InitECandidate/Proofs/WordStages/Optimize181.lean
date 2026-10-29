import InitECandidate.Proofs.WordStages.Optimize165
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source181
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody181_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody181_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody181_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody181_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody181_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody181_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody181_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_4 optimizedBody181_5

def optimizedBody181_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_3 optimizedBody181_6

def optimizedBody181_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_2 optimizedBody181_7

def optimizedBody181_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody181_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody181_8 optimizedBody181_9

def optimizedBody181_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0)]

def optimizedBody181_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody181_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody181_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody181_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_13 optimizedBody181_14

def optimizedBody181_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody181_12, 181, 2)) (some 172) ([2]) (some (2, optimizedBody181_15, 181, 3))

def optimizedBody181_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody181_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody181_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody181_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_4 optimizedBody181_19

def optimizedBody181_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_18 optimizedBody181_20

def optimizedBody181_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_17 optimizedBody181_21

def optimizedBody181_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_2 optimizedBody181_22

def optimizedBody181_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_16 optimizedBody181_23

def optimizedBody181_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_11 optimizedBody181_24

def optimizedBody181_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_2 optimizedBody181_25

def optimizedBody181_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_2 optimizedBody181_26

def optimizedBody181_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_10 optimizedBody181_27

def optimizedBody181_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_1 optimizedBody181_28

def optimizedBody181_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody181_0 optimizedBody181_29

def oracle181 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        Flapjack.Spt.ln)))
def optimized181 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(181, 2, optimizedBody181_30)
theorem optimize181_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source181, oracle181) = optimized181 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize181_eq
end InitECandidate.Proofs.WordStages
