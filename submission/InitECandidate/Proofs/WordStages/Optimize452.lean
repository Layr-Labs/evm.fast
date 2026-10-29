import InitECandidate.Proofs.WordStages.Optimize436
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source452
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody452_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody452_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody452_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody452_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody452_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody452_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (44, 0), (46, 8), (48, 4), (50, 6)]

def optimizedBody452_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (4, 4), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody452_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody452_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody452_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_7 optimizedBody452_8

def optimizedBody452_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody452_6, 452, 2)) (some 186) ([2, 4]) (some (2, optimizedBody452_9, 452, 3))

def optimizedBody452_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody452_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody452_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody452_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody452_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody452_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_14 optimizedBody452_15

def optimizedBody452_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_13 optimizedBody452_16

def optimizedBody452_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_11 optimizedBody452_17

def optimizedBody452_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody452_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody452_18 optimizedBody452_19

def optimizedBody452_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody452_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody452_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody452_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (6, 6), (44, 12)]

def optimizedBody452_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody452_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody452_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_26 optimizedBody452_8

def optimizedBody452_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody452_25, 452, 4)) (some 451) ([2, 4, 6]) (some (2, optimizedBody452_27, 452, 5))

def optimizedBody452_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody452_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_14 optimizedBody452_29

def optimizedBody452_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_13 optimizedBody452_30

def optimizedBody452_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_11 optimizedBody452_31

def optimizedBody452_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_28 optimizedBody452_32

def optimizedBody452_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_24 optimizedBody452_33

def optimizedBody452_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_23 optimizedBody452_34

def optimizedBody452_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_22 optimizedBody452_35

def optimizedBody452_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_21 optimizedBody452_36

def optimizedBody452_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_11 optimizedBody452_37

def optimizedBody452_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_11 optimizedBody452_38

def optimizedBody452_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_20 optimizedBody452_39

def optimizedBody452_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_13 optimizedBody452_40

def optimizedBody452_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_12 optimizedBody452_41

def optimizedBody452_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_11 optimizedBody452_42

def optimizedBody452_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_10 optimizedBody452_43

def optimizedBody452_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_5 optimizedBody452_44

def optimizedBody452_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_4 optimizedBody452_45

def optimizedBody452_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_3 optimizedBody452_46

def optimizedBody452_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_2 optimizedBody452_47

def optimizedBody452_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_1 optimizedBody452_48

def optimizedBody452_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody452_0 optimizedBody452_49

def oracle452 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)) 5
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 6))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))
def optimized452 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(452, 5, optimizedBody452_50)
theorem optimize452_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source452, oracle452) = optimized452 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize452_eq
end InitECandidate.Proofs.WordStages
