import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source68
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody68_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody68_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody68_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody68_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody68_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551608#64))

def optimizedBody68_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2952790016#64)

def optimizedBody68_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody68_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody68_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2)]

def optimizedBody68_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody68_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody68_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 4)]

def optimizedBody68_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody68_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody68_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody68_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_13 optimizedBody68_14

def optimizedBody68_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody68_12, 68, 2)) (some 66) ([2]) (some (2, optimizedBody68_15, 68, 3))

def optimizedBody68_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4)]

def optimizedBody68_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_17

def optimizedBody68_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_16 optimizedBody68_18

def optimizedBody68_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_11 optimizedBody68_19

def optimizedBody68_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_10 optimizedBody68_20

def optimizedBody68_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_21

def optimizedBody68_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4)]

def optimizedBody68_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_23

def optimizedBody68_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody68_22 optimizedBody68_24

def optimizedBody68_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody68_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody68_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody68_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 0 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody68_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2952790016#64)

def optimizedBody68_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody68_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody68_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody68_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody68_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_34 optimizedBody68_14

def optimizedBody68_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody68_33, 68, 4)) (some 66) ([2]) (some (2, optimizedBody68_35, 68, 5))

def optimizedBody68_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody68_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_37

def optimizedBody68_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_36 optimizedBody68_38

def optimizedBody68_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_32 optimizedBody68_39

def optimizedBody68_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_10 optimizedBody68_40

def optimizedBody68_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_41

def optimizedBody68_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6), (4, 4)]

def optimizedBody68_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_43

def optimizedBody68_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody68_42 optimizedBody68_44

def optimizedBody68_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody68_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody68_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody68_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody68_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody68_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody68_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody68_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody68_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_52 optimizedBody68_53

def optimizedBody68_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_51 optimizedBody68_54

def optimizedBody68_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_50 optimizedBody68_55

def optimizedBody68_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_49 optimizedBody68_56

def optimizedBody68_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_48 optimizedBody68_57

def optimizedBody68_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_47 optimizedBody68_58

def optimizedBody68_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_46 optimizedBody68_59

def optimizedBody68_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_60

def optimizedBody68_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_45 optimizedBody68_61

def optimizedBody68_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_31 optimizedBody68_62

def optimizedBody68_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_30 optimizedBody68_63

def optimizedBody68_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_29 optimizedBody68_64

def optimizedBody68_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_28 optimizedBody68_65

def optimizedBody68_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_27 optimizedBody68_66

def optimizedBody68_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_26 optimizedBody68_67

def optimizedBody68_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_9 optimizedBody68_68

def optimizedBody68_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_25 optimizedBody68_69

def optimizedBody68_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_8 optimizedBody68_70

def optimizedBody68_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_7 optimizedBody68_71

def optimizedBody68_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_6 optimizedBody68_72

def optimizedBody68_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_5 optimizedBody68_73

def optimizedBody68_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_4 optimizedBody68_74

def optimizedBody68_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_3 optimizedBody68_75

def optimizedBody68_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_2 optimizedBody68_76

def optimizedBody68_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_1 optimizedBody68_77

def optimizedBody68_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody68_0 optimizedBody68_78

def oracle68 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            2
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)) 3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            0 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 3
              Flapjack.Spt.ln)
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized68 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(68, 2, optimizedBody68_79)
theorem optimize68_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source68, oracle68) = optimized68 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize68_eq
end InitECandidate.Proofs.WordStages
