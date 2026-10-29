import InitECandidate.Proofs.WordStages.Optimize448
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source464
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody464_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody464_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 2 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody464_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody464_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody464_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody464_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody464_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody464_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_5 optimizedBody464_6

def optimizedBody464_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_4 optimizedBody464_7

def optimizedBody464_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody464_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody464_8 optimizedBody464_9

def optimizedBody464_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody464_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody464_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody464_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody464_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody464_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody464_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody464_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_16 optimizedBody464_17

def optimizedBody464_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody464_15, 464, 2)) (some 463) ([2, 4]) (some (2, optimizedBody464_18, 464, 3))

def optimizedBody464_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody464_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_20 optimizedBody464_6

def optimizedBody464_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_4 optimizedBody464_21

def optimizedBody464_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_19 optimizedBody464_22

def optimizedBody464_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_14 optimizedBody464_23

def optimizedBody464_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_13 optimizedBody464_24

def optimizedBody464_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_2 optimizedBody464_25

def optimizedBody464_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_12 optimizedBody464_26

def optimizedBody464_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_11 optimizedBody464_27

def optimizedBody464_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_4 optimizedBody464_28

def optimizedBody464_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_4 optimizedBody464_29

def optimizedBody464_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_10 optimizedBody464_30

def optimizedBody464_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_3 optimizedBody464_31

def optimizedBody464_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_2 optimizedBody464_32

def optimizedBody464_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_1 optimizedBody464_33

def optimizedBody464_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody464_0 optimizedBody464_34

def oracle464 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 2))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized464 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(464, 2, optimizedBody464_35)
theorem optimize464_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source464, oracle464) = optimized464 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize464_eq
end InitECandidate.Proofs.WordStages
