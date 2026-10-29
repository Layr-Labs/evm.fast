import InitECandidate.Proofs.WordStages.Optimize315
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source331
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody331_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody331_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody331_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody331_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody331_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody331_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody331_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody331_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody331_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody331_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551488#64))

def optimizedBody331_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody331_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (48, 0)]

def optimizedBody331_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody331_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 48)]

def optimizedBody331_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody331_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_13 optimizedBody331_14

def optimizedBody331_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody331_12, 331, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody331_15, 331, 3))

def optimizedBody331_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody331_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody331_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_17 optimizedBody331_18

def optimizedBody331_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_3 optimizedBody331_19

def optimizedBody331_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_4 optimizedBody331_20

def optimizedBody331_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_16 optimizedBody331_21

def optimizedBody331_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_11 optimizedBody331_22

def optimizedBody331_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_10 optimizedBody331_23

def optimizedBody331_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_9 optimizedBody331_24

def optimizedBody331_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_8 optimizedBody331_25

def optimizedBody331_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_7 optimizedBody331_26

def optimizedBody331_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_6 optimizedBody331_27

def optimizedBody331_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_5 optimizedBody331_28

def optimizedBody331_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_4 optimizedBody331_29

def optimizedBody331_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 4), (6, 6), (44, 0)]

def optimizedBody331_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody331_30 optimizedBody331_31

def optimizedBody331_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46)]

def optimizedBody331_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody331_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody331_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_35 optimizedBody331_14

def optimizedBody331_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody331_34, 331, 4)) (some 330) ([2]) (some (2, optimizedBody331_36, 331, 5))

def optimizedBody331_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody331_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody331_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody331_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody331_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_41 optimizedBody331_14

def optimizedBody331_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody331_40, 331, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody331_42, 331, 7))

def optimizedBody331_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_43 optimizedBody331_21

def optimizedBody331_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_39 optimizedBody331_44

def optimizedBody331_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_10 optimizedBody331_45

def optimizedBody331_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_38 optimizedBody331_46

def optimizedBody331_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_4 optimizedBody331_47

def optimizedBody331_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_37 optimizedBody331_48

def optimizedBody331_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_33 optimizedBody331_49

def optimizedBody331_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_4 optimizedBody331_50

def optimizedBody331_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_4 optimizedBody331_51

def optimizedBody331_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_32 optimizedBody331_52

def optimizedBody331_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_3 optimizedBody331_53

def optimizedBody331_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_2 optimizedBody331_54

def optimizedBody331_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_1 optimizedBody331_55

def optimizedBody331_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody331_0 optimizedBody331_56

def oracle331 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))
def optimized331 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(331, 3, optimizedBody331_57)
theorem optimize331_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source331, oracle331) = optimized331 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize331_eq
end InitECandidate.Proofs.WordStages
