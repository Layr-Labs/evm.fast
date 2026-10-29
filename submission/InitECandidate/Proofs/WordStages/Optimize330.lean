import InitECandidate.Proofs.WordStages.Optimize314
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source330
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody330_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody330_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody330_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody330_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody330_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody330_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody330_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_2 optimizedBody330_5

def optimizedBody330_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_6

def optimizedBody330_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody330_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody330_7 optimizedBody330_8

def optimizedBody330_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (48, 4)]

def optimizedBody330_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (48, 48)]

def optimizedBody330_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody330_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody330_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_12 optimizedBody330_13

def optimizedBody330_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody330_11, 330, 2)) (some 325) ([2]) (some (2, optimizedBody330_14, 330, 3))

def optimizedBody330_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody330_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 4)]

def optimizedBody330_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody330_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody330_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_19 optimizedBody330_13

def optimizedBody330_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody330_18, 330, 4)) (some 68) ([2]) (some (2, optimizedBody330_20, 330, 5))

def optimizedBody330_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6)]

def optimizedBody330_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody330_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody330_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_24 optimizedBody330_13

def optimizedBody330_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody330_23, 330, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody330_25, 330, 7))

def optimizedBody330_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody330_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody330_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody330_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody330_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody330_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody330_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_31 optimizedBody330_32

def optimizedBody330_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_30 optimizedBody330_33

def optimizedBody330_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_29 optimizedBody330_34

def optimizedBody330_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_28 optimizedBody330_35

def optimizedBody330_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_27 optimizedBody330_36

def optimizedBody330_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_37

def optimizedBody330_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_26 optimizedBody330_38

def optimizedBody330_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_22 optimizedBody330_39

def optimizedBody330_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_40

def optimizedBody330_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_21 optimizedBody330_41

def optimizedBody330_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_17 optimizedBody330_42

def optimizedBody330_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_16 optimizedBody330_43

def optimizedBody330_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_44

def optimizedBody330_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_15 optimizedBody330_45

def optimizedBody330_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_10 optimizedBody330_46

def optimizedBody330_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_47

def optimizedBody330_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_4 optimizedBody330_48

def optimizedBody330_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_9 optimizedBody330_49

def optimizedBody330_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_3 optimizedBody330_50

def optimizedBody330_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_2 optimizedBody330_51

def optimizedBody330_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_1 optimizedBody330_52

def optimizedBody330_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody330_0 optimizedBody330_53

def oracle330 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22))) 2
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3 Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)))))
def optimized330 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(330, 2, optimizedBody330_54)
theorem optimize330_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source330, oracle330) = optimized330 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize330_eq
end InitECandidate.Proofs.WordStages
