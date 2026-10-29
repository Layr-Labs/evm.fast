import InitECandidate.Proofs.WordStages.Optimize342
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source358
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody358_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 2)]

def optimizedBody358_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody358_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody358_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody358_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_2 optimizedBody358_3

def optimizedBody358_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody358_1, 358, 2)) (some 139) ([2, 4, 6, 8]) (some (2, optimizedBody358_4, 358, 3))

def optimizedBody358_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody358_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody358_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody358_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody358_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody358_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody358_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_10 optimizedBody358_11

def optimizedBody358_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_9 optimizedBody358_12

def optimizedBody358_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_13

def optimizedBody358_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody358_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody358_14 optimizedBody358_15

def optimizedBody358_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody358_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody358_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody358_14 optimizedBody358_15

def optimizedBody358_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_6

def optimizedBody358_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_19 optimizedBody358_20

def optimizedBody358_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_18 optimizedBody358_21

def optimizedBody358_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_17 optimizedBody358_22

def optimizedBody358_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_23

def optimizedBody358_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody358_24 optimizedBody358_6

def optimizedBody358_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody358_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_26 optimizedBody358_12

def optimizedBody358_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_7 optimizedBody358_27

def optimizedBody358_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_28

def optimizedBody358_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_25 optimizedBody358_29

def optimizedBody358_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_9 optimizedBody358_30

def optimizedBody358_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_7 optimizedBody358_31

def optimizedBody358_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_32

def optimizedBody358_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_33

def optimizedBody358_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_16 optimizedBody358_34

def optimizedBody358_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_8 optimizedBody358_35

def optimizedBody358_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_7 optimizedBody358_36

def optimizedBody358_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_6 optimizedBody358_37

def optimizedBody358_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_5 optimizedBody358_38

def optimizedBody358_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody358_0 optimizedBody358_39

def oracle358 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def optimized358 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(358, 5, optimizedBody358_40)
theorem optimize358_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source358, oracle358) = optimized358 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize358_eq
end InitECandidate.Proofs.WordStages
