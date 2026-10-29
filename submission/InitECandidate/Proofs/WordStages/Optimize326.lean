import InitECandidate.Proofs.WordStages.Optimize310
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source326
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody326_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody326_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody326_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody326_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody326_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody326_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody326_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody326_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody326_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_6 optimizedBody326_7

def optimizedBody326_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_5 optimizedBody326_8

def optimizedBody326_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_9

def optimizedBody326_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_7

def optimizedBody326_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody326_10 optimizedBody326_11

def optimizedBody326_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody326_14 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 179) ([0, 2, 4]) (none)

def optimizedBody326_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_13 optimizedBody326_14

def optimizedBody326_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_4 optimizedBody326_15

def optimizedBody326_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_12 optimizedBody326_16

def optimizedBody326_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_3 optimizedBody326_17

def optimizedBody326_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_2 optimizedBody326_18

def optimizedBody326_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_1 optimizedBody326_19

def optimizedBody326_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody326_0 optimizedBody326_20

def oracle326 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4))))
      Flapjack.Spt.ln))
def optimized326 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(326, 3, optimizedBody326_21)
theorem optimize326_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source326, oracle326) = optimized326 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize326_eq
end InitECandidate.Proofs.WordStages
