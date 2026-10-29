import InitECandidate.Proofs.WordStages.Optimize156
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source172
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody172_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody172_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody172_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody172_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2), (4, 4)]

def optimizedBody172_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody172_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody172_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody172_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody172_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody172_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody172_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody172_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_9 optimizedBody172_10

def optimizedBody172_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_8 optimizedBody172_11

def optimizedBody172_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_7 optimizedBody172_12

def optimizedBody172_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_6 optimizedBody172_13

def optimizedBody172_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_4 optimizedBody172_14

def optimizedBody172_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_2 optimizedBody172_15

def optimizedBody172_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody172_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_2 optimizedBody172_17

def optimizedBody172_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody172_16 optimizedBody172_18

def optimizedBody172_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_2 optimizedBody172_9

def optimizedBody172_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_19 optimizedBody172_20

def optimizedBody172_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_5 optimizedBody172_21

def optimizedBody172_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_4 optimizedBody172_22

def optimizedBody172_24 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) optimizedBody172_23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def optimizedBody172_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody172_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody172_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_25 optimizedBody172_26

def optimizedBody172_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_2 optimizedBody172_27

def optimizedBody172_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_24 optimizedBody172_28

def optimizedBody172_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_3 optimizedBody172_29

def optimizedBody172_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_2 optimizedBody172_30

def optimizedBody172_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_1 optimizedBody172_31

def optimizedBody172_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody172_0 optimizedBody172_32

def oracle172 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized172 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(172, 2, optimizedBody172_33)
theorem optimize172_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source172, oracle172) = optimized172 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize172_eq
end InitECandidate.Proofs.WordStages
