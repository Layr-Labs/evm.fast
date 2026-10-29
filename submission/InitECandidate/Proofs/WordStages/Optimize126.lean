import InitECandidate.Proofs.WordStages.Optimize110
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source126
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody126_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody126_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody126_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (6, 2)]

def optimizedBody126_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody126_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody126_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody126_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody126_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody126_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody126_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody126_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody126_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody126_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody126_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_5 optimizedBody126_12

def optimizedBody126_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_13

def optimizedBody126_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody126_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 10) optimizedBody126_14 optimizedBody126_15

def optimizedBody126_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6)]

def optimizedBody126_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody126_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_17 optimizedBody126_18

def optimizedBody126_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_19

def optimizedBody126_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_20

def optimizedBody126_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_16 optimizedBody126_21

def optimizedBody126_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_11 optimizedBody126_22

def optimizedBody126_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_10 optimizedBody126_23

def optimizedBody126_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_9 optimizedBody126_24

def optimizedBody126_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_8 optimizedBody126_25

def optimizedBody126_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_7 optimizedBody126_26

def optimizedBody126_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_6 optimizedBody126_27

def optimizedBody126_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_5 optimizedBody126_28

def optimizedBody126_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_29

def optimizedBody126_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody126_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_31

def optimizedBody126_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody126_30 optimizedBody126_32

def optimizedBody126_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_17

def optimizedBody126_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_33 optimizedBody126_34

def optimizedBody126_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_4 optimizedBody126_35

def optimizedBody126_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_3 optimizedBody126_36

def optimizedBody126_38 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) optimizedBody126_37 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody126_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody126_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_39 optimizedBody126_13

def optimizedBody126_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_40

def optimizedBody126_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_38 optimizedBody126_41

def optimizedBody126_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_2 optimizedBody126_42

def optimizedBody126_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_1 optimizedBody126_43

def optimizedBody126_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody126_0 optimizedBody126_44

def oracle126 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized126 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(126, 3, optimizedBody126_45)
theorem optimize126_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source126, oracle126) = optimized126 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize126_eq
end InitECandidate.Proofs.WordStages
