import InitECandidate.Proofs.WordStages.Optimize384
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source400
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody400_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody400_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody400_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody400_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody400_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551448#64))

def optimizedBody400_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody400_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 4)]

def optimizedBody400_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (8, 44), (46, 46), (0, 48)]

def optimizedBody400_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (0, 48)]

def optimizedBody400_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody400_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_8 optimizedBody400_9

def optimizedBody400_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody400_7, 400, 2)) (some 186) ([2, 4]) (some (2, optimizedBody400_10, 400, 3))

def optimizedBody400_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody400_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody400_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody400_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody400_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody400_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody400_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody400_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_17 optimizedBody400_18

def optimizedBody400_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_16 optimizedBody400_19

def optimizedBody400_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_15 optimizedBody400_20

def optimizedBody400_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_21

def optimizedBody400_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody400_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody400_22 optimizedBody400_23

def optimizedBody400_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody400_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 46), (48, 0)]

def optimizedBody400_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody400_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody400_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_28 optimizedBody400_9

def optimizedBody400_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody400_27, 400, 4)) (some 305) ([2, 4]) (some (2, optimizedBody400_29, 400, 5))

def optimizedBody400_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody400_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody400_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody400_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody400_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody400_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_35 optimizedBody400_9

def optimizedBody400_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody400_34, 400, 6)) (some 192) ([2, 4, 6]) (some (2, optimizedBody400_36, 400, 7))

def optimizedBody400_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody400_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody400_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_38 optimizedBody400_39

def optimizedBody400_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_40

def optimizedBody400_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_37 optimizedBody400_41

def optimizedBody400_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_33 optimizedBody400_42

def optimizedBody400_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_32 optimizedBody400_43

def optimizedBody400_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_31 optimizedBody400_44

def optimizedBody400_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_45

def optimizedBody400_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_30 optimizedBody400_46

def optimizedBody400_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_26 optimizedBody400_47

def optimizedBody400_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_25 optimizedBody400_48

def optimizedBody400_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_4 optimizedBody400_49

def optimizedBody400_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_3 optimizedBody400_50

def optimizedBody400_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_2 optimizedBody400_51

def optimizedBody400_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_1 optimizedBody400_52

def optimizedBody400_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_53

def optimizedBody400_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_54

def optimizedBody400_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_24 optimizedBody400_55

def optimizedBody400_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_14 optimizedBody400_56

def optimizedBody400_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_13 optimizedBody400_57

def optimizedBody400_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_12 optimizedBody400_58

def optimizedBody400_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_11 optimizedBody400_59

def optimizedBody400_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_6 optimizedBody400_60

def optimizedBody400_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_5 optimizedBody400_61

def optimizedBody400_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_4 optimizedBody400_62

def optimizedBody400_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_3 optimizedBody400_63

def optimizedBody400_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_2 optimizedBody400_64

def optimizedBody400_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_1 optimizedBody400_65

def optimizedBody400_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody400_0 optimizedBody400_66

def oracle400 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln)))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 2
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))))))
def optimized400 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(400, 2, optimizedBody400_67)
theorem optimize400_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source400, oracle400) = optimized400 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize400_eq
end InitECandidate.Proofs.WordStages
