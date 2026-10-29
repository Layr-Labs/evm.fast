import InitECandidate.Proofs.WordStages.Optimize526
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source542
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody542_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody542_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody542_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody542_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody542_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody542_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody542_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_4 optimizedBody542_5

def optimizedBody542_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody542_3, 542, 2)) (some 470) ([2]) (some (2, optimizedBody542_6, 542, 3))

def optimizedBody542_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody542_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody542_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody542_9, 542, 4)) (some 540) ([]) (some (2, optimizedBody542_6, 542, 5))

def optimizedBody542_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody542_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44)]

def optimizedBody542_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody542_12, 542, 6)) (some 541) ([2]) (some (2, optimizedBody542_6, 542, 7))

def optimizedBody542_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody542_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody542_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody542_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody542_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody542_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody542_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody542_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody542_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody542_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody542_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody542_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_24 optimizedBody542_5

def optimizedBody542_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_23 optimizedBody542_25

def optimizedBody542_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_22 optimizedBody542_26

def optimizedBody542_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_21 optimizedBody542_27

def optimizedBody542_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_20 optimizedBody542_28

def optimizedBody542_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_29

def optimizedBody542_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody542_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody542_30 optimizedBody542_31

def optimizedBody542_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 0)]

def optimizedBody542_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody542_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody542_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody542_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody542_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody542_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody542_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody542_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody542_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody542_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody542_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody542_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody542_3, 542, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody542_6, 542, 9))

def optimizedBody542_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody542_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody542_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_47 optimizedBody542_5

def optimizedBody542_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody542_46, 542, 10)) (some 490) ([2]) (some (2, optimizedBody542_48, 542, 11))

def optimizedBody542_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody542_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody542_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_21 optimizedBody542_51

def optimizedBody542_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_50 optimizedBody542_52

def optimizedBody542_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_53

def optimizedBody542_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_49 optimizedBody542_54

def optimizedBody542_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_4 optimizedBody542_55

def optimizedBody542_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_20 optimizedBody542_56

def optimizedBody542_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_57

def optimizedBody542_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_45 optimizedBody542_58

def optimizedBody542_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_44 optimizedBody542_59

def optimizedBody542_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_43 optimizedBody542_60

def optimizedBody542_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_0 optimizedBody542_61

def optimizedBody542_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_42 optimizedBody542_62

def optimizedBody542_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_0 optimizedBody542_63

def optimizedBody542_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_41 optimizedBody542_64

def optimizedBody542_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_40 optimizedBody542_65

def optimizedBody542_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_39 optimizedBody542_66

def optimizedBody542_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_38 optimizedBody542_67

def optimizedBody542_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_37 optimizedBody542_68

def optimizedBody542_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_36 optimizedBody542_69

def optimizedBody542_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_0 optimizedBody542_70

def optimizedBody542_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_35 optimizedBody542_71

def optimizedBody542_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_34 optimizedBody542_72

def optimizedBody542_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_33 optimizedBody542_73

def optimizedBody542_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_74

def optimizedBody542_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_75

def optimizedBody542_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_32 optimizedBody542_76

def optimizedBody542_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_19 optimizedBody542_77

def optimizedBody542_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_18 optimizedBody542_78

def optimizedBody542_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_17 optimizedBody542_79

def optimizedBody542_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_16 optimizedBody542_80

def optimizedBody542_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_15 optimizedBody542_81

def optimizedBody542_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_14 optimizedBody542_82

def optimizedBody542_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_83

def optimizedBody542_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_13 optimizedBody542_84

def optimizedBody542_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_11 optimizedBody542_85

def optimizedBody542_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_86

def optimizedBody542_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_10 optimizedBody542_87

def optimizedBody542_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_3 optimizedBody542_88

def optimizedBody542_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_8 optimizedBody542_89

def optimizedBody542_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_7 optimizedBody542_90

def optimizedBody542_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_2 optimizedBody542_91

def optimizedBody542_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_1 optimizedBody542_92

def optimizedBody542_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody542_0 optimizedBody542_93

def oracle542 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.ls 22))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized542 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(542, 1, optimizedBody542_94)
theorem optimize542_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source542, oracle542) = optimized542 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize542_eq
end InitECandidate.Proofs.WordStages
