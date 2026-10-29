import InitECandidate.Proofs.WordStages.Optimize589
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source605
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody605_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody605_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody605_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody605_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody605_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody605_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody605_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody605_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody605_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody605_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 152#64))

def optimizedBody605_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody605_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody605_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 2)]

def optimizedBody605_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody605_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody605_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody605_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_14 optimizedBody605_15

def optimizedBody605_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody605_13, 605, 2)) (some 593) ([]) (some (2, optimizedBody605_16, 605, 3))

def optimizedBody605_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody605_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody605_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody605_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody605_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46)]

def optimizedBody605_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody605_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_23 optimizedBody605_15

def optimizedBody605_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody605_22, 605, 4)) (some 473) ([2]) (some (2, optimizedBody605_24, 605, 5))

def optimizedBody605_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody605_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody605_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody605_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody605_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody605_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody605_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody605_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody605_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody605_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody605_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody605_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody605_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody605_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_37 optimizedBody605_38

def optimizedBody605_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_36 optimizedBody605_39

def optimizedBody605_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_35 optimizedBody605_40

def optimizedBody605_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_34 optimizedBody605_41

def optimizedBody605_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_33 optimizedBody605_42

def optimizedBody605_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_0 optimizedBody605_43

def optimizedBody605_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_32 optimizedBody605_44

def optimizedBody605_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_31 optimizedBody605_45

def optimizedBody605_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_30 optimizedBody605_46

def optimizedBody605_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_21 optimizedBody605_47

def optimizedBody605_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_0 optimizedBody605_48

def optimizedBody605_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_29 optimizedBody605_49

def optimizedBody605_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_8 optimizedBody605_50

def optimizedBody605_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_28 optimizedBody605_51

def optimizedBody605_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_27 optimizedBody605_52

def optimizedBody605_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_26 optimizedBody605_53

def optimizedBody605_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_21 optimizedBody605_54

def optimizedBody605_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_20 optimizedBody605_55

def optimizedBody605_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_19 optimizedBody605_56

def optimizedBody605_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_18 optimizedBody605_57

def optimizedBody605_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_58

def optimizedBody605_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_25 optimizedBody605_59

def optimizedBody605_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_14 optimizedBody605_60

def optimizedBody605_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_21 optimizedBody605_61

def optimizedBody605_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_20 optimizedBody605_62

def optimizedBody605_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_19 optimizedBody605_63

def optimizedBody605_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_18 optimizedBody605_64

def optimizedBody605_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_65

def optimizedBody605_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_17 optimizedBody605_66

def optimizedBody605_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_12 optimizedBody605_67

def optimizedBody605_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_68

def optimizedBody605_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody605_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_70

def optimizedBody605_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody605_69 optimizedBody605_71

def optimizedBody605_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody605_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody605_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody605_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_75 optimizedBody605_15

def optimizedBody605_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody605_74, 605, 6)) (some 594) ([]) (some (2, optimizedBody605_76, 605, 7))

def optimizedBody605_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody605_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_6 optimizedBody605_78

def optimizedBody605_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_35 optimizedBody605_79

def optimizedBody605_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_80

def optimizedBody605_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_77 optimizedBody605_81

def optimizedBody605_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_73 optimizedBody605_82

def optimizedBody605_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_11 optimizedBody605_83

def optimizedBody605_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_72 optimizedBody605_84

def optimizedBody605_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_10 optimizedBody605_85

def optimizedBody605_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_9 optimizedBody605_86

def optimizedBody605_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_8 optimizedBody605_87

def optimizedBody605_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_7 optimizedBody605_88

def optimizedBody605_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_6 optimizedBody605_89

def optimizedBody605_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_5 optimizedBody605_90

def optimizedBody605_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_4 optimizedBody605_91

def optimizedBody605_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_3 optimizedBody605_92

def optimizedBody605_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_2 optimizedBody605_93

def optimizedBody605_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_1 optimizedBody605_94

def optimizedBody605_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody605_0 optimizedBody605_95

def oracle605 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 3)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.ls 23)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
def optimized605 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(605, 1, optimizedBody605_96)
theorem optimize605_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source605, oracle605) = optimized605 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize605_eq
end InitECandidate.Proofs.WordStages
