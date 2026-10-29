import InitECandidate.Proofs.WordStages.Optimize525
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source541
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody541_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody541_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 90#64)

def optimizedBody541_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody541_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody541_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody541_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_3 optimizedBody541_4

def optimizedBody541_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody541_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_6 optimizedBody541_4

def optimizedBody541_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody541_5 optimizedBody541_7

def optimizedBody541_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody541_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 128#64)

def optimizedBody541_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody541_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody541_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_11 optimizedBody541_12

def optimizedBody541_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody541_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_14 optimizedBody541_12

def optimizedBody541_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody541_13 optimizedBody541_15

def optimizedBody541_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody541_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody541_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody541_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 145#64)))

def optimizedBody541_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody541_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody541_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_2 optimizedBody541_22

def optimizedBody541_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_21 optimizedBody541_23

def optimizedBody541_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_20 optimizedBody541_24

def optimizedBody541_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_2 optimizedBody541_25

def optimizedBody541_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_9 optimizedBody541_26

def optimizedBody541_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody541_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 4) optimizedBody541_27 optimizedBody541_28

def optimizedBody541_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody541_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody541_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody541_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody541_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody541_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody541_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_34 optimizedBody541_35

def optimizedBody541_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_33 optimizedBody541_36

def optimizedBody541_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_32 optimizedBody541_37

def optimizedBody541_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_31 optimizedBody541_38

def optimizedBody541_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_30 optimizedBody541_39

def optimizedBody541_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_9 optimizedBody541_40

def optimizedBody541_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_9 optimizedBody541_41

def optimizedBody541_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_29 optimizedBody541_42

def optimizedBody541_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_19 optimizedBody541_43

def optimizedBody541_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_18 optimizedBody541_44

def optimizedBody541_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_17 optimizedBody541_45

def optimizedBody541_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_9 optimizedBody541_46

def optimizedBody541_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_16 optimizedBody541_47

def optimizedBody541_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_10 optimizedBody541_48

def optimizedBody541_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_2 optimizedBody541_49

def optimizedBody541_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_9 optimizedBody541_50

def optimizedBody541_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_8 optimizedBody541_51

def optimizedBody541_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_2 optimizedBody541_52

def optimizedBody541_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_1 optimizedBody541_53

def optimizedBody541_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody541_0 optimizedBody541_54

def oracle541 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized541 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(541, 2, optimizedBody541_55)
theorem optimize541_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source541, oracle541) = optimized541 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize541_eq
end InitECandidate.Proofs.WordStages
