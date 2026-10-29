import InitECandidate.Proofs.WordStages.Optimize511
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source527
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody527_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody527_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody527_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody527_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody527_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody527_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody527_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_4 optimizedBody527_5

def optimizedBody527_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_3, 527, 2)) (some 470) ([2]) (some (2, optimizedBody527_6, 527, 3))

def optimizedBody527_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody527_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody527_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody527_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody527_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody527_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody527_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_3, 527, 4)) (some 477) ([2]) (some (2, optimizedBody527_6, 527, 5))

def optimizedBody527_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody527_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody527_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody527_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_17 optimizedBody527_5

def optimizedBody527_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_16, 527, 6)) (some 490) ([2]) (some (2, optimizedBody527_18, 527, 7))

def optimizedBody527_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody527_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody527_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody527_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_21 optimizedBody527_22

def optimizedBody527_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_20 optimizedBody527_23

def optimizedBody527_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_8 optimizedBody527_24

def optimizedBody527_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_19 optimizedBody527_25

def optimizedBody527_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_4 optimizedBody527_26

def optimizedBody527_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_15 optimizedBody527_27

def optimizedBody527_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_8 optimizedBody527_28

def optimizedBody527_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_14 optimizedBody527_29

def optimizedBody527_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_4 optimizedBody527_30

def optimizedBody527_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_13 optimizedBody527_31

def optimizedBody527_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_12 optimizedBody527_32

def optimizedBody527_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_11 optimizedBody527_33

def optimizedBody527_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_10 optimizedBody527_34

def optimizedBody527_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_9 optimizedBody527_35

def optimizedBody527_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_8 optimizedBody527_36

def optimizedBody527_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_7 optimizedBody527_37

def optimizedBody527_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_2 optimizedBody527_38

def optimizedBody527_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_1 optimizedBody527_39

def optimizedBody527_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_0 optimizedBody527_40

def oracle527 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))))
def optimized527 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(527, 1, optimizedBody527_41)
theorem optimize527_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source527, oracle527) = optimized527 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize527_eq
end InitECandidate.Proofs.WordStages
