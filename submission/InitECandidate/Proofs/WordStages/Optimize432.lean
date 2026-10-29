import InitECandidate.Proofs.WordStages.Optimize416
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source432
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody432_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody432_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody432_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody432_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody432_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 8), (0, 4), (46, 2), (6, 6)]

def optimizedBody432_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody432_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 46), (52, 6)]

def optimizedBody432_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (10, 50), (52, 52)]

def optimizedBody432_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (10, 50), (52, 52)]

def optimizedBody432_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody432_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_8 optimizedBody432_9

def optimizedBody432_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody432_7, 432, 2)) (some 197) ([2, 4]) (some (2, optimizedBody432_10, 432, 3))

def optimizedBody432_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody432_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody432_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 10), (52, 52)]

def optimizedBody432_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (4, 46), (0, 48), (10, 50), (6, 52)]

def optimizedBody432_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48), (10, 50), (6, 52)]

def optimizedBody432_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_16 optimizedBody432_9

def optimizedBody432_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody432_15, 432, 4)) (some 192) ([2, 4, 6]) (some (2, optimizedBody432_17, 432, 5))

def optimizedBody432_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 0), (10, 10), (6, 6)]

def optimizedBody432_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_19

def optimizedBody432_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_18 optimizedBody432_20

def optimizedBody432_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_14 optimizedBody432_21

def optimizedBody432_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_22

def optimizedBody432_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (4, 46), (0, 48), (10, 10), (6, 52)]

def optimizedBody432_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_24

def optimizedBody432_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody432_23 optimizedBody432_25

def optimizedBody432_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody432_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody432_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (4, 4), (0, 0), (46, 10), (6, 6)]

def optimizedBody432_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody432_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_29 optimizedBody432_30

def optimizedBody432_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_28 optimizedBody432_31

def optimizedBody432_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_27 optimizedBody432_32

def optimizedBody432_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_33

def optimizedBody432_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_26 optimizedBody432_34

def optimizedBody432_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_13 optimizedBody432_35

def optimizedBody432_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_12 optimizedBody432_36

def optimizedBody432_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_37

def optimizedBody432_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_11 optimizedBody432_38

def optimizedBody432_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_6 optimizedBody432_39

def optimizedBody432_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_40

def optimizedBody432_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody432_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_42

def optimizedBody432_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody432_41 optimizedBody432_43

def optimizedBody432_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (4, 4), (0, 0), (46, 8), (6, 6)]

def optimizedBody432_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_45

def optimizedBody432_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_44 optimizedBody432_46

def optimizedBody432_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_5 optimizedBody432_47

def optimizedBody432_49 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody432_48 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody432_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody432_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody432_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_50 optimizedBody432_51

def optimizedBody432_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_13 optimizedBody432_52

def optimizedBody432_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_53

def optimizedBody432_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_49 optimizedBody432_54

def optimizedBody432_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_4 optimizedBody432_55

def optimizedBody432_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_3 optimizedBody432_56

def optimizedBody432_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_2 optimizedBody432_57

def optimizedBody432_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_1 optimizedBody432_58

def optimizedBody432_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody432_0 optimizedBody432_59

def oracle432 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              23 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            1 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 26)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0)) 3
              (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized432 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(432, 3, optimizedBody432_60)
theorem optimize432_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source432, oracle432) = optimized432 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize432_eq
end InitECandidate.Proofs.WordStages
