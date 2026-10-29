import InitECandidate.Proofs.WordStages.Optimize254
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source270
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody270_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody270_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody270_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4), (48, 2)]

def optimizedBody270_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody270_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48)]

def optimizedBody270_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody270_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_4 optimizedBody270_5

def optimizedBody270_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody270_3, 270, 2)) (some 269) ([2, 4, 6]) (some (2, optimizedBody270_6, 270, 3))

def optimizedBody270_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody270_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody270_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody270_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody270_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody270_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody270_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody270_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody270_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_15 optimizedBody270_5

def optimizedBody270_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_14 optimizedBody270_16

def optimizedBody270_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_13 optimizedBody270_17

def optimizedBody270_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_12 optimizedBody270_18

def optimizedBody270_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_11 optimizedBody270_19

def optimizedBody270_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_20

def optimizedBody270_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody270_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody270_21 optimizedBody270_22

def optimizedBody270_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody270_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody270_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2), (4, 4), (12, 12), (0, 0), (10, 10), (6, 6)]

def optimizedBody270_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody270_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody270_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody270_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody270_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody270_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody270_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody270_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody270_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody270_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (0, 0), (6, 6)]

def optimizedBody270_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody270_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_36 optimizedBody270_37

def optimizedBody270_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_35 optimizedBody270_38

def optimizedBody270_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_34 optimizedBody270_39

def optimizedBody270_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_33 optimizedBody270_40

def optimizedBody270_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_32 optimizedBody270_41

def optimizedBody270_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_31 optimizedBody270_42

def optimizedBody270_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_30 optimizedBody270_43

def optimizedBody270_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_29 optimizedBody270_44

def optimizedBody270_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_28 optimizedBody270_45

def optimizedBody270_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_46

def optimizedBody270_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody270_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_48

def optimizedBody270_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody270_47 optimizedBody270_49

def optimizedBody270_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_36

def optimizedBody270_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_50 optimizedBody270_51

def optimizedBody270_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_27 optimizedBody270_52

def optimizedBody270_54 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody270_53 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
  Flapjack.Spt.ln)

def optimizedBody270_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody270_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody270_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_55 optimizedBody270_56

def optimizedBody270_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_57

def optimizedBody270_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_54 optimizedBody270_58

def optimizedBody270_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_26 optimizedBody270_59

def optimizedBody270_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_60

def optimizedBody270_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_25 optimizedBody270_61

def optimizedBody270_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_24 optimizedBody270_62

def optimizedBody270_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_63

def optimizedBody270_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_64

def optimizedBody270_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_23 optimizedBody270_65

def optimizedBody270_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_10 optimizedBody270_66

def optimizedBody270_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_9 optimizedBody270_67

def optimizedBody270_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_8 optimizedBody270_68

def optimizedBody270_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_7 optimizedBody270_69

def optimizedBody270_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_2 optimizedBody270_70

def optimizedBody270_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_1 optimizedBody270_71

def optimizedBody270_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody270_0 optimizedBody270_72

def oracle270 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 7)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            0 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 6)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized270 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(270, 3, optimizedBody270_73)
theorem optimize270_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source270, oracle270) = optimized270 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize270_eq
end InitECandidate.Proofs.WordStages
