import InitECandidate.Proofs.WordStages.Optimize432
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source448
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody448_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2), (6, 4)]

def optimizedBody448_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody448_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody448_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody448_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody448_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody448_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 6), (48, 4)]

def optimizedBody448_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody448_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody448_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody448_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_8 optimizedBody448_9

def optimizedBody448_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody448_7, 448, 2)) (some 409) ([2, 4, 6]) (some (2, optimizedBody448_10, 448, 3))

def optimizedBody448_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody448_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody448_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody448_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody448_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody448_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody448_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody448_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody448_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody448_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody448_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_20 optimizedBody448_21

def optimizedBody448_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_19 optimizedBody448_22

def optimizedBody448_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_15 optimizedBody448_23

def optimizedBody448_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_18 optimizedBody448_24

def optimizedBody448_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_15 optimizedBody448_25

def optimizedBody448_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_17 optimizedBody448_26

def optimizedBody448_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_15 optimizedBody448_27

def optimizedBody448_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_16 optimizedBody448_28

def optimizedBody448_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_15 optimizedBody448_29

def optimizedBody448_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_30

def optimizedBody448_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody448_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody448_31 optimizedBody448_32

def optimizedBody448_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody448_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody448_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody448_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_36 optimizedBody448_9

def optimizedBody448_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody448_35, 448, 4)) (some 396) ([2]) (some (2, optimizedBody448_37, 448, 5))

def optimizedBody448_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody448_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (8, 8), (4, 4), (0, 44)]

def optimizedBody448_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody448_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_41 optimizedBody448_9

def optimizedBody448_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody448_40, 448, 6)) (some 401) ([2, 4]) (some (2, optimizedBody448_42, 448, 7))

def optimizedBody448_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody448_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody448_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_44 optimizedBody448_45

def optimizedBody448_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_46

def optimizedBody448_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_43 optimizedBody448_47

def optimizedBody448_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_39 optimizedBody448_48

def optimizedBody448_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_49

def optimizedBody448_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_38 optimizedBody448_50

def optimizedBody448_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_34 optimizedBody448_51

def optimizedBody448_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_52

def optimizedBody448_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_53

def optimizedBody448_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_33 optimizedBody448_54

def optimizedBody448_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_14 optimizedBody448_55

def optimizedBody448_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_13 optimizedBody448_56

def optimizedBody448_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_12 optimizedBody448_57

def optimizedBody448_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_11 optimizedBody448_58

def optimizedBody448_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_6 optimizedBody448_59

def optimizedBody448_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_5 optimizedBody448_60

def optimizedBody448_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_4 optimizedBody448_61

def optimizedBody448_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_3 optimizedBody448_62

def optimizedBody448_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_2 optimizedBody448_63

def optimizedBody448_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_1 optimizedBody448_64

def optimizedBody448_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody448_0 optimizedBody448_65

def oracle448 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.ls 3))) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))) 3
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 2
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized448 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(448, 3, optimizedBody448_66)
theorem optimize448_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source448, oracle448) = optimized448 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize448_eq
end InitECandidate.Proofs.WordStages
