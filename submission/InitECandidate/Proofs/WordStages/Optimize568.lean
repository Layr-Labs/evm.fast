import InitECandidate.Proofs.WordStages.Optimize552
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source568
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody568_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody568_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody568_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody568_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody568_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody568_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody568_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_4 optimizedBody568_5

def optimizedBody568_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_3, 568, 2)) (some 470) ([2]) (some (2, optimizedBody568_6, 568, 3))

def optimizedBody568_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody568_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody568_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody568_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody568_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody568_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody568_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_3, 568, 4)) (some 477) ([2]) (some (2, optimizedBody568_6, 568, 5))

def optimizedBody568_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody568_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody568_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody568_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_17 optimizedBody568_5

def optimizedBody568_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody568_16, 568, 6)) (some 490) ([2]) (some (2, optimizedBody568_18, 568, 7))

def optimizedBody568_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody568_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody568_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody568_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_21 optimizedBody568_22

def optimizedBody568_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_20 optimizedBody568_23

def optimizedBody568_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_8 optimizedBody568_24

def optimizedBody568_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_19 optimizedBody568_25

def optimizedBody568_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_4 optimizedBody568_26

def optimizedBody568_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_15 optimizedBody568_27

def optimizedBody568_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_8 optimizedBody568_28

def optimizedBody568_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_14 optimizedBody568_29

def optimizedBody568_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_4 optimizedBody568_30

def optimizedBody568_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_13 optimizedBody568_31

def optimizedBody568_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_12 optimizedBody568_32

def optimizedBody568_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_11 optimizedBody568_33

def optimizedBody568_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_10 optimizedBody568_34

def optimizedBody568_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_9 optimizedBody568_35

def optimizedBody568_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_8 optimizedBody568_36

def optimizedBody568_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_7 optimizedBody568_37

def optimizedBody568_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_2 optimizedBody568_38

def optimizedBody568_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_1 optimizedBody568_39

def optimizedBody568_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody568_0 optimizedBody568_40

def oracle568 : Option (Spt Nat) :=
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
def optimized568 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(568, 1, optimizedBody568_41)
theorem optimize568_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source568, oracle568) = optimized568 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize568_eq
end InitECandidate.Proofs.WordStages
