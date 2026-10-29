import InitECandidate.Proofs.WordStages.Optimize508
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source524
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody524_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody524_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody524_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody524_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody524_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody524_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody524_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody524_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody524_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody524_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody524_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody524_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody524_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody524_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody524_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_12 optimizedBody524_13

def optimizedBody524_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody524_11, 524, 2)) (some 490) ([2]) (some (2, optimizedBody524_14, 524, 3))

def optimizedBody524_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody524_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody524_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody524_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_7 optimizedBody524_18

def optimizedBody524_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_17 optimizedBody524_19

def optimizedBody524_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_16 optimizedBody524_20

def optimizedBody524_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_15 optimizedBody524_21

def optimizedBody524_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_10 optimizedBody524_22

def optimizedBody524_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_9 optimizedBody524_23

def optimizedBody524_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_8 optimizedBody524_24

def optimizedBody524_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_7 optimizedBody524_25

def optimizedBody524_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_6 optimizedBody524_26

def optimizedBody524_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_5 optimizedBody524_27

def optimizedBody524_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_4 optimizedBody524_28

def optimizedBody524_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_3 optimizedBody524_29

def optimizedBody524_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_2 optimizedBody524_30

def optimizedBody524_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_1 optimizedBody524_31

def optimizedBody524_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody524_0 optimizedBody524_32

def oracle524 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 1
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
def optimized524 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(524, 1, optimizedBody524_33)
theorem optimize524_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source524, oracle524) = optimized524 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize524_eq
end InitECandidate.Proofs.WordStages
