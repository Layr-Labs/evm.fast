import InitECandidate.Proofs.WordStages.Optimize253
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source269
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody269_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody269_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody269_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody269_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody269_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody269_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody269_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody269_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody269_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 2), (10, 44), (0, 46)]

def optimizedBody269_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody269_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody269_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_9 optimizedBody269_10

def optimizedBody269_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody269_8, 269, 2)) (some 161) ([2, 4]) (some (2, optimizedBody269_11, 269, 3))

def optimizedBody269_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody269_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody269_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody269_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody269_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody269_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody269_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody269_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_19 optimizedBody269_10

def optimizedBody269_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_18 optimizedBody269_20

def optimizedBody269_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_17 optimizedBody269_21

def optimizedBody269_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_2 optimizedBody269_22

def optimizedBody269_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_16 optimizedBody269_23

def optimizedBody269_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_24

def optimizedBody269_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody269_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody269_25 optimizedBody269_26

def optimizedBody269_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody269_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody269_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody269_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody269_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_31 optimizedBody269_23

def optimizedBody269_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_32

def optimizedBody269_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody269_33 optimizedBody269_26

def optimizedBody269_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody269_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_35

def optimizedBody269_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_36

def optimizedBody269_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_34 optimizedBody269_37

def optimizedBody269_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_30 optimizedBody269_38

def optimizedBody269_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_2 optimizedBody269_39

def optimizedBody269_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_29 optimizedBody269_40

def optimizedBody269_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_5 optimizedBody269_41

def optimizedBody269_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_42

def optimizedBody269_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody269_43 optimizedBody269_36

def optimizedBody269_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody269_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody269_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody269_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody269_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_48 optimizedBody269_21

def optimizedBody269_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_45 optimizedBody269_49

def optimizedBody269_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_47 optimizedBody269_50

def optimizedBody269_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_51

def optimizedBody269_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody269_52 optimizedBody269_26

def optimizedBody269_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody269_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_54

def optimizedBody269_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_55

def optimizedBody269_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_53 optimizedBody269_56

def optimizedBody269_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_46 optimizedBody269_57

def optimizedBody269_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_58

def optimizedBody269_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody269_59 optimizedBody269_55

def optimizedBody269_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody269_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody269_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_61 optimizedBody269_62

def optimizedBody269_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_63

def optimizedBody269_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_60 optimizedBody269_64

def optimizedBody269_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_15 optimizedBody269_65

def optimizedBody269_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_45 optimizedBody269_66

def optimizedBody269_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_67

def optimizedBody269_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_44 optimizedBody269_68

def optimizedBody269_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_15 optimizedBody269_69

def optimizedBody269_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_28 optimizedBody269_70

def optimizedBody269_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_71

def optimizedBody269_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_72

def optimizedBody269_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_27 optimizedBody269_73

def optimizedBody269_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_15 optimizedBody269_74

def optimizedBody269_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_14 optimizedBody269_75

def optimizedBody269_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_13 optimizedBody269_76

def optimizedBody269_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_12 optimizedBody269_77

def optimizedBody269_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_7 optimizedBody269_78

def optimizedBody269_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_6 optimizedBody269_79

def optimizedBody269_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_5 optimizedBody269_80

def optimizedBody269_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_4 optimizedBody269_81

def optimizedBody269_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_3 optimizedBody269_82

def optimizedBody269_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_2 optimizedBody269_83

def optimizedBody269_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_1 optimizedBody269_84

def optimizedBody269_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody269_0 optimizedBody269_85

def oracle269 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized269 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(269, 4, optimizedBody269_86)
theorem optimize269_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source269, oracle269) = optimized269 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize269_eq
end InitECandidate.Proofs.WordStages
