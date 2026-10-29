import InitECandidate.Proofs.WordStages.Optimize388
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source404
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody404_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody404_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody404_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody404_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody404_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody404_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody404_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody404_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody404_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4)]

def optimizedBody404_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody404_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody404_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody404_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_10 optimizedBody404_11

def optimizedBody404_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody404_9, 404, 2)) (some 192) ([2, 4, 6]) (some (2, optimizedBody404_12, 404, 3))

def optimizedBody404_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody404_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody404_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody404_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody404_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody404_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody404_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody404_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody404_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody404_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_22 optimizedBody404_11

def optimizedBody404_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody404_21, 404, 4)) (some 186) ([2, 4]) (some (2, optimizedBody404_23, 404, 5))

def optimizedBody404_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody404_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody404_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody404_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody404_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_27 optimizedBody404_28

def optimizedBody404_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_29

def optimizedBody404_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody404_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody404_30 optimizedBody404_31

def optimizedBody404_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody404_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody404_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody404_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_35 optimizedBody404_11

def optimizedBody404_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody404_34, 404, 6)) (some 396) ([2]) (some (2, optimizedBody404_36, 404, 7))

def optimizedBody404_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody404_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody404_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody404_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_40 optimizedBody404_11

def optimizedBody404_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody404_39, 404, 8)) (some 398) ([2]) (some (2, optimizedBody404_41, 404, 9))

def optimizedBody404_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody404_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_27 optimizedBody404_43

def optimizedBody404_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_44

def optimizedBody404_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_42 optimizedBody404_45

def optimizedBody404_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_38 optimizedBody404_46

def optimizedBody404_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_47

def optimizedBody404_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_37 optimizedBody404_48

def optimizedBody404_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_33 optimizedBody404_49

def optimizedBody404_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_50

def optimizedBody404_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_51

def optimizedBody404_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_32 optimizedBody404_52

def optimizedBody404_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_26 optimizedBody404_53

def optimizedBody404_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_25 optimizedBody404_54

def optimizedBody404_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_55

def optimizedBody404_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_24 optimizedBody404_56

def optimizedBody404_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_20 optimizedBody404_57

def optimizedBody404_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_19 optimizedBody404_58

def optimizedBody404_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_18 optimizedBody404_59

def optimizedBody404_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_17 optimizedBody404_60

def optimizedBody404_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_16 optimizedBody404_61

def optimizedBody404_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_15 optimizedBody404_62

def optimizedBody404_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_14 optimizedBody404_63

def optimizedBody404_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_13 optimizedBody404_64

def optimizedBody404_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_8 optimizedBody404_65

def optimizedBody404_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_7 optimizedBody404_66

def optimizedBody404_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_6 optimizedBody404_67

def optimizedBody404_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_5 optimizedBody404_68

def optimizedBody404_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_4 optimizedBody404_69

def optimizedBody404_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_3 optimizedBody404_70

def optimizedBody404_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_2 optimizedBody404_71

def optimizedBody404_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_1 optimizedBody404_72

def optimizedBody404_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody404_0 optimizedBody404_73

def oracle404 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def optimized404 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(404, 2, optimizedBody404_74)
theorem optimize404_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source404, oracle404) = optimized404 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize404_eq
end InitECandidate.Proofs.WordStages
