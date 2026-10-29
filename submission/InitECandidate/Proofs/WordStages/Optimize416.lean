import InitECandidate.Proofs.WordStages.Optimize400
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source416
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody416_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0)]

def optimizedBody416_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody416_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody416_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody416_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody416_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody416_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody416_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_5 optimizedBody416_6

def optimizedBody416_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_4 optimizedBody416_7

def optimizedBody416_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_8

def optimizedBody416_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody416_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody416_9 optimizedBody416_10

def optimizedBody416_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody416_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody416_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody416_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody416_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody416_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody416_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody416_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8)]

def optimizedBody416_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (10, 44), (0, 46)]

def optimizedBody416_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody416_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody416_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_21 optimizedBody416_22

def optimizedBody416_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_20, 416, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody416_23, 416, 3))

def optimizedBody416_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody416_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody416_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_5 optimizedBody416_26

def optimizedBody416_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_4 optimizedBody416_27

def optimizedBody416_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_28

def optimizedBody416_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody416_29 optimizedBody416_10

def optimizedBody416_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody416_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody416_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody416_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody416_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody416_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 10)]

def optimizedBody416_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody416_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody416_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_38 optimizedBody416_22

def optimizedBody416_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody416_37, 416, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody416_39, 416, 5))

def optimizedBody416_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody416_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_41 optimizedBody416_6

def optimizedBody416_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_42

def optimizedBody416_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_40 optimizedBody416_43

def optimizedBody416_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_36 optimizedBody416_44

def optimizedBody416_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_35 optimizedBody416_45

def optimizedBody416_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_31 optimizedBody416_46

def optimizedBody416_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_34 optimizedBody416_47

def optimizedBody416_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_31 optimizedBody416_48

def optimizedBody416_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_33 optimizedBody416_49

def optimizedBody416_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_31 optimizedBody416_50

def optimizedBody416_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_32 optimizedBody416_51

def optimizedBody416_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_31 optimizedBody416_52

def optimizedBody416_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_53

def optimizedBody416_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_54

def optimizedBody416_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_30 optimizedBody416_55

def optimizedBody416_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_4 optimizedBody416_56

def optimizedBody416_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_25 optimizedBody416_57

def optimizedBody416_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_58

def optimizedBody416_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_24 optimizedBody416_59

def optimizedBody416_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_19 optimizedBody416_60

def optimizedBody416_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_18 optimizedBody416_61

def optimizedBody416_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_17 optimizedBody416_62

def optimizedBody416_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_16 optimizedBody416_63

def optimizedBody416_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_15 optimizedBody416_64

def optimizedBody416_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_14 optimizedBody416_65

def optimizedBody416_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_13 optimizedBody416_66

def optimizedBody416_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_12 optimizedBody416_67

def optimizedBody416_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_68

def optimizedBody416_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_3 optimizedBody416_69

def optimizedBody416_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_11 optimizedBody416_70

def optimizedBody416_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_2 optimizedBody416_71

def optimizedBody416_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_1 optimizedBody416_72

def optimizedBody416_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody416_0 optimizedBody416_73

def oracle416 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)))
            4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))
            0 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))
def optimized416 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(416, 2, optimizedBody416_74)
theorem optimize416_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source416, oracle416) = optimized416 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize416_eq
end InitECandidate.Proofs.WordStages
