import InitECandidate.Proofs.WordStages.Optimize456
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source472
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody472_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody472_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody472_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody472_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody472_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody472_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 192#64))

def optimizedBody472_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 4)]

def optimizedBody472_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (12, 44), (0, 46), (4, 48)]

def optimizedBody472_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46), (4, 48)]

def optimizedBody472_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody472_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_8 optimizedBody472_9

def optimizedBody472_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody472_7, 472, 2)) (some 92) ([2, 4]) (some (2, optimizedBody472_10, 472, 3))

def optimizedBody472_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody472_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody472_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody472_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody472_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody472_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody472_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (10, 10)]

def optimizedBody472_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody472_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody472_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody472_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody472_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody472_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody472_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody472_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody472_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody472_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody472_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody472_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody472_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody472_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody472_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody472_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 72#64))

def optimizedBody472_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody472_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody472_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody472_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody472_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody472_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody472_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_39 optimizedBody472_40

def optimizedBody472_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_38 optimizedBody472_41

def optimizedBody472_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_37 optimizedBody472_42

def optimizedBody472_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_36 optimizedBody472_43

def optimizedBody472_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_35 optimizedBody472_44

def optimizedBody472_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_34 optimizedBody472_45

def optimizedBody472_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_33 optimizedBody472_46

def optimizedBody472_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_32 optimizedBody472_47

def optimizedBody472_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_31 optimizedBody472_48

def optimizedBody472_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_30 optimizedBody472_49

def optimizedBody472_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_29 optimizedBody472_50

def optimizedBody472_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_23 optimizedBody472_51

def optimizedBody472_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_28 optimizedBody472_52

def optimizedBody472_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_27 optimizedBody472_53

def optimizedBody472_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_26 optimizedBody472_54

def optimizedBody472_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_25 optimizedBody472_55

def optimizedBody472_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_24 optimizedBody472_56

def optimizedBody472_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_16 optimizedBody472_57

def optimizedBody472_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_23 optimizedBody472_58

def optimizedBody472_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_22 optimizedBody472_59

def optimizedBody472_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_21 optimizedBody472_60

def optimizedBody472_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_20 optimizedBody472_61

def optimizedBody472_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_19 optimizedBody472_62

def optimizedBody472_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_18 optimizedBody472_63

def optimizedBody472_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_17 optimizedBody472_64

def optimizedBody472_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_16 optimizedBody472_65

def optimizedBody472_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_15 optimizedBody472_66

def optimizedBody472_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_14 optimizedBody472_67

def optimizedBody472_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_13 optimizedBody472_68

def optimizedBody472_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_12 optimizedBody472_69

def optimizedBody472_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_11 optimizedBody472_70

def optimizedBody472_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_6 optimizedBody472_71

def optimizedBody472_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_5 optimizedBody472_72

def optimizedBody472_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_4 optimizedBody472_73

def optimizedBody472_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_3 optimizedBody472_74

def optimizedBody472_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_2 optimizedBody472_75

def optimizedBody472_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_1 optimizedBody472_76

def optimizedBody472_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody472_0 optimizedBody472_77

def oracle472 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
            2
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 Flapjack.Spt.ln))
            2
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized472 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(472, 2, optimizedBody472_78)
theorem optimize472_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source472, oracle472) = optimized472 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize472_eq
end InitECandidate.Proofs.WordStages
