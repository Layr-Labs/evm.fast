import InitECandidate.Proofs.WordStages.Optimize399
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source415
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody415_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody415_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (46, 46)]

def optimizedBody415_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46)]

def optimizedBody415_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody415_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_2 optimizedBody415_3

def optimizedBody415_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody415_1, 415, 2)) (some 407) ([2]) (some (2, optimizedBody415_4, 415, 3))

def optimizedBody415_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody415_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody415_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody415_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody415_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody415_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody415_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody415_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_11 optimizedBody415_12

def optimizedBody415_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_10 optimizedBody415_13

def optimizedBody415_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_14

def optimizedBody415_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody415_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody415_15 optimizedBody415_16

def optimizedBody415_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody415_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody415_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody415_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody415_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody415_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody415_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 8), (46, 46)]

def optimizedBody415_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody415_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody415_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_26 optimizedBody415_3

def optimizedBody415_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody415_25, 415, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody415_27, 415, 5))

def optimizedBody415_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody415_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_11 optimizedBody415_29

def optimizedBody415_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_10 optimizedBody415_30

def optimizedBody415_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_31

def optimizedBody415_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody415_32 optimizedBody415_16

def optimizedBody415_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6)]

def optimizedBody415_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody415_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody415_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_36 optimizedBody415_3

def optimizedBody415_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody415_35, 415, 6)) (some 414) ([2]) (some (2, optimizedBody415_37, 415, 7))

def optimizedBody415_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody415_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_11 optimizedBody415_39

def optimizedBody415_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_10 optimizedBody415_40

def optimizedBody415_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_41

def optimizedBody415_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody415_42 optimizedBody415_16

def optimizedBody415_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody415_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_44 optimizedBody415_40

def optimizedBody415_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_45

def optimizedBody415_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_46

def optimizedBody415_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_43 optimizedBody415_47

def optimizedBody415_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_10 optimizedBody415_48

def optimizedBody415_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_7 optimizedBody415_49

def optimizedBody415_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_50

def optimizedBody415_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_38 optimizedBody415_51

def optimizedBody415_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_34 optimizedBody415_52

def optimizedBody415_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_53

def optimizedBody415_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_54

def optimizedBody415_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_33 optimizedBody415_55

def optimizedBody415_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_10 optimizedBody415_56

def optimizedBody415_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_7 optimizedBody415_57

def optimizedBody415_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_58

def optimizedBody415_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_28 optimizedBody415_59

def optimizedBody415_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_24 optimizedBody415_60

def optimizedBody415_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_23 optimizedBody415_61

def optimizedBody415_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_22 optimizedBody415_62

def optimizedBody415_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_21 optimizedBody415_63

def optimizedBody415_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_20 optimizedBody415_64

def optimizedBody415_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_19 optimizedBody415_65

def optimizedBody415_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_18 optimizedBody415_66

def optimizedBody415_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_7 optimizedBody415_67

def optimizedBody415_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_68

def optimizedBody415_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_69

def optimizedBody415_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_17 optimizedBody415_70

def optimizedBody415_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_9 optimizedBody415_71

def optimizedBody415_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_8 optimizedBody415_72

def optimizedBody415_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_7 optimizedBody415_73

def optimizedBody415_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_6 optimizedBody415_74

def optimizedBody415_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_5 optimizedBody415_75

def optimizedBody415_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody415_0 optimizedBody415_76

def oracle415 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.ls 23))
          Flapjack.Spt.ln))))
def optimized415 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(415, 2, optimizedBody415_77)
theorem optimize415_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source415, oracle415) = optimized415 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize415_eq
end InitECandidate.Proofs.WordStages
