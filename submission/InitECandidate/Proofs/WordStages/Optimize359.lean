import InitECandidate.Proofs.WordStages.Optimize343
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source359
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody359_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody359_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody359_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody359_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody359_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody359_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody359_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody359_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody359_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_3 optimizedBody359_7

def optimizedBody359_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_6 optimizedBody359_8

def optimizedBody359_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_5 optimizedBody359_9

def optimizedBody359_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_4 optimizedBody359_10

def optimizedBody359_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_3 optimizedBody359_11

def optimizedBody359_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_12

def optimizedBody359_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody359_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody359_13 optimizedBody359_14

def optimizedBody359_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody359_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody359_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody359_19 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 2, 4, 6]) (none)

def optimizedBody359_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_18 optimizedBody359_19

def optimizedBody359_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_17 optimizedBody359_20

def optimizedBody359_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_16 optimizedBody359_21

def optimizedBody359_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_22

def optimizedBody359_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_2 optimizedBody359_23

def optimizedBody359_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_15 optimizedBody359_24

def optimizedBody359_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_1 optimizedBody359_25

def optimizedBody359_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody359_0 optimizedBody359_26

def oracle359 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4))))
      Flapjack.Spt.ln))
def optimized359 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(359, 3, optimizedBody359_27)
theorem optimize359_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source359, oracle359) = optimized359 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize359_eq
end InitECandidate.Proofs.WordStages
