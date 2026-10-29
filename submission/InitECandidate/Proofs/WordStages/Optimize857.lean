import InitECandidate.Proofs.WordStages.Optimize841
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source857
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody857_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 10), (14, 8), (12, 6), (10, 4), (2, 2), (0, 0)]

def optimizedBody857_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody857_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody857_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody857_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody857_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (16, 16), (14, 14), (12, 12), (10, 10), (6, 6), (8, 8), (18, 44)]

def optimizedBody857_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44)]

def optimizedBody857_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody857_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_6 optimizedBody857_7

def optimizedBody857_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14, 16]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody857_5, 857, 2)) (some 121) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody857_8, 857, 3))

def optimizedBody857_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody857_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody857_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody857_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody857_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody857_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody857_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody857_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody857_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody857_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody857_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody857_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_19 optimizedBody857_20

def optimizedBody857_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_10 optimizedBody857_21

def optimizedBody857_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_10 optimizedBody857_20

def optimizedBody857_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 12) optimizedBody857_22 optimizedBody857_23

def optimizedBody857_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 4), (8, 6), (10, 8)]

def optimizedBody857_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8, 10]

def optimizedBody857_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_25 optimizedBody857_26

def optimizedBody857_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_10 optimizedBody857_27

def optimizedBody857_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_24 optimizedBody857_28

def optimizedBody857_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_18 optimizedBody857_29

def optimizedBody857_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_17 optimizedBody857_30

def optimizedBody857_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_16 optimizedBody857_31

def optimizedBody857_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_15 optimizedBody857_32

def optimizedBody857_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_14 optimizedBody857_33

def optimizedBody857_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_13 optimizedBody857_34

def optimizedBody857_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_12 optimizedBody857_35

def optimizedBody857_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_11 optimizedBody857_36

def optimizedBody857_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_10 optimizedBody857_37

def optimizedBody857_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_9 optimizedBody857_38

def optimizedBody857_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_4 optimizedBody857_39

def optimizedBody857_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_3 optimizedBody857_40

def optimizedBody857_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_2 optimizedBody857_41

def optimizedBody857_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_1 optimizedBody857_42

def optimizedBody857_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody857_0 optimizedBody857_43

def oracle857 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 8))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 8 (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized857 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(857, 6, optimizedBody857_44)
theorem optimize857_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source857, oracle857) = optimized857 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize857_eq
end InitECandidate.Proofs.WordStages
