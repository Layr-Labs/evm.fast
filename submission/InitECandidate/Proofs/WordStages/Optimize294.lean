import InitECandidate.Proofs.WordStages.Optimize278
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source294
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody294_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody294_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 4), (4, 2), (8, 44)]

def optimizedBody294_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody294_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody294_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_2 optimizedBody294_3

def optimizedBody294_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody294_1, 294, 2)) (some 186) ([2, 4]) (some (2, optimizedBody294_4, 294, 3))

def optimizedBody294_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody294_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody294_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody294_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody294_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody294_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody294_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4, 6]

def optimizedBody294_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_11 optimizedBody294_12

def optimizedBody294_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_10 optimizedBody294_13

def optimizedBody294_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_9 optimizedBody294_14

def optimizedBody294_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_8 optimizedBody294_15

def optimizedBody294_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_6 optimizedBody294_16

def optimizedBody294_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody294_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody294_17 optimizedBody294_18

def optimizedBody294_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody294_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody294_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody294_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody294_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_23 optimizedBody294_13

def optimizedBody294_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_21 optimizedBody294_24

def optimizedBody294_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_22 optimizedBody294_25

def optimizedBody294_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_21 optimizedBody294_26

def optimizedBody294_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_20 optimizedBody294_27

def optimizedBody294_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_6 optimizedBody294_28

def optimizedBody294_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_6 optimizedBody294_29

def optimizedBody294_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_19 optimizedBody294_30

def optimizedBody294_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_8 optimizedBody294_31

def optimizedBody294_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_7 optimizedBody294_32

def optimizedBody294_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_6 optimizedBody294_33

def optimizedBody294_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_5 optimizedBody294_34

def optimizedBody294_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody294_0 optimizedBody294_35

def oracle294 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)))
def optimized294 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(294, 3, optimizedBody294_36)
theorem optimize294_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source294, oracle294) = optimized294 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize294_eq
end InitECandidate.Proofs.WordStages
