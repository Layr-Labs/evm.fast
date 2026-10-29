import InitECandidate.Proofs.WordStages.Optimize499
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source515
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody515_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody515_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody515_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody515_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody515_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_2 optimizedBody515_3

def optimizedBody515_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_1, 515, 2)) (some 475) ([]) (some (2, optimizedBody515_4, 515, 3))

def optimizedBody515_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody515_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (50, 6), (56, 8), (60, 4)]

def optimizedBody515_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody515_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody515_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_9 optimizedBody515_3

def optimizedBody515_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_8, 515, 4)) (some 475) ([]) (some (2, optimizedBody515_10, 515, 5))

def optimizedBody515_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody515_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 6), (56, 56), (58, 4), (60, 60)]

def optimizedBody515_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody515_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody515_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_15 optimizedBody515_3

def optimizedBody515_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_14, 515, 6)) (some 470) ([2]) (some (2, optimizedBody515_16, 515, 7))

def optimizedBody515_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody515_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody515_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody515_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody515_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody515_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody515_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody515_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody515_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody515_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody515_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_27, 515, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody515_4, 515, 9))

def optimizedBody515_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody515_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody515_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody515_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_31 optimizedBody515_3

def optimizedBody515_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody515_30, 515, 10)) (some 490) ([2]) (some (2, optimizedBody515_32, 515, 11))

def optimizedBody515_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody515_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody515_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody515_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_35 optimizedBody515_36

def optimizedBody515_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_34 optimizedBody515_37

def optimizedBody515_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_38

def optimizedBody515_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_33 optimizedBody515_39

def optimizedBody515_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_2 optimizedBody515_40

def optimizedBody515_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_29 optimizedBody515_41

def optimizedBody515_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_42

def optimizedBody515_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_28 optimizedBody515_43

def optimizedBody515_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_26 optimizedBody515_44

def optimizedBody515_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_25 optimizedBody515_45

def optimizedBody515_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_24 optimizedBody515_46

def optimizedBody515_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_23 optimizedBody515_47

def optimizedBody515_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_22 optimizedBody515_48

def optimizedBody515_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_21 optimizedBody515_49

def optimizedBody515_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_20 optimizedBody515_50

def optimizedBody515_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_19 optimizedBody515_51

def optimizedBody515_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_18 optimizedBody515_52

def optimizedBody515_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_53

def optimizedBody515_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_17 optimizedBody515_54

def optimizedBody515_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_13 optimizedBody515_55

def optimizedBody515_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_12 optimizedBody515_56

def optimizedBody515_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_57

def optimizedBody515_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_11 optimizedBody515_58

def optimizedBody515_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_7 optimizedBody515_59

def optimizedBody515_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_6 optimizedBody515_60

def optimizedBody515_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_5 optimizedBody515_61

def optimizedBody515_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody515_0 optimizedBody515_62

def oracle515 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 4 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28 Flapjack.Spt.ln)
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))))
def optimized515 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(515, 1, optimizedBody515_63)
theorem optimize515_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source515, oracle515) = optimized515 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize515_eq
end InitECandidate.Proofs.WordStages
