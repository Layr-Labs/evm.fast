import InitECandidate.Proofs.WordStages.Optimize386
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source402
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody402_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody402_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody402_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody402_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody402_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody402_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody402_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 2)]

def optimizedBody402_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (6, 46)]

def optimizedBody402_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody402_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody402_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_8 optimizedBody402_9

def optimizedBody402_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody402_7, 402, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody402_10, 402, 3))

def optimizedBody402_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody402_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody402_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody402_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody402_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody402_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody402_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_16 optimizedBody402_17

def optimizedBody402_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_15 optimizedBody402_18

def optimizedBody402_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_14 optimizedBody402_19

def optimizedBody402_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_20

def optimizedBody402_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody402_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody402_21 optimizedBody402_22

def optimizedBody402_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody402_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody402_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody402_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551448#64))

def optimizedBody402_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody402_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 8)]

def optimizedBody402_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 44)]

def optimizedBody402_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody402_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_31 optimizedBody402_9

def optimizedBody402_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody402_30, 402, 4)) (some 294) ([2, 4]) (some (2, optimizedBody402_32, 402, 5))

def optimizedBody402_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody402_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody402_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody402_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody402_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_37 optimizedBody402_9

def optimizedBody402_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_36 optimizedBody402_38

def optimizedBody402_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_35 optimizedBody402_39

def optimizedBody402_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_13 optimizedBody402_40

def optimizedBody402_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_34 optimizedBody402_41

def optimizedBody402_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_42

def optimizedBody402_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody402_43 optimizedBody402_22

def optimizedBody402_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody402_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_45 optimizedBody402_17

def optimizedBody402_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_46

def optimizedBody402_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_47

def optimizedBody402_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_44 optimizedBody402_48

def optimizedBody402_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_14 optimizedBody402_49

def optimizedBody402_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_13 optimizedBody402_50

def optimizedBody402_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_51

def optimizedBody402_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_33 optimizedBody402_52

def optimizedBody402_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_29 optimizedBody402_53

def optimizedBody402_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_28 optimizedBody402_54

def optimizedBody402_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_27 optimizedBody402_55

def optimizedBody402_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_26 optimizedBody402_56

def optimizedBody402_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_25 optimizedBody402_57

def optimizedBody402_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_24 optimizedBody402_58

def optimizedBody402_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_59

def optimizedBody402_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_60

def optimizedBody402_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_23 optimizedBody402_61

def optimizedBody402_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_14 optimizedBody402_62

def optimizedBody402_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_13 optimizedBody402_63

def optimizedBody402_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_64

def optimizedBody402_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_11 optimizedBody402_65

def optimizedBody402_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_6 optimizedBody402_66

def optimizedBody402_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_5 optimizedBody402_67

def optimizedBody402_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_4 optimizedBody402_68

def optimizedBody402_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_3 optimizedBody402_69

def optimizedBody402_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_2 optimizedBody402_70

def optimizedBody402_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_1 optimizedBody402_71

def optimizedBody402_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_0 optimizedBody402_72

def oracle402 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
            1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2 (Flapjack.Spt.ls 4))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def optimized402 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(402, 2, optimizedBody402_73)
theorem optimize402_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source402, oracle402) = optimized402 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize402_eq
end InitECandidate.Proofs.WordStages
