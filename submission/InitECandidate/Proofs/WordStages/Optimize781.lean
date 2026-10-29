import InitECandidate.Proofs.WordStages.Optimize765
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source781
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody781_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody781_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody781_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody781_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody781_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody781_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody781_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_4 optimizedBody781_5

def optimizedBody781_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody781_3, 781, 2)) (some 729) ([2, 4]) (some (2, optimizedBody781_6, 781, 3))

def optimizedBody781_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody781_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody781_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody781_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody781_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody781_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody781_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody781_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_14 optimizedBody781_5

def optimizedBody781_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody781_13, 781, 4)) (some 729) ([2, 4]) (some (2, optimizedBody781_15, 781, 5))

def optimizedBody781_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0)]

def optimizedBody781_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_17

def optimizedBody781_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_16 optimizedBody781_18

def optimizedBody781_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_12 optimizedBody781_19

def optimizedBody781_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_11 optimizedBody781_20

def optimizedBody781_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_10 optimizedBody781_21

def optimizedBody781_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_9 optimizedBody781_22

def optimizedBody781_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_8 optimizedBody781_23

def optimizedBody781_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_24

def optimizedBody781_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_7 optimizedBody781_25

def optimizedBody781_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_2 optimizedBody781_26

def optimizedBody781_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_27

def optimizedBody781_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (0, 2)]

def optimizedBody781_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_29

def optimizedBody781_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody781_28 optimizedBody781_30

def optimizedBody781_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody781_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody781_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody781_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody781_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody781_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody781_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_37 optimizedBody781_5

def optimizedBody781_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody781_36, 781, 6)) (some 736) ([2, 4]) (some (2, optimizedBody781_38, 781, 7))

def optimizedBody781_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody781_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody781_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody781_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_41 optimizedBody781_42

def optimizedBody781_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_40 optimizedBody781_43

def optimizedBody781_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_44

def optimizedBody781_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_39 optimizedBody781_45

def optimizedBody781_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_35 optimizedBody781_46

def optimizedBody781_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_34 optimizedBody781_47

def optimizedBody781_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_33 optimizedBody781_48

def optimizedBody781_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_32 optimizedBody781_49

def optimizedBody781_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_10 optimizedBody781_50

def optimizedBody781_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_1 optimizedBody781_51

def optimizedBody781_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_31 optimizedBody781_52

def optimizedBody781_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody781_0 optimizedBody781_53

def oracle781 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized781 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(781, 3, optimizedBody781_54)
theorem optimize781_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source781, oracle781) = optimized781 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize781_eq
end InitECandidate.Proofs.WordStages
