import InitECandidate.Proofs.WordStages.Optimize452
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source468
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody468_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def optimizedBody468_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody468_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody468_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody468_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody468_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody468_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_4 optimizedBody468_5

def optimizedBody468_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_3 optimizedBody468_6

def optimizedBody468_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_7

def optimizedBody468_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody468_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody468_8 optimizedBody468_9

def optimizedBody468_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody468_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody468_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 239#64)

def optimizedBody468_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody468_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody468_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_14 optimizedBody468_15

def optimizedBody468_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_16

def optimizedBody468_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_3 optimizedBody468_15

def optimizedBody468_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_18

def optimizedBody468_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody468_17 optimizedBody468_19

def optimizedBody468_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody468_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody468_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody468_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody468_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody468_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_24 optimizedBody468_25

def optimizedBody468_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_26

def optimizedBody468_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody468_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_28 optimizedBody468_25

def optimizedBody468_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_29

def optimizedBody468_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody468_27 optimizedBody468_30

def optimizedBody468_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody468_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody468_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody468_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody468_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_34 optimizedBody468_35

def optimizedBody468_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_36

def optimizedBody468_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody468_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_38 optimizedBody468_35

def optimizedBody468_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_39

def optimizedBody468_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody468_37 optimizedBody468_40

def optimizedBody468_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody468_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody468_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody468_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_14 optimizedBody468_6

def optimizedBody468_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody468_45 optimizedBody468_9

def optimizedBody468_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_46 optimizedBody468_8

def optimizedBody468_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_44 optimizedBody468_47

def optimizedBody468_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_4 optimizedBody468_48

def optimizedBody468_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_43 optimizedBody468_49

def optimizedBody468_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_42 optimizedBody468_50

def optimizedBody468_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_51

def optimizedBody468_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_41 optimizedBody468_52

def optimizedBody468_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_33 optimizedBody468_53

def optimizedBody468_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_23 optimizedBody468_54

def optimizedBody468_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_22 optimizedBody468_55

def optimizedBody468_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_32 optimizedBody468_56

def optimizedBody468_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_11 optimizedBody468_57

def optimizedBody468_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_58

def optimizedBody468_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_31 optimizedBody468_59

def optimizedBody468_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_24 optimizedBody468_60

def optimizedBody468_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_23 optimizedBody468_61

def optimizedBody468_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_22 optimizedBody468_62

def optimizedBody468_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_21 optimizedBody468_63

def optimizedBody468_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_11 optimizedBody468_64

def optimizedBody468_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_65

def optimizedBody468_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_20 optimizedBody468_66

def optimizedBody468_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_13 optimizedBody468_67

def optimizedBody468_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_4 optimizedBody468_68

def optimizedBody468_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_12 optimizedBody468_69

def optimizedBody468_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_11 optimizedBody468_70

def optimizedBody468_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_71

def optimizedBody468_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_2 optimizedBody468_72

def optimizedBody468_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_10 optimizedBody468_73

def optimizedBody468_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_1 optimizedBody468_74

def optimizedBody468_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody468_0 optimizedBody468_75

def oracle468 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 3)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln))
def optimized468 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(468, 3, optimizedBody468_76)
theorem optimize468_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source468, oracle468) = optimized468 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize468_eq
end InitECandidate.Proofs.WordStages
