import InitECandidate.Proofs.WordStages.Optimize322
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source338
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody338_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody338_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody338_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody338_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody338_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody338_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody338_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody338_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody338_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (0, 2), (8, 44)]

def optimizedBody338_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44)]

def optimizedBody338_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody338_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_9 optimizedBody338_10

def optimizedBody338_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody338_8, 338, 2)) (some 161) ([2, 4]) (some (2, optimizedBody338_11, 338, 3))

def optimizedBody338_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody338_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody338_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody338_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 15#64)

def optimizedBody338_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody338_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody338_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody338_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_19 optimizedBody338_10

def optimizedBody338_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_18 optimizedBody338_20

def optimizedBody338_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_17 optimizedBody338_21

def optimizedBody338_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_14 optimizedBody338_22

def optimizedBody338_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_16 optimizedBody338_23

def optimizedBody338_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_13 optimizedBody338_24

def optimizedBody338_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody338_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody338_25 optimizedBody338_26

def optimizedBody338_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody338_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody338_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_28 optimizedBody338_29

def optimizedBody338_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_13 optimizedBody338_30

def optimizedBody338_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_13 optimizedBody338_31

def optimizedBody338_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_27 optimizedBody338_32

def optimizedBody338_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_15 optimizedBody338_33

def optimizedBody338_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_14 optimizedBody338_34

def optimizedBody338_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_13 optimizedBody338_35

def optimizedBody338_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_12 optimizedBody338_36

def optimizedBody338_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_7 optimizedBody338_37

def optimizedBody338_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_6 optimizedBody338_38

def optimizedBody338_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_5 optimizedBody338_39

def optimizedBody338_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_4 optimizedBody338_40

def optimizedBody338_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_3 optimizedBody338_41

def optimizedBody338_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_2 optimizedBody338_42

def optimizedBody338_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_1 optimizedBody338_43

def optimizedBody338_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody338_0 optimizedBody338_44

def oracle338 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def optimized338 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(338, 3, optimizedBody338_45)
theorem optimize338_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source338, oracle338) = optimized338 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize338_eq
end InitECandidate.Proofs.WordStages
