import InitECandidate.Proofs.WordStages.Optimize431
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source447
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody447_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody447_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody447_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody447_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody447_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody447_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody447_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody447_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody447_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody447_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody447_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_8 optimizedBody447_9

def optimizedBody447_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody447_7, 447, 2)) (some 186) ([2, 4]) (some (2, optimizedBody447_10, 447, 3))

def optimizedBody447_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody447_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody447_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody447_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody447_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody447_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_15 optimizedBody447_16

def optimizedBody447_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_17

def optimizedBody447_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody447_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody447_18 optimizedBody447_19

def optimizedBody447_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody447_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody447_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody447_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_23 optimizedBody447_9

def optimizedBody447_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody447_22, 447, 4)) (some 396) ([2]) (some (2, optimizedBody447_24, 447, 5))

def optimizedBody447_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody447_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody447_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody447_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_28 optimizedBody447_9

def optimizedBody447_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody447_27, 447, 6)) (some 398) ([2]) (some (2, optimizedBody447_29, 447, 7))

def optimizedBody447_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody447_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_15 optimizedBody447_31

def optimizedBody447_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_32

def optimizedBody447_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_30 optimizedBody447_33

def optimizedBody447_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_26 optimizedBody447_34

def optimizedBody447_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_35

def optimizedBody447_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_25 optimizedBody447_36

def optimizedBody447_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_21 optimizedBody447_37

def optimizedBody447_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_38

def optimizedBody447_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_39

def optimizedBody447_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_20 optimizedBody447_40

def optimizedBody447_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_14 optimizedBody447_41

def optimizedBody447_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_13 optimizedBody447_42

def optimizedBody447_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_12 optimizedBody447_43

def optimizedBody447_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_11 optimizedBody447_44

def optimizedBody447_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_6 optimizedBody447_45

def optimizedBody447_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_5 optimizedBody447_46

def optimizedBody447_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_4 optimizedBody447_47

def optimizedBody447_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_3 optimizedBody447_48

def optimizedBody447_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_2 optimizedBody447_49

def optimizedBody447_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_1 optimizedBody447_50

def optimizedBody447_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody447_0 optimizedBody447_51

def oracle447 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 1
            (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)))))
def optimized447 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(447, 2, optimizedBody447_52)
theorem optimize447_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source447, oracle447) = optimized447 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize447_eq
end InitECandidate.Proofs.WordStages
