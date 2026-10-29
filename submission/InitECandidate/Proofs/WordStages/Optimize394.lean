import InitECandidate.Proofs.WordStages.Optimize378
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source394
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody394_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody394_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody394_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody394_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody394_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 18446744073709551480#64))

def optimizedBody394_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody394_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody394_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody394_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody394_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody394_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0)]

def optimizedBody394_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody394_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody394_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody394_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_12 optimizedBody394_13

def optimizedBody394_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody394_11, 394, 2)) (some 393) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody394_14, 394, 3))

def optimizedBody394_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody394_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody394_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody394_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_17 optimizedBody394_18

def optimizedBody394_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_16 optimizedBody394_19

def optimizedBody394_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_15 optimizedBody394_20

def optimizedBody394_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_10 optimizedBody394_21

def optimizedBody394_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_9 optimizedBody394_22

def optimizedBody394_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_8 optimizedBody394_23

def optimizedBody394_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_7 optimizedBody394_24

def optimizedBody394_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_6 optimizedBody394_25

def optimizedBody394_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_5 optimizedBody394_26

def optimizedBody394_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_4 optimizedBody394_27

def optimizedBody394_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_3 optimizedBody394_28

def optimizedBody394_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_2 optimizedBody394_29

def optimizedBody394_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_1 optimizedBody394_30

def optimizedBody394_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody394_0 optimizedBody394_31

def oracle394 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def optimized394 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(394, 1, optimizedBody394_32)
theorem optimize394_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source394, oracle394) = optimized394 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize394_eq
end InitECandidate.Proofs.WordStages
